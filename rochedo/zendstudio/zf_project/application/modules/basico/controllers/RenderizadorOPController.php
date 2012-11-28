<?php
/**
 * Controlador Renderizador
 * 
 * Controlador responsavel pela renderizacao das views do sistema
 * 
 * @package Basico
 * 
 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 * @since 27/11/2012
 */
class Basico_OPController_RenderizadorOPController
{
	/**
	 * @var Basico_OPController_RenderizadorOPController
	 */
	protected static $_singleton;

	/**
	 * Construtor do controller
	 * 
	 * @return void
	 */
	private function __construct()
	{
		
	}

	/**
	 * Inicializa o controlador Basico_OPController_RenderizadorOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_RenderizadorOPController
	 * 
	 * @return Basico_OPController_RenderizadorOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == null) {
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_RenderizadorOPController();
		}
		// retornando instancia
		return self::$_singleton;
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
    public function processaFormularios($view, $contexto)
    {
    	// percorre as variáveis e objetos contidas na view
		foreach ($view->getVars() as $key0 => $value0){

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
						Basico_OPController_TemplateOPController::processaFormularios($view, $arrayFormsSubForms, $permiteRascunho);
						
						// verificando se eh pra inserir o script de inicializacao do rascunho
						if ($permiteRascunho) {
							// recuperando a url do metodo de salvar rascunho, tokenizada					
							$urlSalvarRascunho = $view->urlEncryptModuleControllerAction('basico', 'rascunho', 'salvar');
							
							// adicionando script para inicializacao do rascunho
							$scriptInicializacaoRascunho = "<script type='text/javascript'> $(function() { initRascunho(); timer(10000,'salvarRascunho(\"{$urlSalvarRascunho}\", false, null)') });</script>";
							
							// adicionando script a view
							Basico_OPController_AcaoAplicacaoAssocVisaoOPController::adicionaScriptVisao($view, $scriptInicializacaoRascunho);
						}
						
					}				
				}
			}
		}
    }
    
	/**
	 * Inicializa o contexto HTML
	 * 
	 * @param Zend_View $view
	 * 
	 * @return void
	 * 
	 */
    public function inicializaContextoHtml(Zend_View $view)
    {
		// adicionando Jquery
		$view->headScript()->prependFile($view->baseUrl(UI_JQUERY_UI_CUSTOM_JAVASCRIPT_FILE_PATH));
		$view->headScript()->prependFile($view->baseUrl(UI_JQUERY_JAVASCRIPT_FILE_PATH));
		
		// adicionando plugin Jquery Datepicker
		$view->headScript()->appendFile($view->baseUrl(UI_JQUERY_SLIDER_ACCESS_JAVASCRIPT_FILE_PATH));
		$view->headScript()->appendFile($view->baseUrl(UI_JQUERY_DATETIMEPICKER_ADDON_JAVASCRIPT_FILE_PATH));
		
		$view->headLink()->appendStylesheet($view->baseUrl(UI_JQUERY_DATETIMEPICKER_ADDON_CSS_FILE_PATH));
		
		// adicionando favicon/shortcut icon da aplicacao
		$view->headLink()->headLink(array('rel' => 'shortcut icon',
                              					 'href' => $view->baseUrl('favicon.ico'),
                             					 'PREPEND'));
		
				
		// setando variaveis
		$applicationHttpHome = $view->urlEncrypt($view->url(array('controller'=>'index'), null, true));
		$applicationHttpImagesHome = $view->baseUrl('/images/');
		$applicationHttpCSSHome = $view->baseUrl('/css/global.css');
		$applicationHttpBaseUrl = $view->baseUrl();

		// sentando css messagePop
		$view->headLink()->appendStylesheet($view->baseUrl('/js/library/plugins/dojo/messagePop/ui/resources/Error.css'));
		
		// setando cabecalho
		$view->doctype('XHTML1_STRICT');
		$view->headTitle(APPLICATION_NAME_AND_VERSION);

		$headTitle = APPLICATION_NAME_AND_VERSION;
		// headerTitle separator
		$headTitleSeparator = ' :: ';

		$view->headTitle()->setSeparator(' :: ');

		$view->headMeta()->appendHttpEquiv('Content-Type', 'text/html; charset=utf-8');
		$view->headMeta()->appendHttpEquiv('X-UA-Compatible', 'IE=8');
		$view->headLink()->appendStylesheet($applicationHttpCSSHome);

		// adicionando arquivos javascript padrao
		$view->headScript()->appendFile($view->baseUrl(DEFAULT_BROWSER_DETECTION_JAVASCRIPT_FILE_PATH));
		$view->headScript()->appendFile($view->baseUrl(DEFAULT_JAVASCRIPT_FILE_PATH));
		$view->headScript()->appendFile($view->baseUrl(DEFAULT_AJAX_JAVASCRIPT_FILE_PATH));
		$view->headScript()->appendFile($view->baseUrl(DEFAULT_JAVASCRIPT_MASKS_FILE_PATH));
		$view->headScript()->appendFile($view->baseUrl(DEFAULT_JAVASCRIPT_MASKS_JQUERY_FILE_PATH));

		// verificando se o formulario e o sistema permite salvar rascunho
        if ((Basico_OPController_PessoaLoginOPController::existeUsuarioLogado()) and (APPLICATION_FORM_DRAFT == true))
			//inserindo arquivo JS do rascunho			        
			$view->headScript()->appendFile($view->baseUrl(DEFAULT_JAVASCRIPT_JQUERY_RASCUNHO));

		// verificando ambiente
		if (Basico_OPController_UtilOPController::ambienteDesenvolvimento()) {
		    // verificando se existe usuario logado
		    if ((Basico_OPController_PessoaLoginOPController::existeUsuarioLogado()) and (Basico_OPController_DBUtilOPController::checaBancoLevantado())) {
		    	// recuperando a descricao do perfil padrao do usuario logado na sessao
				$descricaoPerfilPadrao = Basico_OPController_PerfilOPController::retornaTraducaoPerfilPadraoUsuarioSessaoViaSQL();

				// setando o titulo da janela do navegador
				$view->headTitle("[ Perfil padrao: {$descricaoPerfilPadrao} ]");
		    }

			// recuperando o request do usuario
			$request = Basico_OPController_UtilOPController::retornaUserRequest();
		    // setando o titulo da janela do navegador
		    $view->headTitle("[ MVC: {$request->getModuleName()}/{$request->getControllerName()}/{$request->getActionName()} ]"); 
		}
    }
    
    /**
     * Inicializa o contexto padrao das views do sistema
     * 
     * @param Zend_View $view
     * 
     * @return void
     * 
     * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
     * @since 28/11/2012
     */
    public function inicializaDefault(Zend_View $view)
    {
    	// habilitando a view do dojo e jquery
		Zend_Dojo::enableView($view);
		ZendX_JQuery::enableView($view);
		
		// verificando a UI
		switch (Basico_OPController_UiOPController::DEFAULT_UI) {
			case 'DOJO':
				// usando o modo declarativo do dojo
		        Zend_Dojo_View_Helper_Dojo::setUseDeclarative(true);
			break;
		}

		// setando parametros do dojo
		$view->dojo()->setDjConfig(array('usePlainJson' => true, 'locale' => Basico_OPController_PessoaOPController::retornaLinguaUsuario(), 'parseOnLoad'=> true, 'async' => true))
		        			->addStylesheetModule(DOJO_STYLE_SHEET_MODULE)
		                    // registrando path local do dojo
		        			->setLocalPath($view->baseUrl() . DOJO_LOCAL_PATH)
		                    // registrando o path do moludo messagePop
		                    ->registerModulePath('messagePop', $view->baseUrl() . '/js/library/plugins/dojo/messagePop')
		                    ->requireModule('messagePop.ui.Error');	
    }
}