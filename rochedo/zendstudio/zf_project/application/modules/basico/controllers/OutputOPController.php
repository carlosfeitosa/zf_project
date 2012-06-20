<?php
/**
 * Controlador Output
 * 
 * Controlador responsavel pelos formatos de saida de dados do sistema
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_OutputOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Output
	 * @var Basico_OPController_OutputOPController
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo Output.
	 * @var Basico_Model_Output
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.output
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.output';
	/**
	 * Nome do campo id da tabela basico.output
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Basico_OPController_OutputOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_OutputOPController
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
	 * Retorna instância do Controlador Output.
	 * 
	 * @return Basico_OPController_OutputOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_OutputOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna o nome do output conforme o contexto da view
	 * 
	 * @param String $contexto
	 * 
	 * @return String
	 */
	public static function retornaOutputViaContextoView($contexto)
	{
		// verificando o contexto
		switch ($contexto) {
			case 'ajax':
				return OUTPUT_AJAX ;
				break;
			case 'null':
				return OUTPUT_DOJO;
				break;
			default:
				return OUTPUT_DOJO;
		}
	}
}