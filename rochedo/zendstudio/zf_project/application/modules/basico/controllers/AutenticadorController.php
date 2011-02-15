<?php
/**
 * Autenticador Controller
 *
 * Controla Autenticacao de usuario no sistema.
 * 
 * @subpackage Controller
 */

require_once("LoginControllerController.php");

class Basico_AutenticadorController extends Zend_Controller_Action
{
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
			$urlRedirect = Basico_UtilControllerController::decodificaBarrasUrl(Basico_UtilControllerController::retornaUserRequest()->getParam('urlRedirect'));

    	// carregando cabecalho da view
		$this->view->cabecalho = array('tituloView' => $this->view->tradutor('VIEW_AUTENTICAR_USUARIO_AGUARDANDO_AUTENTICACAO_TITULO'));

    	// enviando o script para o cliente
    	echo Basico_AutenticadorControllerController::retornaHTMLJavaScriptExibirDialogUrlAutenticacaoUsuario(Basico_PessoaControllerController::retornaLinguaUsuario(), $this->view->tradutor('VIEW_LOGIN_AUTENTICACAO_USUARIO_TITULO'), $urlRedirect);

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
		Basico_UtilControllerController::validaPostRequest($this->getRequest(), 'basico/autenticador/autenticarusuario');
			
		// instanciando o formulario
		$form = Basico_AutenticadorControllerController::retornaFormAutenticacaoUsuario();

		// validando o formulario
		if (!$form->isValid($this->getRequest()->getPost()))
			$this->_helper->Renderizar->renderizar();

		// recuperando login
		$login = $form->getValue(AUTH_IDENTITY_ARRAY_KEY);

		// recuperando objeto pessoa perfil usuario validado do login
		$objPessoaPerfilUsuarioValidadoLogin = Basico_PessoaPerfilControllerController::retornaPessoaPerfilUsuarioValidadoPessoa(Basico_LoginControllerController::retornaIdPessoaLogin($login));

		// verificando se o login possui perfil de usuario validado
		if ($objPessoaPerfilUsuarioValidadoLogin->id) {
			// inserindo log de tentativa de logon
			Basico_LogControllerController::salvarLog($objPessoaPerfilUsuarioValidadoLogin->id, Basico_CategoriaControllerController::retornaIdCategoriaLogTentativaAutenticacaoUsuario(), LOG_MSG_TENTATIVA_AUTENTICACAO_USUARIO);			
		}

		// verificando se as crendeiciais de acesso funcionaram
		if (Basico_AutenticadorControllerController::retornaAutenticacaoUsuario($form->getValues())) {

			// verificando se o login pode realizar login
			if (!Basico_LoginControllerController::retornaLoginPodeLogar($login)) {
				// redirecionando para a pagina de problemas com login
				$this->_redirect(str_replace(Basico_UtilControllerController::retornaBaseUrl(), '', $this->_helper->url('problemaslogin', 'autenticador', 'basico', array('login' => $login))));
			}
			
			Basico_UtilControllerController::print_debug('login OK', true, false, true);

			// efetuando o logon
			Basico_LoginControllerController::efetuaLogon($login);
		}
		else {
			// incrementando tentativas invalidas
			Basico_LoginControllerController::checaTentativaInvalidaLogon($login);

			// montando array de parametros
			$arrayParametrosUrl = array();
			$arrayParametrosUrl['login'] = $login;
			$arrayParametrosUrl['urlRedirect'] = Basico_UtilControllerController::codificaBarrasUrl(Basico_AutenticadorControllerController::retornaUrlRedirectUserRequest($this->getRequest()));

			// redirecionando para a pagina de login
			$this->_redirect(str_replace(Basico_UtilControllerController::retornaBaseUrl(), '', $this->_helper->url('credenciaisinvalidas', 'autenticador', 'basico', $arrayParametrosUrl)));
		}

		// recuperando urlRedirect
		$urlRedirect = Basico_AutenticadorControllerController::retornaUrlRedirectUserRequest($this->getRequest());

		// verificando se existe uma pagina para redirect
		if ($urlRedirect) {
			// removendo o baseUrl do redirect
			$realUrlRedirect = str_replace(Basico_UtilControllerController::retornaBaseUrl(), '', $urlRedirect);

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
		echo Basico_AutenticadorControllerController::retornaHTMLJavaScriptExibirDialogUrlAutenticacaoUsuario(Basico_PessoaControllerController::retornaLinguaUsuario(), $this->view->tradutor('VIEW_LOGIN_AUTENTICACAO_USUARIO_TITULO'), $this->getRequest()->getParam('urlRedirect'), Basico_UtilControllerController::codificaArrayJson($arrayParametros), Basico_UtilControllerController::codificaArrayJson($arrayElementosError));

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
		$errorMessage = Basico_LoginControllerController::retornaMensagensErroLoginNaoPodeLigarHTMLLI($login);

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