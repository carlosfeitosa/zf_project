<?php
/**
 * Controlador FormularioElementoFormularioElementoFilter.
 * 
 * Responsável pela associacao dos elementos em formularios com os filters
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 *
 * @uses Basico_Model_FormularioAssocclElementoAssocclFilter
 * 
 * @since 05/07/2012
 */
class Basico_OPController_FormularioAssocclElementoAssocclFilterOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioAssocclElementoAssocclFilterOPController
	 * @var Basico_OPController_FormularioAssocclElementoAssocclFilterOPController
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo Formulario.
	 * @var Basico_Model_FormularioAssocclElementoAssocclFilter
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_form_assoccl_elemento.assoccl_filter
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_form_assoccl_elemento.assoccl_filter';

	/**
	 * Nome do campo id da tabela basico_form_assoccl_elemento.assoccl_filter
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioAssocclElementoAssocclFilterOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioAssocclElementoAssocclFilterOPController
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
	 * Retorna instância do Controlador Basico_OPController_FormularioAssocclElementoAssocclFilterOPController.
	 * 
	 * @return Basico_OPController_FormularioAssocclElementoAssocclFilterOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioAssocclElementoAssocclFilterOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}