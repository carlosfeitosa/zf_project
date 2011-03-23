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
		if (Basico_OPController_LoginOPController::existeUsuarioLogado()) {
			// efetuando logoff
			Basico_OPController_LoginOPController::getInstance()->efetuaLogoff();

			// redireciona para a pagina inicial do sistema
			$this->_redirect();
		}
	}

	/**
	 * Abre o dialog DOJO para autenticacao de usuario
	 * 
	 * @param Zend_Controller_Request_Http $userRequest
	 * 
	 * @return null
	 */
	public function autenticarusuarioAction(Zend_Controller_Request_Http $userRequest = null)
	{
		// verificando se o request foi passado por parametro
		if (isset($userRequest)) {

		}
		else
			// recuperando a url para redirecionando
			$urlRedirect = Basico_OPController_UtilOPController::decodificaBarrasUrl(Basico_OPController_UtilOPController::retornaUserRequest()->getParam('urlRedirect'));

    	// carregando cabecalho da view
		$this->view->cabecalho = array('tituloView' => $this->view->tradutor('VIEW_AUTENTICAR_USUARIO_AGUARDANDO_AUTENTICACAO_TITULO'));

    	// enviando o script para o cliente
    	echo Basico_OPController_AutenticadorOPController::retornaHTMLJavaScriptExibirDialogUrlAutenticacaoUsuario(Basico_OPController_PessoaOPController::retornaLinguaUsuario(), $this->view->tradutor('VIEW_LOGIN_AUTENTICACAO_USUARIO_TITULO'), $urlRedirect);

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
		if (!$form->isValid($this->getRequest()->getPost()))
			$this->_helper->Renderizar->renderizar();

		// recuperando login
		$login = $form->getValue(AUTH_IDENTITY_ARRAY_KEY);

		// recuperando objeto pessoa perfil usuario validado do login
		$objPessoaPerfilUsuarioValidadoLogin = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa(Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorLogin($login));

		// verificando se o login existe e possui perfil de usuario validado
		if ($objPessoaPerfilUsuarioValidadoLogin->id) {
			// inserindo log de tentativa de logon
			Basico_OPController_LogOPController::getInstance()->salvarLog($objPessoaPerfilUsuarioValidadoLogin->id, Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogTentativaAutenticacaoUsuario(), LOG_MSG_TENTATIVA_AUTENTICACAO_USUARIO);			
		}
		else {
			Basico_OPController_LogOPController::getInstance()->salvarLog(Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema(), Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogTentativaAutenticacaoUsuario(), LOG_MSG_TENTATIVA_AUTENTICACAO_USUARIO_LOGIN_NAO_EXISTENTE . Basico_OPController_UtilOPController::retornaStringEntreCaracter($login, '"'));
		}

		// verificando se as credenciais de acesso funcionaram
		if (Basico_OPController_AutenticadorOPController::getInstance()->retornaAutenticacaoUsuarioPorArrayParametros($form->getValues())) {

			// verificando se o login pode realizar login
			if (!Basico_OPController_LoginOPController::getInstance()->retornaLoginPodeLogar($login)) {
				// redirecionando para a pagina de problemas com login
				$this->_redirect(str_replace(Basico_OPController_UtilOPController::retornaBaseUrl(), '', $this->_helper->url('problemaslogin', 'autenticador', 'basico', array('login' => $login))));
			}

			// efetuando o logon
			Basico_OPController_LoginOPController::getInstance()->efetuaLogon($login);
		}
		else {
			// incrementando tentativas invalidas
			Basico_OPController_LoginOPController::getInstance()->checaTentativaInvalidaLogon($login);

			// montando array de parametros
			$arrayParametrosUrl = array();
			$arrayParametrosUrl['login'] = $login;
			$arrayParametrosUrl['urlRedirect'] = Basico_OPController_UtilOPController::codificaBarrasUrl(Basico_OPController_AutenticadorOPController::retornaUrlRedirectUserRequest($this->getRequest()));

			// redirecionando para a pagina de login
			$this->_redirect(str_replace(Basico_OPController_UtilOPController::retornaBaseUrl(), '', $this->_helper->url('credenciaisinvalidas', 'autenticador', 'basico', $arrayParametrosUrl)));
		}

		// recuperando urlRedirect
		$urlRedirect = Basico_OPController_AutenticadorOPController::retornaUrlRedirectUserRequest($this->getRequest());

		// verificando se existe uma pagina para redirect
		if ($urlRedirect) {
			// removendo o baseUrl do redirect
			$realUrlRedirect = str_replace(Basico_OPController_UtilOPController::retornaBaseUrl(), '', $urlRedirect);

			// redirecionando para a url de redirect
			$this->_redirect($realUrlRedirect);
		}

		// redirecionando para o base url
		$this->_redirect();
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

		// enviando scripts para o usuario
		echo Basico_OPController_AutenticadorOPController::retornaHTMLJavaScriptExibirDialogUrlAutenticacaoUsuario(Basico_OPController_PessoaOPController::retornaLinguaUsuario(), $this->view->tradutor('VIEW_LOGIN_AUTENTICACAO_USUARIO_TITULO'), $this->getRequest()->getParam('urlRedirect'), Basico_OPController_UtilOPController::codificaArrayJson($arrayParametros), Basico_OPController_UtilOPController::codificaArrayJson($arrayElementosError));

		// carregando cabecalho da view
		$this->view->cabecalho = array('tituloView' => $this->view->tradutor('VIEW_AUTENTICAR_USUARIO_AGUARDANDO_AUTENTICACAO_TITULO'));
		
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
		$errorMessage = Basico_OPController_LoginOPController::getInstance()->retornaMensagensErroLoginNaoPodeLigarHTMLLI($login);

		// recuperando o link para documentacao online
		$linkDocumentacaoOnLine = $this->_helper->url('problemasLogin', 'login', 'basico');
		$htmlLinkDocumentacaoOnline = "<a href='{$linkDocumentacaoOnLine}'>Clique aqui para ir para a documentacao online onde eh explicado como tentar resolver estes problemas</a>";

		// setando o cabecalho da view
		$this->view->cabecalho = array('tituloView'    => $this->view->tradutor('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_TITULO'), 
		                               'subtituloView' => $this->view->tradutor('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_SUBTITULO'),
									   'mensagemView'  => TAG_ABRE_LISTA_NAO_ORDENADA_ERROR . $errorMessage . TAG_FECHA_LISTA_NAO_ORDENADA . QUEBRA_DE_LINHA_HTML . QUEBRA_DE_LINHA_HTML . $htmlLinkDocumentacaoOnline);

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
	}
}