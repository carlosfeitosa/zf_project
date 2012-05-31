<?php
/**
 * Controlador Filter.
 *
 */
class Basico_OPController_FilterOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FilterOPController
	 * @var Basico_OPController_FilterOPController
	 */
	static private $_singleton;
	/**
	 * Instância do Modelo Filter.
	 * @var Basico_Model_Filter
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.filter
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.filter';

	/**
	 * Nome do campo id da tabela basico.filter
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_FilterOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FilterOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{
		// chamando inicializacao da classe pai
		parent::_init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 09/05/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador Basico_OPController_FilterOPController.
	 * 
	 * @return Basico_OPController_FilterOPController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FilterOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}