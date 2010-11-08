<?php
/**
 * Helper renderizador de views do sistema.
 */

class Basico_Controller_Action_Helper_Renderizar extends Zend_Controller_Action_Helper_Abstract
{
    /**
    * Renderiza as views do sistema
    * 
    * @param Nome do viewScript - Ex.: 'login/sucesso-salvar-usuario-nao-validado.phtml'
    * @param Ativa a renderizarção do leiaute
    */
    public function renderizar($viewScript = null, $disableLayout = false)  
    {
    	// inicializando variaveis
    	$nomeForm = '';

    	// Instancia a controlador
    	$controller = $this->_actionController;

    	// recuperando o helper view
    	$view = $this->getActionController()->view;

		// recuperando view e formulario vinculado a view
		$form = $view->form;

		// verificando informacoes sobre o formulario
		if (isset($form)) {
			$nomeForm = $form->getName();

			// instanciando modelo "formulario"
			$modelFormulario = new Basico_Model_Formulario();

			// recuperando objeto formulario
			$arrayObjsFormulario = $modelFormulario->fetchList("form_name = '{$nomeForm}'", null, 1, 0);

			// verificando se o objeto foi carregado
			if (isset($arrayObjsFormulario[0])) {

				// recuperando objeto formulario
				$objFormulario = $arrayObjsFormulario[0];

				// recuperando templates do formulario
				$arrayObjsTemplateFormulario = $objFormulario->getTemplatesObjects();

				// verificando se houve recuperacao do(s) template(s)
				if (count($arrayObjsTemplateFormulario) > 0) {
					// recuperando caminho do url base
					$applicationHttpBaseUrl = $this->getFrontController()->getInstance()->getBaseUrl();

					// loop para colocar os includes necessarios na view, de acordo com o template
					foreach($arrayObjsTemplateFormulario as $objTemplateFormulario) {

						// verificando se o template possui arquivo css
						if ($objTemplateFormulario->stylesheetFullFilename)
							$view->dojo()->addStylesheet($applicationHttpBaseUrl . $objTemplateFormulario->stylesheetFullFilename);

						// verificando se o template possui arquivo javascript
						if ($objTemplateFormulario->javascriptFullFilename)
							$view->dojo()->addLayer($applicationHttpBaseUrl . $objTemplateFormulario->javascriptFullFilename);
					}
				}
			}
		}

    	// Seta o tipo de contexto da view  
    	$contexto = $controller->getRequest()->getParam('format');
    	
    	// Verifica o tipo de requisição http
    	if($controller->getRequest()->isXmlHttpRequest()){
    		// AJAX REQUEST
    		
    		// Desliga a renderizacao
    		$controller->getHelper('viewRenderer')->setNoRender(true);
    		
    		// Desliga o layout do Zend para requisições do tipo AJAX(XmlHttpRequest)
    		$controller->getHelper('layout')->disableLayout(true);
    		
    		// Seta o tipo de requisição para a view
    		$controller->view->postOnBackground = true;
    		
    		$contexto = 'ajax';
    	}else{
    		// NORMAL REQUEST
    		
    		// Seta o tipo de requisição para a view
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

	    		// Renderiza para a view defult HTML
	    		default : $controller->renderScript('default.html.phtml');
	    	}
	    	
    	}else{
    		$controller->renderScript($viewScript);
    	}
    	
    }
}