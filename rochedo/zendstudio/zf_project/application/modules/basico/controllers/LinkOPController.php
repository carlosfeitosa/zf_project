<?php
/**
 * Controlador Link
 * 
 * Responsavel pelos Links do usuario do sistema.
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_Link
 * 
 * @since 23/03/2011
 * 
 */
class Basico_OPController_LinkOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_LinkOPController
	 */
	private static $_singleton;

	/**
	 * 
	 * @var Basico_Model_Link
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.link
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.link';
	/**
	 * Nome do campo id da tabela basico.link
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do controlador Link
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_LinkOPController
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
	 * Inicializa Controlador Dados Pessoais.
	 * 
	 * @return Basico_OPController_LinkOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_LinkOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}