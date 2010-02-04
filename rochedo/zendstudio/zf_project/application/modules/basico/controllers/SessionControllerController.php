<?php
/**
 * Basico_TokenController
 * @author joao
 *
 */
class Basico_SessionControllerController
{
    /**
	 * @var Basico_SessionControllerController
	 */
	static private $singleton;
	
	/**
	 * Inicializa o controlador Basico_TokenController
	 * @return Basico_SessionControllerController
	 */
	public function init()
	{
		if (self::$singleton == NULL){
			self::$singleton = new Basico_SessionControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Registra/abre uma sessao de token individual
	 * @return Zend_Session
	 */
	static public function registraSessaoToken()
	{
	    $session = new Zend_Session_Namespace('token');
	    
	    if (!isset($session->initialized)) {
            Zend_Session::regenerateId();
            $session->initialized = true;
	    }
	    
	    return $session;
	}
}