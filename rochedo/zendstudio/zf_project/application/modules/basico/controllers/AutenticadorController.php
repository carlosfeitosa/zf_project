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

		// inicializando variaveis
		$linguaUsuario = Basico_PessoaControllerController::retornaLinguaUsuario();
    	// montando script para abrir a caixa de dialogo de login
    	$scriptCaixaDialogoLogin = "exibirDialogUrl('Basico_Form_AutenticacaoUsuario', '/rochedo_project/public/public_forms/basico/forms/AutenticacaoUsuario.{$linguaUsuario}.html', '{$this->view->tradutor('VIEW_LOGIN_AUTENTICACAO_USUARIO_TITULO')}', '{$urlRedirect}')";

    	// carregando cabecalho da view
		$this->view->cabecalho = array('tituloView' => 'Aguardando autenticação do usuário...');

    	// enviando o script para o cliente
    	echo "<script language='javascript'>{$scriptCaixaDialogoLogin}</script>";

    	// renderizando
    	$this->_helper->Renderizar->renderizar();
	}
	
	public function verificaautenticacaousuarioAction()
	{
		// recuperando request
		$userRequestParams = $this->getRequest()->getParams();
		// recuperando urlRedirect
		$urlRedirect = $userRequestParams['BasicoAutenticacaoUsuarioUrlRedirect'];

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