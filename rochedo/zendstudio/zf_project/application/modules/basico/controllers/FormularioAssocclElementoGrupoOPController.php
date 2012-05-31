<?php
/**
 * Controlador GrupoFormularioElemento.
 * 
 * Responsavel pelos GrupoFormularioElemento do sistema
 *
 * @author João Vasconcelos (joao.vasconcelos@rochedproject.com)
 * 
 * @uses Basico_Model_GrupoFormularioElemento
 * 
 * @since 21/03/2011
 * 
 */
class Basico_OPController_FormularioAssocclElementoGrupoOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioAssocclElementoGrupoOPController
	 * @var Basico_OPController_FormularioAssocclElementoGrupoOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo GrupoFormularioElemento.
	 * @var Basico_Model_FormularioAssocclElementoGrupo
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_formulario_assoccl_elemento.grupo
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_form_assoccl_elemento.grupo';

	/**
	 * Nome do campo id da tabela basico_form_assoccl_elemento.grupo
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioAssocclElementoGrupoOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioAssocclElementoGrupoOPController
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
	 * Retorna instância do Controlador Basico_OPController_FormularioAssocclElementoGrupoOPController.
	 * 
	 * @return Basico_OPController_FormularioAssocclElementoGrupoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioAssocclElementoGrupoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}