<?php
/**
 * Controlador DicionarioDadosAssocclFk
 * 
 * Responsável pelas DicionarioDadosAssocclFks do sistema.
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_DicionarioDadosAssocclFkdafo
 * 
 * @since 23/04/2012
 */

class Basico_OPController_DicionarioDadosAssocclFkOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Nome da tabela DicionarioDadosAssocclFk
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_dicionario_dados.assoccl_fk';

	/**
	 * Nome do campo id da tabela DicionarioDadosAssocclFk
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 *  
	 * @var Basico_OPController_DicionarioDadosAssocclFkOPController object
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_DicionarioDadosAssocclFk object
	 */
	private $_model;
		
	/**
	 * Construtor do Controlador DicionarioDadosAssocclFk
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_DicionarioDadosAssocclFkOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();

		return;
	}

	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function initControllers()
	{
		return;
	}
	
	/**
	 * Recupera a instancia do controlador Basico_OPController_DicionarioDadosAssocclFkOPController
	 * 
	 * @return Basico_OPController_DicionarioDadosAssocclFkOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DicionarioDadosAssocclFkOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}