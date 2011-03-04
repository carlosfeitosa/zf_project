<?php
/**
 * Bootstrap do módulo Basico.
 *
 */
class Basico_Bootstrap extends Zend_Application_Module_Bootstrap
{
	/**
	 * Inicializa o autoload (lazy load) do modulo
	 * 
	 * @return Zend_Application_Module_Autoloader
	 */
    protected function _initAutoload()
    {   
        $autoloader = new Zend_Application_Module_Autoloader(array(
            'namespace' => 'Basico',
            'basePath'  => dirname(__FILE__),
        ));

        // adicionando resources
        $autoloader->addResourceType('plugins', 'controllers/plugins', 'Controller_Plugin');

        // retornando autoloader
        return $autoloader;
    }

    /**
     * Inicializa os controladores
     * 
     */
    protected function _initControllers()
    {
    	// recuperando a instancia do front controller
		$frontController = Zend_Controller_Front::getInstance();

		// registrando o plugin de log de acao de controladores
		$frontController->registerPlugin(new Basico_Controller_Plugin_ActionControllerLogHandler());
		// registrando o plugin de controle de acesso de acao de controladores
		$frontController->registerPlugin(new Basico_Controller_Plugin_ActionControllerAccessControlHandler());
    }
}