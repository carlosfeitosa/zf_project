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
    	// recuperando array do post
    	$arrayPost = $this->getRequest()->getPost();
    	
    	// chamando metodo que salva o rascunho
    	if (Basico_OPController_RascunhoOPController::getInstance()->salvarRascunho($arrayPost, $this->getRequest())) {
			// inicializa o rascunho no cliente
    	    $scripts[] = Basico_OPController_UtilOPController::retornaJavaScriptEntreTagsScriptHtml("initRascunho(); ");
       		// escreve mensagem de sucesso para o usuario
    	    $scripts[] = Basico_OPController_UtilOPController::retornaJavaScriptDojoPopMessage(Basico_OPController_TradutorOPController::retornaTraducaoViaSQL("RASCUNHO_MENSAGEM_SUCESSO_SALVAR"));
    	    
    	    // setando scripts na view    	
    		$this->view->scripts = $scripts;
    	}
		
    	// rederizando resposta
        $this->_helper->Renderizar->renderizar();
    }
}