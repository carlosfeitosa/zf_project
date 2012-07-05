<?php
/**
 * Controlador ValidatorGrupoAssocagGrupo
 * 
 * Controlador responsavel pelos agrupamentos dos Validators do sistema
 * 
 * @package Basico_Model_ValidatorGrupoAssocagGrupo
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
 * @since 05/07/2012
 */
class Basico_OPController_ValidatorGrupoAssocagGrupoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador ValidatorGrupoAssocagGrupo
	 * @var Basico_OPController_ValidatorGrupoAssocagGrupoOPController object
	 */
	protected static $_singleton;

	/**
	 * Instância do Modelo ValidatorGrupoAssocagGrupo.
	 * @var Basico_Model_ValidatorGrupoAssocagGrupo
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_Validator_grupo.assocag_grupo
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_validator_grupo.assocag_grupo';

	/**
	 * Nome do campo id da tabela basico_Validator_grupo.assocag_grupo
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_ValidatorGrupoAssocagGrupoOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_ValidatorGrupoAssocagGrupoOPController
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
	 * Retorna instância do Controlador ValidatorGrupoAssocagGrupo.
	 * 
	 * @return Basico_OPController_ValidatorGrupoAssocagGrupoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ValidatorGrupoAssocagGrupoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}