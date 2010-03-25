<?php
/**
 * Helper renderizador de views do sistema.
 */

class Basico_Controller_Action_Helper_Renderizar extends Zend_Controller_Action_Helper_Abstract
{
    /**
    * Renderiza as views do sistema
    * 
    * @param None do viewScript - Ex.: 'login/sucesso-salvar-usuario-nao-validado.phtml' 
    */
    public function renderizar($viewScript = null)  
    {
    	
    	$controller = $this->_actionController;
    	
    	//Verifica o tipo de requisição http
    	if($controller->getRequest()->isXmlHttpRequest()){
    		//AJAX REQUEST
    		
    		//Desliga a renderizacao
    		$controller->getHelper('viewRenderer')->setNoRender(true);
    		
    		//Desliga o layout do Zend para requisições do tipo AJAX(XmlHttpRequest)
    		$controller->getHelper('layout')->disableLayout(true);
    		
    		//Seta o tipo de requisição para a view
    		$controller->view->form->_postOnBackground = true;
    	}else{
    		//NORMAL REQUEST
    		
    		//Seta o tipo de requisição para a view
    		//$controller->view->form->_postOnBackground = false;
    	}
    	
    	if(!$viewScript)
	    	//Renderiza para a view global
    		$controller->renderScript('global.phtml');
    	else
    		$controller->renderScript($viewScript);
    }  
}  