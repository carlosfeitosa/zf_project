<?php
/**
 * Helper renderizador de views do sistema.
 */

class Basico_Controller_Action_Helper_Renderizar extends Zend_Controller_Action_Helper_Abstract
{
    /**
     * @var Zend_View_Interface
     */
    private $view;

    /**
    * Renderiza as views do sistema
    * 
    * @param String $viewScript Nome do viewScript - Ex.: 'login/sucesso-salvar-usuario-nao-validado.phtml'
    * @param Boolean $disableLayout Ativa a renderizarção do leiaute
    * 
    * @return void
    */
    public function renderizar($viewScript = null, $disableLayout = false)  
    {
    	// recuperando o helper view
    	$this->view = Zend_Layout::getMvcInstance()->getView();

    	// Instancia a controlador
    	$controller = Zend_Controller_Front::getInstance();
    	
    	$viewRenderer = Zend_Controller_Action_HelperBroker::getStaticHelper('viewRenderer');

    	// verificando se deve desabilitar o layout
    	if ($disableLayout) {
	    	// desabilitando o layout
	    	Basico_OPController_TemplateOPController::desabilitaLayoutView();
    	}
    	
    	// recupera o tipo de contexto da view  
    	$contexto = $controller->getRequest()->getParam('format');

    	// Verifica o tipo de requisição http
    	if($controller->getRequest()->isXmlHttpRequest()){ 	
    		// AJAX REQUEST

    		// Desliga o layout do Zend para requisições do tipo AJAX(XmlHttpRequest)
    		Basico_OPController_TemplateOPController::desabilitaLayoutView();
			
    		// setando o contexto
    		$contexto = 'ajax';
    	}else{
    		// NORMAL REQUEST

    		// verificando se o banco de dados está levantado
    		if (Basico_OPController_DBUtilOPController::checaBancoLevantado()) {
	    		// adicionando o headerMenu.
	    		$this->view->placeholder('headerMenu')->set($this->view->render('headerMenu.phtml'));

	    		// adicionando footer.
	    		$this->view->placeholder('footer')->set($this->view->render('footer.phtml'));
    		}
    	}
    	
    	// processando os formulários
		Basico_OPController_RenderizadorOPController::getInstance()->processaFormularios($this->view, $contexto);

		// inicializacao padrao da view
		Basico_OPController_RenderizadorOPController::getInstance()->inicializaDefault($this->view);
		
   		if(null === $viewScript){
   			/*
    		 * Renderiza a view baseada no contexto
    		 * Contextos permitidos: HTML, PDF, XLS, XML, AJAX, PLAINTEXT, IMPRESSAO e NULL
    		 */
	    	switch ($contexto){

	    		case 'pdf' : 
	    			$viewRenderer->renderScript('default.pdf.phtml');
	    			break;

	    		case 'xls' : 
	    			$viewRenderer->renderScript('default.xls.phtml');
	    			break;

	    		case 'xml' : 
	    			$viewRenderer->renderScript('default.xml.phtml');
	    			break;
	    			
	    		case 'json' : 
	    			$viewRenderer->renderScript('default.json.phtml');
	    			break;

	    		case 'ajax' :
	    			$viewRenderer->renderScript('default.ajax.phtml');
	    			break;

	    		case 'plaintext' : 
	    			$viewRenderer->renderScript('default.plaintext.phtml');
	    			break;

	    		case 'impressao' : 
	    			$viewRenderer->renderScript('default.impressao.phtml');
	    			break;
	    		// Renderiza para a view defult HTML
	    		default :
	    			Basico_OPController_RenderizadorOPController::getInstance()->inicializaContextoHtml($this->view);    			
	    			$viewRenderer->renderScript('default.html.phtml');
	    	}

    	}else{
    		$viewRenderer->renderScript($viewScript);
    	}
    }
}