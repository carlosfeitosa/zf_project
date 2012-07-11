<?php
/**
 * Controlador Basico_OPController_FormularioElementoValidatorOPController.
 * 
 * Responsável pelos FormularioElementoValidador do sistema
 *
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_FormularioElementoValidador
 * 
 * @since 21/03/2011
 * 
 */
class Basico_OPController_ValidatorOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioElementoValidatorOPController
	 * @var Basico_OPController_FormularioElementoValidatorOPController
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo FormularioElementoValidador.
	 * @var Basico_Model_FormularioElementoValidador
	 */
	protected $_model;

	/**
	 * Nome da tabela
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.validator';
	
	/**
	 * Nome do campo id da tabela
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador FormularioElementoValidador.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioElementoValidatorOPController
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
	 * @since 11/07/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador FormularioElementoValidador.
	 * 
	 * @return Basico_FormularioElementoValidadorController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ValidatorOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}