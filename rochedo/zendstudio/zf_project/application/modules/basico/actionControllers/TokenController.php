<?php

/**
 * Basico_TokenController
 * @author joao
 *
 */
class Basico_TokenController extends Zend_Controller_Action
{	
    /**
	 * Inicializa controlador Login 
	 */
	public function init()
    {
		return;
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

        // decodificando url
        $url = Basico_OPController_TokenOPController::getInstance()->decodeTokenUrlPorToken($token);

        // redirecionando para a url decodificada
        $this->_redirect($url);
    }
}