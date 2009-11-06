<?php

class Template_Bootstrap extends Zend_Application_Module_Bootstrap
{
    protected function _initAutoload()
    {   
        $autoloader = new Zend_Application_Module_Autoloader(array(
            'namespace' => 'Template',
            'basePath'  => dirname(__FILE__),
        ));
        return $autoloader;
    }

    protected function _initView()
    {   
        $view = new Zend_View();
        $view->doctype('XHTML1_STRICT');
        $view->headTitle(APPLICATION_NAME_AND_VERSION);
        $view->headTitle()->setSeparator(' - ');
        $view->headMeta()->appendHttpEquiv('Content-Type', 'text/html; charset=utf-8');
        $view->headLink()->appendStylesheet('../public/css/global.css');        
        
        $viewRender = Zend_Controller_Action_HelperBroker::getStaticHelper('ViewRenderer');
        $viewRender->setView($view);
        
        return $view;
    }
    
}