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
    * @param String $viewScript Nome do viewScript - Ex.: 'login/sucesso-salvar-usuario-nao-validado.phtml'
    * @param Boolean $disableLayout Ativa a renderizarção do leiaute
    * 
    * @return void
    */
    public function renderizar($viewScript = null, $disableLayout = false)  
    {
    	// recuperando o helper view
    	$this->_view = $this->getActionController()->view;

    	// Instancia a controlador
    	$controller = $this->_actionController;

    	// verificando se deve desabilitar o layout
    	if ($disableLayout) {
	    	// desabilitando o layout
	    	Basico_OPController_TemplateOPController::desabilitaLayoutView($controller);
    	}
    	
    	// recupera o tipo de contexto da view  
    	$contexto = $controller->getRequest()->getParam('format');

    	// Verifica o tipo de requisição http
    	if($controller->getRequest()->isXmlHttpRequest()){ 	
    		// AJAX REQUEST

    		// Desliga o layout do Zend para requisições do tipo AJAX(XmlHttpRequest)
    		Basico_OPController_TemplateOPController::desabilitaLayoutView($controller);
			
    		// setando o contexto
    		$contexto = 'ajax';
    	}else{
    		// NORMAL REQUEST
    		
    		// adicionando o headerMenu.
    		$this->_view->placeholder('headerMenu')->set($this->_view->render('headerMenu.phtml'));
    		// adicionando footer.
    		$this->_view->placeholder('footer')->set($this->_view->render('footer.phtml'));
    	}
    	
    	// processando os formulários
		$this->processaFormularios($contexto);

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
	    			
	    		case 'json' : $controller->renderScript('default.json.phtml');
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

    /**
     * Inicializa o contexto HTML
     * 
     */
    private function inicializaContextoHtml()
    {
		// adicionando plugin Jquery maskMoney
		$this->_view->headScript()->prependFile($this->_view->baseUrl("/js/jquery/jquery-1.7.2.min.js"));
				
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

		// verificando se o formulario e o sistema permite salvar rascunho
        if ((Basico_OPController_PessoaLoginOPController::existeUsuarioLogado()) and (APPLICATION_FORM_DRAFT == true))
			//inserindo arquivo JS do rascunho			        
			$this->_view->headScript()->appendFile($this->_view->baseUrl(DEFAULT_JAVASCRIPT_JQUERY_RASCUNHO));

		// verificando ambiente
		if (Basico_OPController_UtilOPController::ambienteDesenvolvimento()) {
		    // verificando se existe usuario logado
		    if (Basico_OPController_PessoaLoginOPController::existeUsuarioLogado()) {
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
		                    ->requireModule('messagePop.ui.Error');	
    }

    /**
     * Processa os formulários da view
     * 
     * @param Zend_View $view
     * @param String $contexto
     * 
     * @return Boolean
     * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 03/04/2012
     */
    private function processaFormularios($contexto)
    {
    	// recuperando o output da view
    	$nomeOutput = Basico_OPController_OutputOPController::retornaOutputViaContextoView($contexto);

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
						$arrayFormsSubForms[$form->getName()] = $form;
						// adicionando os subformularios ao array
						$arrayFormsSubForms += $arraySubForms;
						
						// inicializando variaveis
						$permiteRascunho = false;

						// processando formularios
						Basico_OPController_TemplateOPController::processaFormularios($this->_view, $arrayFormsSubForms, $permiteRascunho, $nomeOutput);
						
						// verificando se eh pra inserir o script de inicializacao do rascunho
						if ($permiteRascunho) {
							// recuperando a url do metodo de salvar rascunho
							$urlSalvarRascunho = $this->_view->url(array('module' => 'basico', 'controller' => 'rascunho', 'action' => 'salvar'));
							
							// adicionando script para inicializacao do rascunho
							$scriptInicializacaoRascunho = "<script type='text/javascript'>initRascunho(); timer(10000,'salvarRascunho(\"{$urlSalvarRascunho}\", false, null)')</script>";
							$this->_view->scripts = array($scriptInicializacaoRascunho);
						}
					}					
				}
			}
		}
    }
}