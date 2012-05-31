<?php
/**
 * Controlador SequenciaFormulario
 * 
 * Controlador responsavel pelos SequenciaFormularios
 * 
 * @package Basico
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 * @since 24/10/2011
 */
class Basico_OPController_SequenciaOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_SequenciaFormularioOPController
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_SequenciaFormulario
	 */
	protected $_model;
	
	/**
	 * Carrega a variavel model com um novo objeto Basico_Model_SequenciaFormulario
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_SequenciaFormularioOPController 
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
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_SequenciaFormularioOPController
	 * 
	 * @return Basico_OPController_SequenciaFormularioOPController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_SequenciaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}
