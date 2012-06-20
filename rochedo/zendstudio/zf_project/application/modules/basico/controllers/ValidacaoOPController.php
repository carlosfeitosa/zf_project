<?php
/**
 * Controlador Validacao
 * 
 */
class Basico_OPController_ValidacaoOPController
{
	/**
	 * 
	 */
	protected static $_singleton;
	/**
	 * Request 
	 * @var Request Object
	 */
	protected $_request;
	
    /**
     * Construtor do controlador Basico_OPController_ValidacaoOPController
     * 
     * @return void
     */
	private function __construct()
	{
		// recuperando a requisicao
		$this->_request = Zend_Controller_Front::getInstance()->getRequest();

		// inicializando o controlador
		$this->init();
	}
	
	/**
	 * Inicializa o controlador
	 * @return void
	 */
	public function _init()
	{
		return;
	}
	
	/**
	 * Retorna a instancia do controlador de validação
	 * @return Basico_OPController_ValidacaoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ValidacaoOPController();
		}
		// retornando a instancia
		return self::$_singleton;
	}
	 
}