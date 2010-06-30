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
    * @param Ativa a renderizarção do leiaute
    */
    public function renderizar($viewScript = null, $disableLayout = false)  
    {
    	//Instancia a controlador
    	$controller = $this->_actionController;
    	
    	//Seta o tipo de contexto da view  
    	$contexto = $controller->getRequest()->getParam('format');
    	//$currentContexto = $controller->getHelper('contextSwitch')->getCurrentContext();
    	//$defaultContexto = $controller->getHelper('contextSwitch')->getDefaultContext();
    	
    	//Verifica o tipo de requisição http
    	if($controller->getRequest()->isXmlHttpRequest()){
    		//AJAX REQUEST
    		
    		//Desliga a renderizacao
    		$controller->getHelper('viewRenderer')->setNoRender(true);
    		
    		//Desliga o layout do Zend para requisições do tipo AJAX(XmlHttpRequest)
    		$controller->getHelper('layout')->disableLayout(true);
    		
    		//Seta o tipo de requisição para a view
    		//$controller->view->form->_postOnBackground = true;
    		$controller->view->postOnBackground = true;
    		
    		$contexto = 'ajax';
    	}else{
    		//NORMAL REQUEST
    		
    		//Seta o tipo de requisição para a view
    		$controller->view->postOnBackground = false;
    	}
    	
    	if($disableLayout)
    		$controller->getHelper('layout')->disableLayout(true);

    	if(!$viewScript){
    		
    		/*
    		 * Renderiza a view baseada no contexto
    		 * Contextos permitidos: HTML, PDF, XLS, XML, AJAX, PLAINTEXT, IMPRESSAO
    		 */
	    	switch ($contexto){

	    		case 'pdf' : $controller->renderScript('default.pdf.phtml');
	    			break;

	    		case 'xls' : $controller->renderScript('default.xls.phtml');
	    			break;

	    		case 'xml' : $controller->renderScript('default.xml.phtml');
	    			break;
	    		
	    		case 'ajax' : $controller->renderScript('default.ajax.phtml');
	    			break;

	    		case 'plaintext' : $controller->renderScript('default.plaintext.phtml');
	    			break;

	    		case 'impressao' : $controller->renderScript('default.impressao.phtml');
	    			break;

	    		//Renderiza para a view defult HTML
	    		default : $controller->renderScript('default.html.phtml');
	    	}
	    	
    	}else{
    		$controller->renderScript($viewScript);
    	}
    	
    }
}