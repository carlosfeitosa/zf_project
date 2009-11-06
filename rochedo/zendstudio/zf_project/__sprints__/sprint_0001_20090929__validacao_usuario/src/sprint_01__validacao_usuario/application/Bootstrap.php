<?php
defined('APPLICATION_ENVIRONMENT')  or define('APPLICATION_ENVIRONMENT', 'development');

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
    protected function _initDoctype()
    {
        $this->bootstrap('view');
        $view = $this->getResource('view');
        $view->doctype('XHTML1_STRICT');
        $view->headMeta()->appendName('description', 'A full-service website design and development company from London, the UK and Leuven, Belgium. Awesome marketing-savvy web designs and the website development that is professional, economical and laser-focused on your needs. If your business deserves no less, call on BOZA for all your website development needs!');
        $view->headMeta()->appendName('keywords', 'web design, website development, software development, web ontwikkeling, London, UK, Leuven, Brussel, Belgi‘, web design Leuven, Software development Leuven, development Leuven, Vlaams Brabant, webdevelopment');
        $view->headMeta()->appendName('author', 'BOZA web and software solutions and consultancy');
        $view->headMeta()->appendHttpEquiv('Content-Type','text/html; charset=ISO-8859-1')
        ->appendHttpEquiv('Content-Language', 'en');
        $view->headLink()->appendStylesheet('/public/default/css/global.css');
        $view->headLink()->appendStylesheet('/public/default/css/ie.css','screen', 'IE');
        $view->headScript()->appendFile('/public/default/js/jquery-1.2.6.js');
    }

    protected function _initAutoload()
    {
        $autoloader = new Zend_Application_Module_Autoloader(array(
            'namespace' => 'Default_',
            'basePath'  => dirname(__FILE__),
        ));
        return $autoloader;
    }

    protected function _initLayoutHelper()
    {
        $this->bootstrap('frontController');
        $layout = Zend_Controller_Action_HelperBroker::addHelper(
        new BOZA_Controller_Action_Helper_LayoutLoader());
    }
}

