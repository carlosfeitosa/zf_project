<?php
/**
 * Controlador GrupoRascunho
 * 
 * Controlador responsavel pelos GrupoRascunhos
 * 
 * @package Basico
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 * @since 24/10/2011
 */
class Basico_OPController_FormularioRascunhoAssocagGrupoOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_GrupoRascunhoOPController
	 */
	private static $_singleton;
	
	/**
	 * Nome da tabela basico_formulario_rascunho.assocag_grupo
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario_rascunho.assocag_grupo';
	
	/**
	 * Nome do campo id da tabela basico_formulario_rascunho.assocag_grupo
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * 
	 * @var Basico_Model_GrupoRascunho
	 */
	protected $_model;
	
	/**
	 * Carrega a variavel model com um novo objeto Basico_Model_GrupoRascunho
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_GrupoRascunhoOPController 
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
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_GrupoRascunhoOPController
	 * 
	 * @return Basico_OPController_GrupoRascunhoOPController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioRascunhoAssocagGrupoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}
