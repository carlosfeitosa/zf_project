<?php

/**
 * Plugin para manipulacao de controle de acesso nos controladores de acao
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 *
 */

class Basico_Controller_Plugin_ActionControllerAccessControlHandler extends Zend_Controller_Plugin_Abstract
{
	/**
	 * Atributo para ativacao do plugin
	 * 
	 * @var Boolean
	 */
	protected $_pluginAtivo = true;

	/**
	 * Metodo de pre-despacho
	 * 
	 * (non-PHPdoc)
	 * @see Zend_Controller_Plugin_Abstract::preDispatch()
	 */
	public function preDispatch(Zend_Controller_Request_Abstract $request)
	{
		// verificando se o request deve ser processado
		if ((!Basico_OPController_DBUtilOPController::checaBancoLevantado()) or (!$this->verificaSeProcessaRequest($request))) {
			return;
		}

		// verificando o acesso
		self::verificaAcessoRequest($request);
	}

	/**
	 * Verifica o acesso ao request
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return void
	 */
	public static function verificaAcessoRequest(Zend_Controller_Request_Abstract $request)
	{
		// verificando se nao trata-se de um request solicitando desautenticao do usuario
		if (Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaAcaoDesautenticarUsuarioAutenticadorControllerPorRequest($request)) {
			return;
		}

		// instanciando controladores
		$controleAcessoOPController = Basico_OPController_ControleAcessoOPController::getInstance();

		// verificando se o IP do usuario encontra-se na blacklist de hosts (hosts_denny.ini)
		if (!$controleAcessoOPController::verificaPermissaoIP(Basico_OPController_UtilOPController::retornaUserIp())) {
			// modificando o request para uma acao que mostrara uma mensagem avisando que o metodo esta desativado
			$request->setModuleName('basico');
			$request->setControllerName('controleacesso');
			$request->setActionName('hostbanido');

			// parando a execucao do plugin
			return;
		}

		// verificando se a acao da aplicacao esta ativa
		if (!$controleAcessoOPController->verificaRequestAtivoPorRequest($request)) {
			// modificando o request para uma acao que mostrara uma mensagem avisando que o metodo esta desativado
			$request->setModuleName('basico');
			$request->setControllerName('controleacesso');
			$request->setActionName('acaoaplicacaodesativada');

			// parando a execucao do plugin
			return;
		}

		// verificando se a acao da aplicacao esta associada a um perfil publico
		if (!$controleAcessoOPController->verificaRequestPublicoPorRequest($request)) {
			// verificando se existe usuario logado
			if (!Basico_OPController_PessoaLoginOPController::existeUsuarioLogado()) {
				// recuperando informacoes do request
				$moduleRequest     = $request->getModuleName();
				$controllerRequest = $request->getControllerName();
				$actionRequest     = $request->getActionName();
				$paramsRequest     = $request->getParams();
				$sessaoExpirada    = (Basico_OPController_PessoaLoginOPController::retornaLoginUsuarioSessao() !== null);

				// verificando se a sessao expirou, para redirecionar o usuario para index da aplicacao no caso de sucesso
				if ($sessaoExpirada) {
					// removendo registro do usuario logado na sessao
					Basico_OPController_PessoaLoginOPController::getInstance()->limpaLoginUsuarioSessaoAuth();

					// montando a url para redirecionar o usuario para o index da aplicacao
					$requestUrlRedirect = Basico_OPController_UtilOPController::retornaBaseUrl();
				} else {
					// montando a url atual para caso o login seja efetuado com sucesso
					$requestUrlRedirect = Zend_Controller_Action_HelperBroker::getStaticHelper('url')->url($paramsRequest, null, true);
				}

				// configurando variaveis para request de autenticacao
				$moduleAutenticador     = 'basico';
				$controllerAutenticador = 'autenticador';
				$actionAutenticador     = 'autenticarusuario';
				
				// verificando se o request atual nao eh uma solicitacao de autenticacao para evitar loop infinito
				if (($moduleRequest === $moduleAutenticador) and ($controllerRequest === $controllerAutenticador) and ($actionRequest === $actionAutenticador))
					return;

				// modificando o request
				$request->setParam('urlRedirect', $requestUrlRedirect);
				$request->setParam('sessaoExpirada', $sessaoExpirada);
				$request->setModuleName($moduleAutenticador);
				$request->setControllerName($controllerAutenticador);
				$request->setActionName($actionAutenticador);
			} else {
				if (!$controleAcessoOPController->verificaIpUsuarioIpUsuarioAutenticadoSessao()) { // verificando se o ip do usuario eh o mesmo ip registrado no momento do logon
					// modificando o request para uma acao que mostrara uma mensagem avisando que ip do usuario eh diferente do ip registrado na sessao no momento do logon
					$request->setModuleName('basico');
					$request->setControllerName('controleacesso');
					$request->setActionName('ipusuariodiferentedoipdousuarioautenticadonasessao');
			
					// recurperando login do usuario a sessao 
					$loginUsuarioSessao = Basico_OPController_PessoaLoginOPController::retornaLoginUsuarioSessao(); 
					
					// carregando tradução da mensagem e problema com ip do login diferente do ip atual 
					$mensagemProblemaLogin = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('MENSAGEM_ALERTA_PROBLEMAS_LOGIN_IP_DIFERENETE_IP_ATUAL');
					
					// recuperando ip atual do usuario 
					$ipAtualUsuario = Basico_OPController_UtilOPController::retornaUserIp();
					
					// recuperando ip da autenticaca(login) do usuario
					$ipLoginUsuario = Basico_OPController_SessionOPController::retornaIpUsuarioAutenticadoSessaoUsuario();
					
					// substituindo TGAS no corpo a mensagem  
					$mensagemProblemaLogin = str_replace("@IPAtual",$ipAtualUsuario , $mensagemProblemaLogin);
					$mensagemProblemaLogin = str_replace("@IPLogon",$ipLoginUsuario , $mensagemProblemaLogin);
					$mensagemProblemaLogin = str_replace("@linkDocumentacaoOnline",LINK_DOCUMENTACAO_ONLINE , $mensagemProblemaLogin);
					$mensagemProblemaLogin = str_replace("@emailSuporte",SUPPORT_EMAIL , $mensagemProblemaLogin);

					// enviando mensagem de alerta de problemas com login
					Basico_OPController_PessoaLoginOPController::getInstance()->enviaMensagemAlertaProblemasLogin($loginUsuarioSessao, $mensagemProblemaLogin); 

					// parando a execucao do plugin
					return;
				} else if (!Basico_OPController_PessoaLoginOPController::retornaLoginPodeLogarViaSQL(Basico_OPController_PessoaLoginOPController::retornaLoginUsuarioSessao())) { // verificando se o usuario pode estar logado 
					// recurperando login do usuario a sessao 
					$loginUsuarioSessao = Basico_OPController_PessoaLoginOPController::retornaLoginUsuarioSessao(); 

					// modificando o request para uma acao que mostrara uma mensagem avisando que o metodo esta desativado
					$request->setModuleName('basico');
					$request->setControllerName('autenticador');
					$request->setActionName('problemaslogin');
					$request->setParam('login', $loginUsuarioSessao);

					// removendo autenticacao do usuario
					Basico_OPController_PessoaLoginOPController::getInstance()->removeRegistroIdLoginUsuarioSessao();

					// enviando mensagem de alerta de problemas com login
					Basico_OPController_PessoaLoginOPController::getInstance()->enviaMensagemAlertaProblemasLogin($loginUsuarioSessao); 
										
		            // parando a execucao do plugin
					return;
				} else if ((!self::verificaRequestTrocaDeSenhaExpirada($request)) and (Basico_OPController_PessoaLoginOPController::retornaLoginSenhaExpiradaViaSQL(Basico_OPController_PessoaLoginOPController::retornaLoginUsuarioSessao()))) { // verificando se a senha do usuario esta expirada
					// montando a url atual para caso a troca de senha seja efetuado com sucesso
					$requestUrlRedirect = Zend_Controller_Action_HelperBroker::getStaticHelper('url')->url($request->getParams(), null, true);
					// removendo base url da url de redirect
					$requestUrlRedirect = Basico_OPController_UtilOPController::removeBaseUrl($requestUrlRedirect);
					// codificando barras
					$requestUrlRedirect = Basico_OPController_UtilOPController::codificaBarrasUrl($requestUrlRedirect);

					// modificando o request para a acao de troca de senha expirada
					$request->setModuleName('basico');
					$request->setControllerName('dadosusuario');
					$request->setActionName('trocarsenhaexpirada');
					// setando redirecionamento
					$request->setParam('urlRedirect', $requestUrlRedirect);

				} else if (!$controleAcessoOPController->verificaPermissaoAcessoRequestPerfilPorRequest($request)) { // verificando se o usuario possui perfil para acessar a acao
					// modificando o request para uma acao que mostrara uma mensagem avisando que o metodo esta desativado
					$request->setModuleName('basico');
					$request->setControllerName('controleacesso');
					$request->setActionName('acaoaplicacaonaopermitida');
		
					// parando a execucao do plugin
					return;
				} else if (!$controleAcessoOPController->verificaMetodoValidacaoAcaoPorRequestIdPerfilUsuarioLogado($request)) { // verificando se o metodo de validacao da associacao do perfil com a acao eh valida
					// modificando o request para uma acao que mostrara uma mensagem avisando que o metodo esta desativado
					$request->setModuleName('basico');
					$request->setControllerName('controleacesso');
					$request->setActionName('metodovalidacaoacaofalhou');
		
					// parando a execucao do plugin
					return;
				}
			}
		}

		// verificando se trata-se da acao de registro de novo usuario, validacao de usuario nao validado ou metodo administrativo
		if ((Basico_OPController_PessoaLoginOPController::existeUsuarioLogado()) and ((self::verificaRequestRegistroNovoUsuario($request)) or (self::verificaRequestRegistroValidacaoUsuario($request)) or (self::verificaRequestAcoesAdministrativas($request)) or ((self::verificaRequestProblemasLogin($request)) and (Basico_OPController_PessoaLoginOPController::retornaLoginPodeLogarViaSQL(Basico_OPController_PessoaLoginOPController::retornaLoginUsuarioSessao()))))) {
			// modificando o request para o index da aplicacao
			$request->setModuleName('default');
			$request->setControllerName('index');
			$request->setActionName('index');
		}
	}

	/**
	 * Verifica se o plugin deve processar o request
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private function verificaSeProcessaRequest(Zend_Controller_Request_Abstract $request)
	{
		// retornando se o request deve ser processado
		return (($this->_pluginAtivo) and 
				(Basico_OPController_ControleAcessoOPController::getInstance()->verificaRequestCadastrado($request, true)) and
				(!Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaAcaoErrorErrorControllerPorRequest($request)) and
				(!Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaAcaoDesautenticarUsuarioAutenticadorControllerPorRequest($request)) and 
				(Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaExisteAcaoControladorPorRequest($request)));
	}

	/**
	 * Verifica se o request esta relacionado ao registro de um novo usuario
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private static function verificaRequestRegistroNovoUsuario(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo basico, controlador login, acao cadastrarUsuarioNaoValidado ou verificaNovoLogin
		return ((($request->getModuleName() === 'basico') and ($request->getControllerName() === 'login') and ($request->getActionName() === 'cadastrarUsuarioNaoValidado')) or 
			    (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'login') and ($request->getActionName() === 'verificaNovoLogin')) or
			    (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'login') and ($request->getActionName() === 'erroemailvalidadoexistentenosistema')));
	}

	/**
	 * Verifica se o request esta relacionado a validacao de usuario
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private static function verificaRequestRegistroValidacaoUsuario(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo basico, controlador email, acoes de registro de usuario
		return ((($request->getModuleName() === 'basico') and ($request->getControllerName() === 'email') and ($request->getActionName() === 'validarEmail')) or 
			    (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'email') and ($request->getActionName() === 'sucessosalvarusuariovalidado')));
	}

	/**
	 * Verifica se o request esta relacionado a problemas no logon
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private static function verificaRequestProblemasLogin(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo basico, controlador token, acao decode
		return (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'autenticador') and ($request->getActionName() === 'problemaslogin'));
	}

	/**
	 * Verifica se o request esta relacionado a troca de senha expirada
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private static function verificaRequestTrocaDeSenhaExpirada(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo basico, controlador token, acao decode
		return (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'dadosusuario') and ($request->getActionName() === 'trocarsenhaexpirada'));
	}

	/**
	 * Verifica se o request esta relacionado a acoes administrativas
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	private static function verificaRequestAcoesAdministrativas(Zend_Controller_Request_Abstract $request)
	{
		// retornando o resultado da verificacao se o request esta relacionado ao modulo basico, controlador token, acao decode
		return (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'administrador') and ($request->getActionName() === 'sucessoresetadb'));
	}
}