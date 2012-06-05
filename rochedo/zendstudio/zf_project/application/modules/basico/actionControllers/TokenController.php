<?php

/**
 * Basico_TokenController
 * @author joao
 *
 */
class Basico_TokenController extends Basico_AbstractActionController_RochedoGenericActionController
{	
    /**
	 * Inicializa controlador Login 
	 */
	public function init()
    {
		return;
    }

    /**
	 * Inicializa os controladores necessários para operação deste action controller
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractActionController_RochedoGenericActionController::_initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/06/2012
	 */
	protected function _initControllers()
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
        $url = Basico_OPController_CpgTokenOPController::getInstance()->decodeTokenUrlPorToken($token);

        // redirecionando para a url decodificada
        $this->_redirect($url);
    }
}