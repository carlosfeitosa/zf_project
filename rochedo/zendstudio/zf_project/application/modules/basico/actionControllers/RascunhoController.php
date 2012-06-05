<?php
class Basico_RascunhoController extends Basico_AbstractActionController_RochedoGenericActionController
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
     * Ação principal do controlador
     * @return void
     */
    public function indexAction() 
    {
    	
    }
    
    /**
     * Ação responsavel por salvar o rascunho
     * @return void
     */
    public function salvarAction()
    {
    	// recuperando array do post
    	$arrayPost = $this->getRequest()->getPost();
   	
    	// recuperando forceSave
    	$forceSave = $arrayPost["forceSave"];

    	// retirando o parametro forcesave do arrayPost
		unset($arrayPost["forceSave"]);

    	// chamando metodo que salva o rascunho
    	if (Basico_OPController_FormularioRascunhoOPController::getInstance()->salvarRascunho($this->getRequest(),$forceSave)) {
			// inicializa o rascunho no cliente
    	    $scripts[] = Basico_OPController_UtilOPController::retornaJavaScriptEntreTagsScriptHtml("initRascunho(); ");
       		// escreve mensagem de sucesso para o usuario
    	    $scripts[] = Basico_OPController_UtilOPController::retornaJavaScriptDojoPopMessage(Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL("RASCUNHO_MENSAGEM_SUCESSO_SALVAR"));
    	    
    	    // setando scripts na view    	
    		$this->view->scripts = $scripts;
    	}
		
    	// rederizando resposta
        $this->_helper->Renderizar->renderizar();
    }
    
    /**
     * Ação responsavel por excluir o rascunho
     * @return void
     */
    public function excluirAction()
    {
    	// removendo rascunho
    	if (Basico_OPController_FormularioRascunhoOPController::getInstance()->excluirRascunho($this->getRequest())) {
    		// setando script na view
    		$scripts[] = Basico_OPController_UtilOPController::retornaJavaScriptDojoPopMessage(Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL("RASCUNHO_MENSAGEM_SUCESSO_EXCLUIR"));
    	}else{
    		// setando script na view    		
    		$scripts[] = Basico_OPController_UtilOPController::retornaJavaScriptDojoPopMessage(Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL("RASCUNHO_MENSAGEM_ERRO_EXCLUIR"));
    	}
    	
   		// setando script na view    	
    	$this->view->scripts = $scripts;
    	
    	// renderizando resultado
    	$this->_helper->Renderizar->renderizar();
    }
    
    /**
     * Ação responsavel por exibir o formulario de administracao dos rascunhos
     * @return void
     */
    public function exibirformadminrascunhosAction()
    {
	    // recuperando os parametros da requisicao
	    $arrayPost = $this->getRequest()->getParams();
	    
    	// recuperando o formulario AdminRascunhos
    	$form = new Basico_Form_AdminRascunhos();
    	
    	// escrevendo form
    	$this->view->content = array($form);
    	
    	// rederizando a view
    	$this->_helper->Renderizar->renderizar('default.html.phtml');
    	
    }
}