<?php
/**
 * Controlador FormularioElementoAssocclValidator
 * 
 * Controlador responsavel pelos Validators de FormularioElementoAssocclValidators do sistema
 * 
 * @package Basico_Model_FormularioElementoAssocclValidator
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
 * @since 05/07/2012
 */
class Basico_OPController_FormularioElementoAssocclValidatorOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador FormularioElementoAssocclValidator
	 * @var Basico_OPController_FormularioElementoAssocclValidatorOPController object
	 */
	protected static $_singleton;

	/**
	 * Instância do Modelo FormularioElementoAssocclValidator.
	 * @var Basico_Model_FormularioElementoAssocclValidator
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_formulario_elemento.assoccl_Validator
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario_elemento.assoccl_Validator';

	/**
	 * Nome do campo id da tabela basico_formulario_elemento.assoccl_Validator
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_FormularioElementoAssocclValidatorOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioElementoAssocclValidatorOPController
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
	 * @since 03/05/2012
	 */
	protected function _initControllers()
	{
		// inicializando controladores utilizados por este controlador
		return;
	}
	
	/**
	 * Retorna instância do Controlador FormularioElementoAssocclValidator.
	 * 
	 * @return Basico_OPController_FormularioElementoAssocclValidatorOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioElementoAssocclValidatorOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}