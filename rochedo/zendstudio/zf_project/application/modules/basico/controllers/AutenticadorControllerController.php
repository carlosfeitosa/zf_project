<?php
/**
 * Controlador Autenticador
 * 
 */

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
	 * @param String $onLoadCallback
	 * 
	 * @return String
	 */
	public static function retornaHTMLJavaScriptExibirDialogUrlAutenticacaoUsuario($linguaUsuario, $tituloDialog, $urlRedirect, $onLoadValues = null, $errorElements = null)
	{
		// instanciando tradutor
		$tradutorController = Basico_TradutorControllerController::init();
		
		// inicializando variaveis
		$baseUrl = Basico_UtilControllerController::retornaBaseUrl();
		$onLoadValuesCallAndErrorMessage = '';

		// verificando se eh preciso enviar valores para o formulario
		if ($onLoadValues) {
			$mensagemErro = $tradutorController->retornaTraducao('DIALOG_DIV_CONTAINER_ERROR_MSG_AUTENTICAR_USUARIO_CREDENCIAIS_INVALIDAS');
			$tituloMensagemErro = $tradutorController->retornaTraducao('DIALOG_DIV_CONTAINER_ERROR_TITLE_AUTENTICAR_USUARIO_CREDENCIAIS_INVALIDAS');
			$onLoadValuesCallAndErrorMessage = ", {$onLoadValues}, '{$mensagemErro}', '{$tituloMensagemErro}', {$errorElements}";
		}

		// retornando o javascript que abre o dialog de login
		return "<script language='javascript'>exibirDialogUrl('Basico_Form_AutenticacaoUsuario', '/rochedo_project/public/public_forms/basico/forms/AutenticacaoUsuario.{$linguaUsuario}.html', '{$tituloDialog}', '{$urlRedirect}', '{$baseUrl}'{$onLoadValuesCallAndErrorMessage})</script>";
	}

	/**
	 * Retorna a url de redirect, resgatada atraves do request do usuario (formulario de autenticacao)
	 * 
	 * @param Zend_Controller_Request_Http $userRequest
	 * 
	 * @return String
	 */
	public static function retornaUrlRedirectUserRequest(Zend_Controller_Request_Http $userRequest)
	{
		// recuperando request
		$userRequestParams = $userRequest->getParams();
		
		// retornando urlRedirect
		return $userRequestParams['BasicoAutenticacaoUsuarioUrlRedirect'];
	}

	/**
	 * Retorna uma instancia do Zend_Auth_Adapter_DbTable configurada para uso na aplicacao
	 * 
	 * @param array $parametros
	 * 
	 * @return Zend_Auth_Adapter_DbTable
	 */
	public static function retornaAuthAdapter(array $parametros)
	{
		// instanciando adaptador de autenticacao com banco de dados
		$authAdapter = new Zend_Auth_Adapter_DbTable(Basico_PersistenceControllerController::bdRecuperaBDSessao());

		// setando parametros do autenticador para localizar as credenciais no banco de dados
		$authAdapter->setTableName(AUTH_TABLE)
					->setIdentityColumn(AUTH_IDENTITY_COLUMN)
					->setCredentialColumn(AUTH_CREDENTIAL_COLUMN);		

		// setando parametros do autenticador com as credenciais do usuario
		$authAdapter->setIdentity($parametros[AUTH_IDENTITY_ARRAY_KEY])
					->setCredential(Basico_UtilControllerController::retornaStringEncriptada($parametros[AUTH_CREDENTIAL_ARRAY_KEY]));

		// retornando o adaptador de autenticacao com banco de dados
		return $authAdapter;
	}

	/**
	 * Retorna o formulario de autenticacao
	 * 
	 * @return Basico_Form_AutenticacaoUsuario
	 */
	public static function retornaFormAutenticacaoUsuario()
	{
		// retornando o formulario de autenticacao
		return new Basico_Form_AutenticacaoUsuario();
	}

	/**
	 * Retorna se as credenciais de acesso existem no banco de dados
	 *
	 * @param Array $formValues
	 * 
	 * @return Boolean
	 */
	public static function retornaAutenticacaoUsuario(array $parametros)
	{
		// instanciando autenticador
		$auth = Zend_Auth::getInstance();

		// recuperando adaptador de autenticacoa
		$adaptadorAuth = self::retornaAuthAdapter($parametros);

		// realizando autenticacao
		$resultadoAuth  = $auth->authenticate($adaptadorAuth);
		
		// verificando o resultado da autenticacao
		if (!$resultadoAuth->isValid())
			return false;

		return true;
	} 
}