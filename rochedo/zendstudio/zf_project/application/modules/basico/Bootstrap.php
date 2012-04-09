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
    	// instanciando o autoloader
        $autoloader = new Zend_Application_Module_Autoloader(array(
            'namespace' => 'Basico',
            'basePath'  => dirname(__FILE__),
        ));

        // adicionando resources
        $autoloader->addResourceType(RESOURCE_TYPE_BASICO_PLUGINS, RESOURCE_PATH_BASICO_PLUGINS, RESOURCE_NAMESPACE_BASICO_PLUGINS)
                   ->addResourceType(RESOURCE_TYPE_BASICO_CONTROLLERS_ABSTRACTS, RESOURCE_PATH_BASICO_CONTROLLERS_ABSTRACTS, RESOURCE_NAMESPACE_BASICO_CONTROLLERS_ABSTRACTS)
                   ->addResourceType(RESOURCE_TYPE_BASICO_OPCONTROLLERS, RESOURCE_PATH_BASICO_OPCONTROLLERS, RESOURCE_NAMESPACE_BASICO_OPCONTROLLERS)
                   ->addResourceType(RESOURCE_TYPE_BASICO_MODELS_ABSTRACTS, RESOURCE_PATH_BASICO_MODELS_ABSTRACTS, RESOURCE_NAMESPACE_BASICO_MODELS_ABSTRACTS)
                   ->addResourceType(RESOURCE_TYPE_BASICO_MAPPERS_ABSTRACTS, RESOURCE_PATH_BASICO_MAPPERS_ABSTRACTS, RESOURCE_NAMESPACE_BASICO_MAPPERS_ABSTRACTS)
                   ->addResourceType(RESOURCE_TYPE_BASICO_MODELS_INTERFACES, RESOURCE_PATH_BASICO_MODELS_INTERFACES, RESOURCE_NAMESPACE_BASICO_MODELS_INTERFACES)
                   ->addResourceType(RESOURCE_TYPE_BASICO_MAPPERS_INTERFACES, RESOURCE_PATH_BASICO_MAPPERS_INTERFACES, RESOURCE_NAMESPACE_BASICO_MAPPERS_INTERFACES)
                   ->addResourceType(RESOURCE_TYPE_BASICO_DBTABLES_ABSTRACTS, RESOURCE_PATH_BASICO_DBTABLES_ABSTRACTS, RESOURCE_NAMESPACE_BASICO_DBTABLES_ABSTRACTS);

		// inicializando o bootstrap basico
		$this->initBootstrapBasico();

        // retornando autoloader
        return $autoloader;
    }

    /**
     * Inicializa o bootstrap
     * 
     * @return @void
     */
    private function initBootstrapBasico()
    {
    	// setando a lingua padrao do usuario
        Basico_OPController_PessoaOPController::setaLinguaUsuario(DEFAULT_SYSTEM_LANGUAGE);

        // expondo o MVC para ambiente de desenvolvimento
        if (Basico_OPController_UtilOPController::ambienteDesenvolvimento())
            define('APPLICATION_NAME_AND_VERSION', APPLICATION_NAME . ' ' . APPLICATION_VERSION . ' (' . APPLICATION_ENV . '/' . Basico_OPController_PessoaOPController::retornaLinguaUsuario() . ')');
        else
            define('APPLICATION_NAME_AND_VERSION', APPLICATION_NAME . ' ' . APPLICATION_VERSION);
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
		// registrando o plugin de controle de request
		$frontController->registerPlugin(new Basico_Controller_Plugin_ActionControllerRequestControlHandler());
		// registrando o plugin de controle de acesso de acao de controladores
		$frontController->registerPlugin(new Basico_Controller_Plugin_ActionControllerAccessControlHandler());
    }
}