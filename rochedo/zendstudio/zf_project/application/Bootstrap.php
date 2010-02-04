<?php

/**
 * Inclui arquivos do sistema.
 */
require_once("configs/application.php");
require_once("consts/consts.php");
require_once("modules/basico/controllers/LogControllerController.php");
require_once("modules/basico/controllers/TokenControllerController.php");
require_once("modules/basico/models/Log.php");
require_once("modules/basico/models/Util.php");

/**
 * Bootstrap primário do sistema.
 * 
 *
 */
class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
	/**
	 * recebe a instância do controlador Log.
	 * @var Basico_LogController
	 */
    public $logger;
    
    /**
	* recebe a instância do controlador Token.
	* @var Basico_TokenController
	*/
    public $tokenizer;
    
    /**
     * Inicializa a aplicação.
     * @return void
     */
    protected function _initApplication()
    {    
        // instancia a classe controladora de log
        $this->logger = Basico_LogControllerController::init();
        // instancia a classe controladora de token
        $this->tokenizer = Basico_TokenControllerController::init();
                
        if (Basico_Model_Util::ambienteDesenvolvimento())
            define('APPLICATION_NAME_AND_VERSION', APPLICATION_NAME . ' ' . APPLICATION_VERSION.' ('.APPLICATION_ENV.')');
        else
            define('APPLICATION_NAME_AND_VERSION', APPLICATION_NAME . ' ' . APPLICATION_VERSION);
    }

    /**
     * Inicializa o Autoload do sistema.
     * @return Zend_Application_Module_Autoloader
     */
    protected function _initAutoload()
    {      
        $autoloader = new Zend_Application_Module_Autoloader(array(
            'namespace' => 'Core',
            'basePath'  => dirname(__FILE__),
        ));
        return $autoloader;
    }

    /**
     * Inicializa a camada view do sistema.
     * @return Zend_View $view
     */
    protected function _initView()
    {   
        $view = new Zend_View();
        
        // Localiza os helpers dos modulos e adiciona os paths caso eles existam
        if (file_exists(BASICO_VIEW_HELPERS_PATH))
            $view->addHelperPath(BASICO_VIEW_HELPERS_PATH, 'Basico_View_Helper');
        
        $view->addHelperPath('ZendX/JQuery/View/Helper/', 'ZendX_JQuery_View_Helper');
        $viewRenderer = new Zend_Controller_Action_Helper_ViewRenderer();
        Zend_Controller_Action_HelperBroker::addHelper($viewRenderer);
        Zend_Dojo::enableView($view);
        
        $view->dojo()->setDjConfigOption('usePlainJson', true)
        			 ->addStylesheetModule(DOJO_STYLE_SHEET_MODULE)
        			 ->addStylesheet(DOJO_STYLE_SHEET_PATH)
        			 ->setLocalPath(DOJO_LOCAL_PATH)
        			 ->addLayer(DEFAULT_JAVASCRIPT_FILE_PATH)
        			 //->addJavascript('Custon code Ex: paste.main.init();')
        			 ->disable();
        
        ZendX_JQuery::enableView($view);
        
        $viewRender = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRender->setView($view);
        
        return $view;
    }    
}