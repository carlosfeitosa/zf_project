<?php
/**
 * Autenticador Controller
 *
 * Controla Autenticacao de usuario no sistema.
 * 
 * @subpackage Controller
 */

// include dos controladores
require_once("AutenticadorControllerController.php");

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
		$this->view->cabecalho = array('tituloView' => $this->view->tradutor('VIEW_AUTENTICAR_USUARIO_AGUARDANDO_AUTENTICACAO'));

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
		
		//Basico_UtilControllerController::print_debug('teste', true, false, true);
		
		// instanciando o formulario
		$form = Basico_AutenticadorControllerController::retornaFormAutenticacaoUsuario();

		

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
}