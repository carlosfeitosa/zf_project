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
    	//desabilitando layout e render
	    $this->_helper->layout()->disableLayout();
	    $this->_helper->viewRenderer->setNoRender(true);
	    
    	// recuperando array do post
    	$arrayPost = $this->getRequest()->getPost();
    	
    	// chamando metodo que salva o rascunho
    	if (Basico_OPController_RascunhoOPController::getInstance()->salvarRascunho($arrayPost, $this->getRequest())) {
    		// escreve mensagem de sucesso para o usuario
    		
    		return true;
    	}
    	
    	return false;
    }
}