<?php
/**
 * Controlador Autenticador
 * 
 */

//require_once('AutenticadorController.php');

class Basico_AutenticadorControllerController
{
	/**
	 * Retorna o link para a pagina de autenticacao de usuario
	 * 
	 * @param String $urlRedirect
	 * 
	 * @return String
	 */
	public static function retornaLinkAutenticacaoUsuario(Zend_View $view, $urlRedirect = null)
	{
		// retornando o link para a tela de autenticacao do usuario
		 return $view->urlEncrypt($view->url(array('module'=>'basico', 'controller'=>'autenticador', 'action'=>'autenticarusuario', 'urlRedirect' => Basico_UtilControllerController::codificaBarrasUrl($urlRedirect)), null, true));
	}
}