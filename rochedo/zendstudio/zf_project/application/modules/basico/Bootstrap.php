<?php
/**
 * Bootstrap do módulo Basico.
 *
 */
class Basico_Bootstrap extends Zend_Application_Module_Bootstrap
{
	/**
	 * Inicializa Autoload.
	 * @return Zend_Application_Module_Autoloader
	 */
    protected function _initAutoload()
    {   
        $autoloader = new Zend_Application_Module_Autoloader(array(
            'namespace' => 'Basico',
            'basePath'  => dirname(__FILE__),
        ));
        return $autoloader;
    }
}