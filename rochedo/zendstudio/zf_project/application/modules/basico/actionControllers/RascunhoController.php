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
    	echo Basico_OPController_UtilOPController::retornaJavaScriptEntreTagsScriptHtml("initRascunho(); ");
    	//	$scripts[] = Basico_OPController_UtilOPController::retornaJavaScriptDojoPopMessage(Basico_OPController_TradutorOPController::retornaTraducaoViaSQL("RASCUNHO_MENSAGEM_SUCESSO_SALVAR"));
    	}
    	
    	//$this->view->scripts = $scripts;
    	
    //	$this->_helper->Renderizar->renderizar();
    }
}