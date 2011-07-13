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
    	
    	// adicionando plugin Jquery Humanized Messages
		$view->headLink()->appendStylesheet($view->baseUrl('/js/plugins/humanizedMessages/humanmsg.css'));
		$view->headScript()->prependFile($view->baseUrl("/js/plugins/humanizedMessages/humanmsg.js"));
		$view->headScript()->prependFile($view->baseUrl("/js/plugins/humanizedMessages/jquery.js"));

		// adicionando plugin Jquery maskMoney
		$view->headScript()->prependFile($view->baseUrl("/js/jquery/jquery-1.6.1.min.js"));
		$view->headScript()->appendFile($view->baseUrl("/js/plugins/maskMoney/jquery.maskMoney.js"));
		
		
		// recuperando view e formulario vinculado a view
		$form = $view->form;

		// verificando informacoes sobre o formulario
		if (isset($form)) {
			// recuperando o nome do modulo para remocação do nome do form
			$nomeModulo = ucfirst(strtolower(Basico_OPController_UtilOPController::retornaUserRequest()->getModuleName()));
			
			// recuperando o nome do form se o modulo
			$nomeForm = str_replace($nomeModulo, "", $form->getName());

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
						if ($objTemplateFormulario->stylesheetFullFilename) {
							// verificando se o stylesheet eh local ou remoto
							if (strpos($objTemplateFormulario->stylesheetFullFilename, 'http://' === 0))
								// adicionando stylesheet remoto
								$view->headLink()->appendStylesheet($objTemplateFormulario->stylesheetFullFilename);
							else
								// adicionando stylesheet local
								$view->headLink()->appendStylesheet($applicationHttpBaseUrl . $objTemplateFormulario->stylesheetFullFilename);
						}

						// verificando se o template possui arquivo javascript
						if ($objTemplateFormulario->javascriptFullFilename) {
							// verificando se o javascript eh local ou remoto
							if (strpos($objTemplateFormulario->stylesheetFullFilename, 'http://' === 0))
								// adicionando javascript remoto
								$view->headScript()->appendFile($objTemplateFormulario->javascriptFullFilename);
							else
								// adicionando javascript local
								$view->headScript()->appendFile($applicationHttpBaseUrl . $objTemplateFormulario->javascriptFullFilename);
						}
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

    		//$controller->getHelper('viewRenderer')->setNoRender(false);
    		//$controller->getHelper('viewRenderer')->setNoController(true);
    		
    		// Desliga o layout do Zend para requisições do tipo AJAX(XmlHttpRequest)
    		$controller->getHelper('layout')->disableLayout(true);
    		
    		$contexto = 'ajax';
    	}else{
    		// NORMAL REQUEST

    	}
    	
    	if($disableLayout)
    		$controller->getHelper('layout')->disableLayout(true);

   		if(!$viewScript){

    		/*
    		 * Renderiza a view baseada no contexto
    		 * Contextos permitidos: HTML, PDF, XLS, XML, AJAX, PLAINTEXT, IMPRESSAO e NULL
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

	    		case 'null' : $controller->renderScript('default.null.phtml');
	    			break;

	    		// Renderiza para a view defult HTML
	    		default : $controller->renderScript('default.html.phtml');
	    	}
	    	
    	}else{
    		$controller->renderScript($viewScript);
    	}
    	
    }
}