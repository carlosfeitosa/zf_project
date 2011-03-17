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
        $autoloader->addResourceType(RESOURCE_TYPE_BASICO_PLUGINS, RESOURCE_PATH_BASICO_PLUGINS, RESOURCE_NAMESPACE_BASICO_PLUGINS)
                   ->addResourceType(RESOURCE_TYPE_BASICO_ABSTRACTS, RESOURCE_PATH_BASICO_ABSTRACTS, RESOURCE_NAMESPACE_BASICO_ABSTRACTS)
                   ->addResourceType(RESOURCE_TYPE_BASICO_OPCONTROLLERS, RESOURCE_PATH_BASICO_OPCONTROLLERS, RESOURCE_NAMESPACE_BASICO_OPCONTROLLERS);

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

		// setando o caminho dos action controllers
		$frontController->addControllerDirectory(APPLICATION_MODULE_PATH . "/basico/actionControllers", "basico");

		// registrando o plugin de log de acao de controladores
		$frontController->registerPlugin(new Basico_Controller_Plugin_ActionControllerLogHandler());
		// registrando o plugin de controle de acesso de acao de controladores
		$frontController->registerPlugin(new Basico_Controller_Plugin_ActionControllerAccessControlHandler());
    }
}