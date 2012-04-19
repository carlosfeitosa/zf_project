<?php
/**
 * Autenticador Controller
 *
 * Controla Autenticacao de usuario no sistema.
 * 
 * @subpackage Controller
 */

class Basico_AutenticadorController extends Zend_Controller_Action
{
	/**
	 * Desautentica o usuario logado 
	 */
	public function desautenticausuarioAction()
	{
		// verificando se existe usuario logado
		if (Basico_OPController_PessoaLoginOPController::existeUsuarioLogado()) {
			// recuperando o id do usuario logado na sessao
			$idLogin = Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao();

			// recuperando id da pessoa logada
			$idPessoaUsuarioLogado = Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorIdLogin($idLogin);

			// recuperando informacoes de log
			$idCategoriaLogLogoff   = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_SUCESSO_DESAUTENTICACAO_USUARIO, true);
			$mensagemLogLogoff      = LOG_MSG_SUCESSO_DESAUTENTICACAO_USUARIO;

			// recuperando objeto pessoa perfil usuario validado
			$objPessoaPerfilUsuarioValidado = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoaUsuarioLogado);

			// verificando se o objeto foi recuperado
			if (is_object($objPessoaPerfilUsuarioValidado)) {
				// recuperando o id
				$idPessoaPerfilUsuarioValidado = $objPessoaPerfilUsuarioValidado->id;
			} else {
				// recuperando o id do sistema para efetuar logoff, no caso do usuario ter sido apagado do banco de dados enquanto sessao ativa
				$idPessoaPerfilUsuarioValidado = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();
			}

			// salvando o log de operacoes
			Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfilUsuarioValidado, $idCategoriaLogLogoff, $mensagemLogLogoff);

			// efetuando logoff
			Basico_OPController_PessoaLoginOPController::getInstance()->efetuaLogoff();
		}

		// redireciona para a pagina inicial do sistema
		$this->_redirect('/');
	}

	/**
	 * Abre o dialog DOJO para autenticacao de usuario
	 * 
	 * @param Zend_Controller_Request_Http $userRequest
	 * 
	 * @return null
	 */
	public function autenticarusuarioAction()
	{
		// recuperando a url para redirecionando
		$urlRedirect = Basico_OPController_UtilOPController::decodificaBarrasUrl(Basico_OPController_UtilOPController::retornaUserRequest()->getParam('urlRedirect'));

    	// carregando título
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_AUTENTICAR_USUARIO_AGUARDANDO_AUTENTICACAO_TITULO'));

		// recuperando o formulario de autenticacao
		$idCategoriaFormularioAutenticacao = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(CATEGORIA_FORMULARIO_INPUT_LOGIN);
		$actionFormularioAutenticao        = Basico_OPController_FormularioOPController::getInstance()->retornaActionFormularioPorNomeFormularioIdCategoria(FORM_AUTENTICACAO_USUARIO, $idCategoriaFormularioAutenticacao);

		// tokenizando o action
		$actionFormularioAutenticao = $this->view->urlEncrypt($actionFormularioAutenticao);

    	// carregando os script
    	$scripts[] = Basico_OPController_AutenticadorOPController::retornaHTMLJavaScriptExibirDialogUrlAutenticacaoUsuario(Basico_OPController_PessoaOPController::retornaLinguaUsuario(), $this->view->tradutor('VIEW_LOGIN_AUTENTICACAO_USUARIO_TITULO'), $urlRedirect, $actionFormularioAutenticao);

    	// enviado conteúdo para a view
		$this->view->content = $content;
		
		// enviado script para a view
		$this->view->scripts = $scripts;
    	
    	// renderizando
    	$this->_helper->Renderizar->renderizar();
	}

	/**
	 * Verifica as credenciais de acesso de um usuario
	 *
	 * @return null
	 */
	public function verificaautenticacaousuarioAction()
	{
		// verificando se os dados foram submetidos atraves de post
		Basico_OPController_UtilOPController::validaPostRequest($this->getRequest(), 'basico/autenticador/autenticarusuario');

		// instanciando o formulario
		$form = Basico_OPController_AutenticadorOPController::retornaFormAutenticacaoUsuario();

		// validando o formulario
		if (!$form->isValid($this->getRequest()->getPost())) {
			// redirecionando o usuario para revalidacao
			return $this->_forward('autenticarusuario', 'autenticador', 'basico');
		}

		// recupernado nome do elemento do formulario que contem o login
		$nomeElementoInputLogin = AUTH_IDENTITY_ARRAY_KEY;
		// convertendo o login para minusculo
		$form->$nomeElementoInputLogin->setValue(strtolower($form->getValue(AUTH_IDENTITY_ARRAY_KEY)));
		// recuperando o login
		$login = $form->getValue(AUTH_IDENTITY_ARRAY_KEY);

		// recuperando objeto pessoa perfil usuario validado do login
		$objPessoaPerfilUsuarioValidadoLogin = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa(Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorLogin($login));

		// verificando se o login existe e possui perfil de usuario validado
		if ((is_object($objPessoaPerfilUsuarioValidadoLogin)) and ($objPessoaPerfilUsuarioValidadoLogin->id)) {
			// inserindo log de tentativa de logon
			Basico_OPController_LogOPController::salvarLogViaSQL($objPessoaPerfilUsuarioValidadoLogin->id, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_TENTATIVA_AUTENTICACAO_USUARIO, true), LOG_MSG_TENTATIVA_AUTENTICACAO_USUARIO);			
		} else {
			// inserindo log de perfil de usuario validado nao encontrado para o usuario
			Basico_OPController_LogOPController::salvarLogViaSQL(Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL(), Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_TENTATIVA_AUTENTICACAO_USUARIO, true), LOG_MSG_TENTATIVA_AUTENTICACAO_USUARIO_LOGIN_NAO_EXISTENTE . Basico_OPController_UtilOPController::retornaStringEntreCaracter($login, '"'));
		}

		// verificando se as credenciais de acesso funcionaram
		if (Basico_OPController_AutenticadorOPController::getInstance()->retornaAutenticacaoUsuarioPorArrayParametros($form->getValues())) {
			// verificando se o login pode realizar logon
			if (!Basico_OPController_PessoaLoginOPController::getInstance()->retornaLoginPodeLogar($login)) {
				// enviando mensagem de alerta de problemas com login
				Basico_OPController_PessoaLoginOPController::getInstance()->enviaMensagemAlertaProblemasLogin($login); 
				
				// redirecionando para a pagina de problemas com login
				$this->_redirect(str_replace(Basico_OPController_UtilOPController::retornaBaseUrl(), '', $this->view->urlEncrypt($this->_helper->url('problemaslogin', 'autenticador', 'basico', array('login' => $login)))));
			}

			// verificando se o sistema deve manter o usuario logado
			if ($form->getValue(AUTH_KEEP_LOGGED_KEY)) {
				// recuperando informacoes de log
				$idCategoriaLogManterUsuarioLogado = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_MANTER_USUARIO_LOGADO, true);
				$mensagemLogManterUsuarioLogado    = LOG_MSG_MANTER_USUARIO_LOGADO;

				// salvando log
				Basico_OPController_LogOPController::salvarLogViaSQL($objPessoaPerfilUsuarioValidadoLogin->id, $idCategoriaLogManterUsuarioLogado, $mensagemLogManterUsuarioLogado);

				// mantendo a sessao persistente atraves de cookie
				Zend_Session::rememberMe();
			} else {
				// setando o tempo de expiracao da sessao
				$session = new Zend_Session_Namespace('user_session');
				$session->setExpirationSeconds(TEMPO_EXPIRACAO_SESSAO_SEGUNDOS);
			}

			// efetuando o logon
			Basico_OPController_PessoaLoginOPController::getInstance()->efetuaLogon($login);

			// verificando se a senha do usuario esta expirada
			if (Basico_OPController_PessoaLoginOPController::retornaLoginSenhaExpiradaViaSQL(Basico_OPController_PessoaLoginOPController::retornaLoginUsuarioSessao()))
			{
				// montando url para redirecionamento
				$urlTrocaDeSenhaExpirada = $this->view->urlEncryptModuleControllerAction('basico', 'dadosusuario', 'trocarsenhaexpirada', null, true);
				
				// limpando o $_SERVER['REQUEST_METHOD'], para não existir o metodo post no forward. Isto impede que o formulário seja validado quando forward.  
				unset($_SERVER['REQUEST_METHOD']);
				
				//encaminhado para a ação de troca de senha
				return $this->_forward('trocarsenhaexpirada', 'dadosusuario', 'basico', null);
			}
		} else {
			// incrementando tentativas invalidas
			Basico_OPController_PessoaLoginOPController::getInstance()->checaTentativaInvalidaLogon($login);

			// montando array de parametros
			$arrayParametrosUrl                = array();
			$arrayParametrosUrl['login']       = $login;
			$arrayParametrosUrl['urlRedirect'] = Basico_OPController_UtilOPController::codificaBarrasUrl(Basico_OPController_AutenticadorOPController::retornaUrlRedirectUserRequest($this->getRequest()));

			// redirecionando para a pagina de login
			$this->_redirect(str_replace(Basico_OPController_UtilOPController::retornaBaseUrl(), '', $this->_helper->url('credenciaisinvalidas', 'autenticador', 'basico', $arrayParametrosUrl)));
		}

		// recuperando urlRedirect
		$urlRedirect = Basico_OPController_AutenticadorOPController::retornaUrlRedirectUserRequest($this->getRequest());

		// verificando se existe uma pagina para redirect
		if ($urlRedirect) {
			// removendo o baseUrl do redirect
			$realUrlRedirect = Basico_OPController_UtilOPController::decodificaBarrasUrl(str_replace(Basico_OPController_UtilOPController::retornaBaseUrl(), '', $urlRedirect));

			// redirecionando para a url de redirect
			$this->_redirect($realUrlRedirect);
		}

		// redirecionando para o base url
		$this->_redirect(Basico_OPController_UtilOPController::retornaBaseUrl());
	}

	/**
	 * Renderiza mensagem de credenciais invalidas e executa os metodos de tentativas erradas
	 * 
	 * @return null
	 */
	public function credenciaisinvalidasAction()
	{
		// inicializando array de parametros
		$arrayParametros = array();
		$arrayParametros[AUTH_IDENTITY_ARRAY_KEY] = $this->getRequest()->getParam('login');

		// inicializando array de elementos com erro
		$arrayElementosError[] = AUTH_IDENTITY_ARRAY_KEY;
		$arrayElementosError[] = AUTH_CREDENTIAL_ARRAY_KEY;

		// recuperando o formulario de autenticacao
		$idCategoriaFormularioAutenticacao = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(CATEGORIA_FORMULARIO_INPUT_LOGIN);
		$actionFormularioAutenticao        = Basico_OPController_FormularioOPController::getInstance()->retornaActionFormularioPorNomeFormularioIdCategoria(FORM_AUTENTICACAO_USUARIO, $idCategoriaFormularioAutenticacao);

		// tokenizando o action
		$actionFormularioAutenticao = $this->view->urlEncrypt($actionFormularioAutenticao);		

		// carregando título na view
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_AUTENTICAR_USUARIO_AGUARDANDO_AUTENTICACAO_TITULO'));
		
		// carregando scripts 
		$scripts[] = Basico_OPController_AutenticadorOPController::retornaHTMLJavaScriptExibirDialogUrlAutenticacaoUsuario(Basico_OPController_PessoaOPController::retornaLinguaUsuario(), $this->view->tradutor('VIEW_LOGIN_AUTENTICACAO_USUARIO_TITULO'), $this->getRequest()->getParam('urlRedirect'), $actionFormularioAutenticao, Basico_OPController_UtilOPController::codificaArrayJson($arrayParametros), Basico_OPController_UtilOPController::codificaArrayJson($arrayElementosError));
		
		// enviado o conteúdo para a view
		$this->view->content = $content;
		
		// enviado os scripts para a view
		$this->view->scripts = $scripts;

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
	}

	/**
	 * Renderiza mensagens de problemas com o login
	 * @return null
	 */
	public function problemasloginAction()
	{
		// recuperando o login
		$login = $this->getRequest()->getParam('login');

		// montando a mensagem de erro
		$errorMessage = Basico_OPController_PessoaLoginOPController::getInstance()->retornaMensagensErroLoginNaoPodeLogarHTMLLI($login);

		// recuperando o link para documentacao online
		$linkDocumentacaoOnLine     = $this->_helper->url('problemasLogin', 'login', 'basico');
		$htmlLinkDocumentacaoOnline = "<a href='{$linkDocumentacaoOnLine}'>Clique aqui para ir para a documentacao online onde eh explicado como tentar resolver estes problemas</a>";

		// carregando as mensagens
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_TITULO'));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_SUBTITULO'));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem(TAG_ABRE_LISTA_NAO_ORDENADA_ERROR . $errorMessage . TAG_FECHA_LISTA_NAO_ORDENADA . QUEBRA_DE_LINHA_HTML . QUEBRA_DE_LINHA_HTML . $htmlLinkDocumentacaoOnline);

		// enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
	}

	/**
	 * Retorna o formulario de autenticacao do usuario
	 * 
	 * @return Zend_Form
	 */
	private function retornaFormularioAutenticacao()
	{
		// retornando o formulario de autenticacao de usuario
		return new Basico_Form_AutenticacaoUsuario();
	}

	/**
	 * Retorna a chamada para o dialog de autenticacao de usuario
	 * 
	 * @return void
	 */
	public function dialogautenticacaoAction()
	{
		// recuperando formulario de autenticacao do usuario
		$formAutenticacao = $this->retornaFormularioAutenticacao();

		// setando o conteudo da resposta
		$this->view->content = array($formAutenticacao);

		// renderizando a resposta
		$this->_helper->Renderizar->renderizar('default.html.phtml', true);
	}
}