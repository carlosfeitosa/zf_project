<?php
/**
 * Helper renderizador de views do sistema.
 */

class Basico_Controller_Action_Helper_Renderizar extends Zend_Controller_Action_Helper_Abstract
{
    /**
     * @var Zend_View_Interface
     */
    private $_view;
    
    /**
    * Renderiza as views do sistema
    * 
    * @param Nome do viewScript - Ex.: 'login/sucesso-salvar-usuario-nao-validado.phtml'
    * @param Ativa a renderizarção do leiaute
    */
    public function renderizar($viewScript = null, $disableLayout = false)  
    {
    	// Instancia a controlador
    	$controller = $this->_actionController;
    	
    	if($disableLayout) {
    		$controller->getHelper('layout')->disableLayout(true);
    	}

    	// recuperando o helper view
    	$this->_view = $this->getActionController()->view;
    	
		// percorre as variáveis e objetos contidas na view
		foreach ($this->_view->getVars() as $key0 => $value0){

			// verifica se a variável é do tipo array.
			if (is_array($value0)) {

				// percorre o array enviado da view 
				foreach ($value0 as $key => $value) {

					// verifica se existe objetos do tipo formulário na view
					if (is_object($value) and is_subclass_of($value, 'Zend_Form')) {
						// carregando formulario
						$form = $value;
						
						// carregando subformularios
						$arraySubForms = $form->getSubForms();
						// inicializando array que deve conter o form e seus subforms
						$arrayFormsSubForms = array();
						// adicionando o formualario ao array
						$arrayFormsSubForms[] = $form;
						// adicionando os subformularios ao array
						$arrayFormsSubForms += $arraySubForms;
						

						// recuperando o nome do modulo para remocação do nome do form
						$nomeModuloForm = ucfirst(strtolower(Basico_OPController_UtilOPController::retornaUserRequest()->getModuleName()));
						
						Basico_OPController_SessionOPController::limpaTodasChavesPoolElementosOcultos();
						// verificando informacoes sobre o formulario
						foreach ($arrayFormsSubForms as $form) {
							// recuperando o nome do modulo para remocação do nome do form
							$nomeModulo = ucfirst(strtolower(Basico_OPController_UtilOPController::retornaUserRequest()->getModuleName()));

							// recuperando o nome do form se o modulo
							$nomeForm = str_replace($nomeModulo, "", $form->getName());

							// recuperando templates do formulario
							$arrayTemplatesFormulario = Basico_OPController_FormularioOPController::retornaArraysTemplateStylesheetFullFilenameJavascriptFullFilenamePorNomeFormularioViaSQL($nomeForm);

							// verificando se houve recuperacao do(s) template(s)
							if (count($arrayTemplatesFormulario) > 0) {
								// recuperando caminho do url base
								$applicationHttpBaseUrl = $this->getFrontController()->getInstance()->getBaseUrl();

								// loop para colocar os includes necessarios na view, de acordo com o template
								foreach($arrayTemplatesFormulario as $arrayTemplateFormulario) {

									// verificando se o template possui arquivo css
									if ($arrayTemplateFormulario['stylesheetfullfilename']) {
										// verificando se o stylesheet eh local ou remoto
										if (strpos($arrayTemplateFormulario['stylesheetfullfilename'], 'http://' === 0))
											// adicionando stylesheet remoto
											$this->_view->headLink()->appendStylesheet($arrayTemplateFormulario['stylesheetfullfilename']);
										else
											// adicionando stylesheet local
											$this->_view->headLink()->appendStylesheet($applicationHttpBaseUrl . $arrayTemplateFormulario['stylesheetfullfilename']);
									}

									// verificando se o template possui arquivo javascript
									if ($arrayTemplateFormulario['javascriptfullfilename']) {
										// verificando se o javascript eh local ou remoto
										if (strpos($arrayTemplateFormulario['javascriptfullfilename'], 'http://' === 0))
											// adicionando javascript remoto
											$this->_view->headScript()->appendFile($arrayTemplateFormulario['javascriptfullfilename']);
										else
											// adicionando javascript local
											$this->_view->headScript()->appendFile($applicationHttpBaseUrl . $arrayTemplateFormulario['javascriptfullfilename']);
									}

									// verificando se o formulario possui saida AJAX para inclusao de prefixPath e decorator
									if ($arrayTemplateFormulario['output'] === FORM_GERADOR_OUTPUT_AJAX) {
										// adicionando prefixPath
										$form->addPrefixPath('Rochedo_Form_Decorator', 'Rochedo/Form/Decorator', 'decorator');

										// removendo o decorator DijitForm para posterior adicao
										$form->removeDecorator('DijitForm');

										// adicionando decorator AjaxForm
										$form->addDecorators(array('AjaxForm', 'DijitForm'));
									}
								}
							}
							
							$elementosOcultos = array();
							// percorre todos os elementos do form
							foreach ($form->getElements() as $elementoForm){
																
								// verifica se o elemento e do tipo hash
								if ($elementoForm->getType() == 'Zend_Form_Element_Hash') {									
									
									// renderizando elemento hash para ser gerado o value.
									$elementoForm->render();
									// recuperando chave do arrayPool
									$chaveArrayPool = $elementoForm->getValue();
								}
								
								if ($elementoForm->getType() == 'Rochedo_Form_Element_Oculto') {
									
									// renderizando elemento hash para ser gerado o value.
									$elementoForm->render();
									// montando array de elementos ocultos.
									$elementosOcultos[$elementoForm->getId()] = $elementoForm->getValue();
									// removendo elemento do formulário
									$form->removeElement($elementoForm->getName());
								}
							}
							// verificando se existe elementos no array de elementos ocultos.
							if (count($elementosOcultos)> 0) {
								// registrando elementos na sessão
								Basico_OPController_SessionOPController::registraPostPoolElementosOcultos($chaveArrayPool, $elementosOcultos);
							}
						}
					}					
				}
			}
		}
	    
		// verificando se o formulario e o sistema permite salvar rascunho
        if ((Basico_OPController_LoginOPController::existeUsuarioLogado()) and (APPLICATION_FORM_DRAFT == true))
			//inserindo arquivo JS do rascunho			        
			$this->_view->headScript()->appendFile($this->_view->baseUrl(DEFAULT_JAVASCRIPT_JQUERY_RASCUNHO));

    	// Seta o tipo de contexto da view  
    	$contexto = $controller->getRequest()->getParam('format');

    	// Verifica o tipo de requisição http
    	if($controller->getRequest()->isXmlHttpRequest()){ 		
    		// Desliga o layout do Zend para requisições do tipo AJAX(XmlHttpRequest)
    		$controller->getHelper('layout')->disableLayout(true);

    		$contexto = 'ajax';
    	}else{
    		// NORMAL REQUEST
    		
    		// adicionando o headerMenu.
    		$this->_view->renderToPlaceholder('headerMenu.phtml', 'headerMenu');
    		// adicionando footer.
    		$this->_view->renderToPlaceholder('footer.phtml', 'footer');
    	}


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
	    		default :
	    			$this->inicializaContextoHtml();    			
	    			$controller->renderScript('default.html.phtml');
	    	}

    	}else{
    		$controller->renderScript($viewScript);
    	}
    }
    
    private function inicializaContextoHtml()
    {
		// adicionando plugin Jquery maskMoney
		$this->_view->headScript()->prependFile($this->_view->baseUrl("/js/jquery/jquery-1.6.1.min.js"));

		// setando variaveis
		$applicationHttpHome = $this->_view->urlEncrypt($this->_view->url(array('controller'=>'index'), null, true));
		$applicationHttpImagesHome = $this->_view->baseUrl('/images/');
		$applicationHttpCSSHome = $this->_view->baseUrl('/css/global.css');
		$applicationHttpBaseUrl = $this->_view->baseUrl();

		// sentando css messagePop
		$this->_view->headLink()->appendStylesheet($this->_view->baseUrl('/js/plugins/dojo/messagePop/ui/resources/Error.css'));
		
		// setando cabecalho
		$this->_view->doctype('XHTML1_STRICT');
		$this->_view->headTitle(APPLICATION_NAME_AND_VERSION);

		$headTitle = APPLICATION_NAME_AND_VERSION;
		// headerTitle separator
		$headTitleSeparator = ' :: ';

		$this->_view->headTitle()->setSeparator(' :: ');

		$this->_view->headMeta()->appendHttpEquiv('Content-Type', 'text/html; charset=utf-8');
		$this->_view->headMeta()->appendHttpEquiv('X-UA-Compatible', 'IE=8');
		$this->_view->headLink()->appendStylesheet($applicationHttpCSSHome);

		// adicionando arquivos javascript padrao
		$this->_view->headScript()->appendFile($this->_view->baseUrl(DEFAULT_JAVASCRIPT_FILE_PATH));
		$this->_view->headScript()->appendFile($this->_view->baseUrl(DEFAULT_JAVASCRIPT_MASKS_FILE_PATH));
		$this->_view->headScript()->appendFile($this->_view->baseUrl(DEFAULT_JAVASCRIPT_MASKS_JQUERY_FILE_PATH));

		// verificando ambiente
		if (Basico_OPController_UtilOPController::ambienteDesenvolvimento()) {
		    // verificando se existe usuario logado
		    if (Basico_OPController_LoginOPController::existeUsuarioLogado()) {
		    	// recuperando a descricao do perfil padrao do usuario logado na sessao
				$descricaoPerfilPadrao = Basico_OPController_PerfilOPController::retornaTraducaoPerfilPadraoUsuarioSessaoViaSQL();
				
				// setando o titulo da janela do navegador
				$this->_view->headTitle("[ Perfil padrao: {$descricaoPerfilPadrao} ]");
		    }

			// recuperando o request do usuario
			$request = Basico_OPController_UtilOPController::retornaUserRequest();
		    // setando o titulo da janela do navegador
		    $this->_view->headTitle("[ MVC: {$request->getModuleName()}/{$request->getControllerName()}/{$request->getActionName()} ]"); 
		}

		// setando parametros do dojo
		$this->_view->dojo()->setDjConfig(array('usePlainJson' => true, 'locale' => Basico_OPController_PessoaOPController::retornaLinguaUsuario(), 'parseOnLoad'=> true))
        			 ->addStylesheetModule(DOJO_STYLE_SHEET_MODULE)
                     // registrando path local do dojo
        			 ->setLocalPath($applicationHttpBaseUrl . DOJO_LOCAL_PATH)
					
                     // registrando o path do moludo messagePop
                     ->registerModulePath('messagePop', $applicationHttpBaseUrl.'/js/plugins/dojo/messagePop')
                     ->requireModule('messagePop.ui.Error')
                     ;	
    }
}