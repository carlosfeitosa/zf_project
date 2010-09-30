<?php
/**
 * Basico_SessionControllerController
 * @author Carlos Feitosa
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
	 * 
	 * @return Basico_SessionControllerController
	 */
	public function init()
	{
		// verificando singleton
		if (self::$singleton == NULL){
			self::$singleton = new Basico_SessionControllerController();
		}
		
		return self::$singleton;
	}
	
	/**
	 * Registra/abre uma sessao de token individual
	 * 
	 * @return Zend_Session
	 */
	static public function registraSessaoToken()
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