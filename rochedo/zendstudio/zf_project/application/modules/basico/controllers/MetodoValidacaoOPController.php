<?php
/**
 * Controlador Metodo validacao
 * 
 * Controlador responsavel pelos metodos de validacao
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */

class Basico_OPController_MetodoValidacaoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_MetodoValidacaoOPController
	 */
	protected static $_singleton;

	/**
	 * @var Basico_Model_MetodoValidacao object
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.metodo_validacao
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.metodo_validacao';
	/**
	 * Nome do campo id da tabela basico.metodo_validacao
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Acao Aplicacao
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_MetodoValidacaoOPController
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
	 * 
	 * @since 04/05/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_MetodoValidacaoOPController
	 * 
	 * @return Basico_OPController_MetodoValidacaoOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MetodoValidacaoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}