<?php

// INCLUDES
require_once("configs/application.php");
require_once("consts/consts.php");
require_once("modules/basico/controllers/LogController.php");
require_once("modules/basico/models/Log.php");
require_once("modules/basico/models/Util.php");

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
    public $logger;
    
    protected function _initApplication()
    {
        // instancia a classe de Log
        $this->logger = Basico_LogController::init();
                
        if ('production' != APPLICATION_ENV)
            define('APPLICATION_NAME_AND_VERSION', APPLICATION_NAME . ' ' . APPLICATION_VERSION.' ('.APPLICATION_ENV.')');
        else
            define('APPLICATION_NAME_AND_VERSION', APPLICATION_NAME . ' ' . APPLICATION_VERSION);
    }
        
    protected function _initAutoload()
    {      
        $autoloader = new Zend_Application_Module_Autoloader(array(
            'namespace' => 'Core',
            'basePath'  => dirname(__FILE__),
        ));
        return $autoloader;
    }

    protected function _initView()
    {   
        $view = new Zend_View();
        $view->addHelperPath('ZendX/JQuery/View/Helper/', 'ZendX_JQuery_View_Helper');
        $viewRenderer = new Zend_Controller_Action_Helper_ViewRenderer();
        Zend_Controller_Action_HelperBroker::addHelper($viewRenderer);
        Zend_Dojo::enableView($view);
        
        $view->dojo()->setDjConfigOption('usePlainJson', true)
        			 ->addStylesheetModule(DOJO_STYLE_SHEET_MODULE)
        			 ->addStylesheet(DOJO_STYLE_SHEET_PATH)
        			 ->setLocalPath(DOJO_LOCAL_PATH)
        			 ->addLayer('/js/default_scripts.js')
        			 //->addJavascript('Custon code Ex: paste.main.init();')
        			 ->disable();
        
        ZendX_JQuery::enableView($view);
        
        $viewRender = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRender->setView($view);
        
        return $view;
    }
    
}