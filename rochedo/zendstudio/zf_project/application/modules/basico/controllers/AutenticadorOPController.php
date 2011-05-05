<?php
/**
 * Controlador Autenticador
 * 
 * Controlador responsavel pela autenticacao do usuario
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_AutenticadorOPController
{
	/**
	 * @var Basico_Controller_AutenticadorController
	 */
	private static $_singleton;

	/**
	 * @var Zend_Auth_Adapter_DbTable
	 */
	private $_authAdapter;

	/**
	 * @var Zend_Auth
	 */
	private $_auth;

	/**
	 * Construtor do controller
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o adaptador de autenticacao
		$this->_authAdapter = self::retornaAuthAdapterVinculadoComBD();

		// instanciando o controlador de autenticacao
		$this->_auth = Zend_Auth::getInstance();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_Controller_AutenticadorController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_Controller_AutenticadorController
	 * 
	 * @return Basico_Controller_AutenticadorController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL) {
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_AutenticadorOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna o objeto Zend_Auth_Adapter_DbTable vinculado com o banco de dados
	 * 
	 * @return Zend_Auth_Adapter_DbTable
	 */
	private function retornaAuthAdapterVinculadoComBD()
	{
		// instanciando adaptador de autenticacao com banco de dados
		$authAdapter = new Zend_Auth_Adapter_DbTable(Basico_OPController_PersistenceOPController::bdRecuperaBDSessao());

		// setando parametros do autenticador para localizar as credenciais no banco de dados
		$authAdapter->setTableName(AUTH_TABLE)
					->setIdentityColumn(AUTH_IDENTITY_COLUMN)
					->setCredentialColumn(AUTH_CREDENTIAL_COLUMN);

		// retornando o adaptador de autenticacao
		return $authAdapter;
	}

	/**
	 * Retorna uma instancia do Zend_Auth_Adapter_DbTable configurada para uso na aplicacao
	 * 
	 * @param array $parametros
	 * 
	 * @return Zend_Auth_Adapter_DbTable
	 */
	private function retornaAuthAdapterAutenticacaoUsuarioPorArrayParametros(array $parametros)
	{
		// setando parametros do autenticador com as credenciais do usuario
		$this->_authAdapter->setIdentity($parametros[AUTH_IDENTITY_ARRAY_KEY])
						   ->setCredential(Basico_OPController_UtilOPController::retornaStringEncriptada($parametros[AUTH_CREDENTIAL_ARRAY_KEY]));

		// retornando o adaptador de autenticacao com banco de dados
		return $this->_authAdapter;
	}

	/**
	 * Retorna uma instancia do Zend_Auth_Adapter_DbTable configurada para uso na aplicacao
	 * 
	 * @param String $login
	 * @param String $senha
	 * 
	 * @return Zend_Auth_Adapter_DbTable
	 */
	private function retornaAuthAdapterAutenticacaoUsuarioPorLoginSenha($login, $senha)
	{
		// setando parametros do autenticador com as credenciais do usuario
		$this->_authAdapter->setIdentity($login)
						   ->setCredential($senha);

		// retornando o adaptador de autenticacao com banco de dados
		return $this->_authAdapter;
	}

	/**
	 * Retorna se as credenciais de acesso existem no banco de dados
	 *
	 * @param Array $formValues
	 * 
	 * @return Boolean
	 */
	public function retornaAutenticacaoUsuarioPorArrayParametros(array $parametros)
	{
		// recuperando adaptador de autenticacoa
		$adaptadorAuth = self::retornaAuthAdapterAutenticacaoUsuarioPorArrayParametros($parametros);

		// realizando autenticacao
		$resultadoAuth = $this->_auth->authenticate($adaptadorAuth);
		
		// verificando o resultado da autenticacao
		if (!$resultadoAuth->isValid())
			return false;

		return true;
	}

	/**
	 * Retorna se as credenciais de acesso existem no banco de dados
	 * 
	 * @param String $login
	 * @param String $senha
	 * 
	 * @return Boolean
	 */
	public function retornaAutenticacaoUsuarioPorLoginSenha($login, $senha)
	{
		// recuperando adaptador de autenticacoa
		$adaptadorAuth = self::retornaAuthAdapterAutenticacaoUsuarioPorLoginSenha($login, $senha);

		// realizando autenticacao
		$resultadoAuth = $this->_auth->authenticate($adaptadorAuth);
		
		// verificando o resultado da autenticacao
		if (!$resultadoAuth->isValid())
			return false;

		return true;
	}

	/**
	 * Retorna o link para a pagina de autenticacao de usuario
	 * 
	 * @param String $urlRedirect
	 * 
	 * @return String
	 */
	public static function retornaLinkAutenticacaoUsuario(Zend_View $view, $urlRedirect = null)
	{
		// verificando se existe usuario logado
		if (!Basico_OPController_LoginOPController::existeUsuarioLogado()) {
			// retornando o link para a tela de autenticacao do usuario
			return $view->urlEncrypt($view->url(array('module'=>'basico', 'controller'=>'autenticador', 'action'=>'autenticarusuario', 'urlRedirect' => Basico_OPController_UtilOPController::codificaBarrasUrl($urlRedirect)), null, true));
		} else {
			return $view->urlEncrypt($view->url(array('module'=>'basico', 'controller'=>'autenticador', 'action'=>'desautenticausuario')));
		}
	}

	/**
	 * Retorna um html contendo uma chamada javascript para a funcao exibirDialogUrl, chamado o dialog de autenticacao de usuario
	 * 
	 * @param String $linguaUsuario
	 * @param String $tituloDialog
	 * @param String $urlRedirect
	 * @param String $formAction
	 * @param Array $onLoadValues
	 * @param Array $errorElements
	 * 
	 * @return String
	 */
	public static function retornaHTMLJavaScriptExibirDialogUrlAutenticacaoUsuario($linguaUsuario, $tituloDialog, $urlRedirect, $formAction = null, $onLoadValues = null, $errorElements = null)
	{
		// inicializando variaveis
		$baseUrl = Basico_OPController_UtilOPController::retornaBaseUrl();

		// verificando se eh preciso enviar valores para o formulario
		if ($onLoadValues) {
			// carregando informacoes sobre o problema na autenticacao
			$mensagemErro       = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('DIALOG_DIV_CONTAINER_ERROR_MSG_AUTENTICAR_USUARIO_CREDENCIAIS_INVALIDAS');
			$tituloMensagemErro = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('DIALOG_DIV_CONTAINER_ERROR_TITLE_AUTENTICAR_USUARIO_CREDENCIAIS_INVALIDAS');

			$onLoadValuesCallAndErrorMessage = ", '{$formAction}', {$onLoadValues}, '{$mensagemErro}', '{$tituloMensagemErro}', {$errorElements}";
		} else if (Basico_OPController_UtilOPController::retornaUserRequest()->getParam('sessaoExpirada')) {
			// carregando informacoes sobre a sessao expirada
			$mensagemErro       = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('DIALOG_DIV_CONTAINER_ERROR_MSG_SESSAO_EXPIRADA');
			$tituloMensagemErro = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('DIALOG_DIV_CONTAINER_ERROR_TITLE_SESSAO_EXPIRADA');
			$onLoadValues       = Basico_OPController_UtilOPController::codificaArrayJson(array('nada' => 'nada'));

			$onLoadValuesCallAndErrorMessage = ", '{$formAction}', {$onLoadValues}, '{$mensagemErro}', '{$tituloMensagemErro}', null";
		} else {
			// carregando a acao do formulario, apenas
			$onLoadValuesCallAndErrorMessage = ", '{$formAction}'";
		}

		// retornando o javascript que abre o dialog de login
		return "<script language='javascript'>exibirDialogUrl('Basico_Form_AutenticacaoUsuario', '{$baseUrl}/public_forms/basico/forms/AutenticacaoUsuario.{$linguaUsuario}.html', '{$tituloDialog}', '{$urlRedirect}', '{$baseUrl}'{$onLoadValuesCallAndErrorMessage})</script>";
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
		return Basico_OPController_UtilOPController::decodificaBarrasUrl($userRequestParams['BasicoAutenticacaoUsuarioUrlRedirect']);
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
}