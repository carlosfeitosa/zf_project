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
	
	public function preDispatch(Zend_Controller_Request_Abstract $request)
	{
		// verificando se o request deve ser processado
		if (!$this->verificaSeProcessaRequest($request))
			return;

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
		if (Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaAcaoDesautenticarUsuarioAutenticadorControllerPorRequest($request))
			return;

		// instanciando controladores
		$controleAcessoOPController = Basico_OPController_ControleAcessoOPController::getInstance();

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
			if (!Basico_OPController_LoginOPController::existeUsuarioLogado()) {
				// recuperando informacoes do request
				$moduleRequest     = $request->getModuleName();
				$controllerRequest = $request->getControllerName();
				$actionRequest     = $request->getActionName();
				$paramsRequest     = $request->getParams();
				$sessaoExpirada    = (Basico_OPController_LoginOPController::retornaLoginUsuarioSessao() !== null);

				// verificando se a sessao expirou, para redirecionar o usuario para index da aplicacao no caso de sucesso
				if ($sessaoExpirada) {
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
				// verificando se o usuario logado possui o perfil para a requisicao solicitada
				if (!$controleAcessoOPController->verificaPermissaoAcessoRequestPerfilPorRequest($request)) {
					// modificando o request para uma acao que mostrara uma mensagem avisando que o metodo esta desativado
					$request->setModuleName('basico');
					$request->setControllerName('controleacesso');
					$request->setActionName('acaoaplicacaonaopermitida');
		
					// parando a execucao do plugin
					return;
				} else if (!$controleAcessoOPController->verificaMetodoValidacaoAcaoPorRequestIdPerfilUsuarioLogado($request)) {
					// modificando o request para uma acao que mostrara uma mensagem avisando que o metodo esta desativado
					$request->setModuleName('basico');
					$request->setControllerName('controleacesso');
					$request->setActionName('metodovalidacaoacaofalhou');
		
					// parando a execucao do plugin
					return;
				}
			}
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
				(Basico_OPController_AcaoAplicacaoOPController::getInstance()->verificaExisteAcaoControladorPorRequest($request)));
	}
}