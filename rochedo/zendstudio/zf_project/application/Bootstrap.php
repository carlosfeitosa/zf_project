<?php

/**
 * Inclui arquivos do sistema.
 */
require_once("consts/consts.php");
require_once("configs/application.php");
require_once("modules/basico/controllers/LogOPController.php");
require_once("modules/basico/controllers/TokenOPController.php");
require_once("modules/basico/controllers/UtilOPController.php");
require_once("modules/basico/controllers/PersistenceOPController.php");
require_once("modules/basico/controllers/SessionOPController.php");

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
        try {
            // instancia a classe controladora de log
            $this->logger = Basico_OPController_LogOPController::getInstance();	        	
        } catch (Exception $e) {
            throw new Exception (MSG_ERRO_ABRIR_LOG_FS . $e->getMessage());
        }

        // instancia a classe controladora de token
        $this->tokenizer = Basico_OPController_TokenOPController::getInstance();

        // Localiza os helpers dos controllers e adiciona os paths caso eles existam
        if (file_exists(BASICO_CONTROLLER_HELPERS_PATH))
        	Zend_Controller_Action_HelperBroker::addPath(BASICO_CONTROLLER_HELPERS_PATH, 'Basico_Controller_Action_Helper');

        // registrando a instancia do banco de dados na sessao
        Basico_OPController_PersistenceOPController::bdRegistraSessao($this->getResource('db'));

        // registrando o inicio da execucao do PHP
        Basico_OPController_SessionOPController::registraInicioProcessamentoMicrosegundosPHPSessaoUsuario();
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
    	// carregando a view   
        $view = new Zend_View();

        // setando o caminho dos scripts
        $view->setScriptPath(BASICO_VIEW_SCRIPTS_PATH);

        // Localiza os helpers dos modulos e adiciona os paths caso eles existam
        if (file_exists(BASICO_VIEW_HELPERS_PATH))
            $view->addHelperPath(BASICO_VIEW_HELPERS_PATH, 'Basico_View_Helper');

        // inicializando a view
        $viewRenderer = new Zend_Controller_Action_Helper_ViewRenderer();
        Zend_Controller_Action_HelperBroker::addHelper($viewRenderer);
        Zend_Dojo::enableView($view);
        Zend_Dojo_View_Helper_Dojo::setUseDeclarative(true);
        $viewRender = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRender->setView($view);

        // retornando a view
        return $view;
    }
}