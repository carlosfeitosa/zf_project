<?php
/**
 * Basico_OPController_SessionOPController
 * @author Carlos Feitosa
 *
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
	 * Registra/abre uma sessao de token individual
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
}