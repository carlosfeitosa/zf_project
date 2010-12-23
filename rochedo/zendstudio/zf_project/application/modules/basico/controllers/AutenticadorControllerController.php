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

	/**
	 * Retorna um html contendo uma chamada javascript para a funcao exibirDialogUrl
	 * 
	 * @param String $linguaUsuario
	 * @param String $tituloDialog
	 * @param String $urlRedirect
	 * 
	 * @return String
	 */
	public static function retornaHTMLJavaScriptExibirDialogUrlAutenticacaoUsuario($linguaUsuario, $tituloDialog, $urlRedirect)
	{
		// inicializando variaveis
		$baseUrl = Basico_UtilControllerController::retornaBaseUrl();

		// retornando o javascript que abre o dialog de login
		return "<script language='javascript'>exibirDialogUrl('Basico_Form_AutenticacaoUsuario', '/rochedo_project/public/public_forms/basico/forms/AutenticacaoUsuario.{$linguaUsuario}.html', '{$tituloDialog}', '{$urlRedirect}', '{$baseUrl}')</script>";
	}
}