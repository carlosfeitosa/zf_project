<?php
/**
 * Basico_SessionController
 * @author Carlos Feitosa
 * @since 17/09/2011
 * @package Basico
 *
 */

class Basico_SessionController extends Basico_AbstractActionController_RochedoGenericActionController
{
    /**
	 * Inicializa controlador Session 
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

    public function limpaSessaoPoolElementosOcultosAction()
    {
    	// recuperando o post
    	$post = $this->getRequest()->getPost();

    	// limpando o pool de elementos ocultos
    	Basico_OPController_SessionOPController::limpaTodasChavesPoolElementosOcultos($post);
    } 
}