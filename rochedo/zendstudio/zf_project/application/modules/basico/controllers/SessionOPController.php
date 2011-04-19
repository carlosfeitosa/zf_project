<?php
/**
 * Controlador Sessio
 * 
 * Controlador responsavel pela Session
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_SessionOPController
{
    /**
	 * @var Basico_OPController_SessionOPController
	 */
	private static $_singleton;

	/**
	 * Construtor do controlador Basico_OPController_SessionOPController
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_SessionOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Inicializa o controlador Basico_TokenController
	 * 
	 * @return Basico_OPController_SessionOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_SessionOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Registra/abre uma sessao para tokens
	 * 
	 * @return Zend_Session
	 */
	public static function registraSessaoToken()
	{
		// registrando o namespace "token"
	    $session = new Zend_Session_Namespace('token');

	    // verificando se a sessao foi inicializada
	    if (!isset($session->initialized)) {
	    	// regerando o id da sessao
            Zend_Session::regenerateId();
            // marca a sessao como inicializada
            $session->initialized = true;
	    }

	    // retorna a sessao
	    return $session;
	}

	/**
	 * Registra/abre uma sessao para banco de dados
	 * 
	 * @return Zend_Session
	 */
	public static function registraSessaoBD()
	{
		// registrando o namespace "token"
	    $session = new Zend_Session_Namespace('database');

	    // verificando se a sessao foi inicializada
	    if (!isset($session->initialized)) {
	    	// regerando o id da sessao
            Zend_Session::regenerateId();
            // marca a sessao como inicializada
            $session->initialized = true;
	    }

	    // retorna a sessao
	    return $session;
	}

	/**
	 * Registra/abre uma sessao do usuario
	 * 
	 * @return Zend_Session
	 */
	public static function registraSessaoUsuario()
	{
		// registrando o namespace "token"
	    $session = new Zend_Session_Namespace('user_session');

	    // verificando se a sessao foi inicializada
	    if (!isset($session->initialized)) {
	    	// regerando o id da sessao
            Zend_Session::regenerateId();
            // marca a sessao como inicializada
            $session->initialized = true;
	    }

	    // retorna a sessao
	    return $session;
	}

	/**
	 * Registra o inicio do processamento PHP na sessao do usuario
	 * 
	 * @return void
	 */
	public static function registraInicioProcessamentoMicrosegundosPHPSessaoUsuario()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionInicioProcessesamentoMicrosegundosPHP = SESSION_INICIO_PROCESSESSAMENTO_MICROSEGUNDOS_PHP;

		// verificando se o valor ja se encontra na sessao
		if (!isset($sessaoUsuario->$sessionInicioProcessesamentoMicrosegundosPHP)) {
			// registrando a data-hora atual do inicio do processamento php
			$sessaoUsuario->$sessionInicioProcessesamentoMicrosegundosPHP = Basico_OPController_UtilOPController::retornaMicrosegundosDateTimeAtual();
		}
	}

	/**
	 * Retorna a datahora, em microsegundos, do inicio do processamento do PHP
	 * 
	 * @return Integer
	 */
	public static function retornaInicioProcessamentoMicrosegundosPHPSessaoUsuario()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionInicioProcessesamentoMicrosegundosPHP = SESSION_INICIO_PROCESSESSAMENTO_MICROSEGUNDOS_PHP;

		// retornando a datahora, em microsegundos, registrado na sessao, do inicio do processamento do PHP
		return $sessaoUsuario->$sessionInicioProcessesamentoMicrosegundosPHP;
	}

	/**
	 * Limpa o registro, na sessao, do inicio do processamento do PHP
	 * 
	 * @return void
	 */
	public static function limpaRegistroInicioProcessamentoMicrosegundosPHPSessaoUsuario()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionInicioProcessesamentoMicrosegundosPHP = SESSION_INICIO_PROCESSESSAMENTO_MICROSEGUNDOS_PHP;

		// limpando o valor da sessao
		unset($sessaoUsuario->$sessionInicioProcessesamentoMicrosegundosPHP);
	}

	/**
	 * Destroi a sessao
	 * 
	 * @return void
	 */
	public static function destroiTodasAsSessoes()
	{
		// destruindo a sessao
		Zend_Session::destroy();
	}
}