<?php
/**
 * Basico_SessionController
 * @author Carlos Feitosa
 * @since 17/09/2011
 * @package Basico
 *
 */

class Basico_SessionController extends Zend_Controller_Action
{
    /**
	 * Inicializa controlador Session 
	 */
	public function init()
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