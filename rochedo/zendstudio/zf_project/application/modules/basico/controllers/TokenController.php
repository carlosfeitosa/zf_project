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
    	// recuperando requisicao
        $this->request = Zend_Controller_Front::getInstance()->getRequest();
    }
	
    /**
     * Decodifica um token
     * 
     * @return void
     */
    public function decodeAction()
    {
    	// recuperando o token da requisicao
        $token = $this->getRequest()->getParam('t');

        // instanciando o controlador de token
        $controladorToken = Basico_TokenControllerController::init();
        
        // decodificando url
        $url = $controladorToken->decodeTokenUrl($token);
        
        // redirecionando para a url decodificada
        $this->_redirect($url);
    }
}