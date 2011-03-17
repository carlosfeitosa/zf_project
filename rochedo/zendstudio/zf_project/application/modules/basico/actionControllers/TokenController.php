<?php

/**
 * Basico_TokenController
 * @author joao
 *
 */
class Basico_TokenController extends Zend_Controller_Action
{	
    /**
	* @var object
	*/    
	protected $_request;

    /**
	 * Inicializa controlador Login 
	 */
	public function init()
    {
    	// recuperando requisicao
        $this->_request = Zend_Controller_Front::getInstance()->getRequest();
    }

    /**
     * Decodifica um token
     * 
     * @return void
     */
    public function decodeAction()
    {
    	// recuperando o token da requisicao
        $token = $this->_request->getParam('t');

        // instanciando o controlador de token
        $controladorToken = Basico_OPController_TokenOPController::getInstance();

        // decodificando url
        $url = $controladorToken->decodeTokenUrlPorToken($token);

        // redirecionando para a url decodificada
        $this->_redirect($url);
    }
}