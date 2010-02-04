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
	private $request;
	
    /**
	 * Inicializa controlador Login 
	 */
	public function init()
    {
        $this->request = Zend_Controller_Front::getInstance()->getRequest();
    }
	
    public function decodeAction()
    {
        $token = $this->getRequest()->getParam('t');
        
        $controladorToken = Basico_TokenControllerController::init();
        
        $url = $controladorToken->decodeTokenUrl($token);
        
        $this->_redirect($url);
    }
}