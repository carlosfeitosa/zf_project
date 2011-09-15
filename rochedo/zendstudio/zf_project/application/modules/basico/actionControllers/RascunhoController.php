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
    	
    	// recuperando o nome do formulario
    	$nomeForm = $arrayPost["formName"];
    	
    	// recuperando o hash do formulario
    	foreach ($post as $key => $value) {
    		if (strpos($key, "Csrf") !== false)
    			$formHash = $value;
    	}
    	
    	// verificando se o hash do form veio no post
    	if (isset($formHash)) {
    	
	    	if ($post['idRascunho'] != "") {
	    		// recupera rascunho existente
	    		
	    		// atualizar versao do rascunho na sessao
	    	}else{
	    		// cria novo rascunho
	    		
	    		// insere id e versao do rascunho na sessao utilizando o hash do form como chave do array de pool
	    	}
    	}
    }
}