<?php
/**
 * Controlador Acoes Aplicacao x Metodos Validacao
 * 
 * Controlador responsavel pelas associacoes entre acoes da aplicacao e metodo validacao
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */

class Basico_OPController_AcaoAplicacaoAssocclMetodoValidacaoOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_AcoesAplicacaoMetodosValidacaoOPController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_AcaosAplicacaoMetodosValidacao object
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_acao_aplicacao.assoccl_metodo_validacao
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_acao_aplicacao.assoccl_metodo_validacao';
	
	/**
	 * Nome do campo id da tabela basico_acao_aplicacao.assoccl_metodo_validacao
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
	 * Inicializa o controlador Basico_OPController_AcoesAplicacaoMetodosValidacaoOPController
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
	 * Recupera a instancia do controlador Basico_OPController_AcoesAplicacaoMetodosValidacaoOPController
	 * 
	 * @return Basico_OPController_AcoesAplicacaoMetodosValidacaoOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_AcaoAplicacaoAssocclMetodoValidacaoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}