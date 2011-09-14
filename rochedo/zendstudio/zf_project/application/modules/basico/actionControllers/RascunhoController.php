<?php
class Basico_RascunhoController extends Zend_Controller_Action
{
    /**
	 * Inicializa controlador Rascunho
	 * 
	 * @return void
	 */
	public function init()
    {
    	return;
    }
    
    /**
     * Ação principal do controlador
     * @return void
     */
    public function indexAction() 
    {
    	
    }
    
    public function salvarAction()
    {
    	var_dump($this->getRequest()->getPost());
    	exit;
    }
}