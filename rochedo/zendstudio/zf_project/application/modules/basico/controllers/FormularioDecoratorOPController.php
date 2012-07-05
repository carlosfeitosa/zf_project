<?php
/**
 * Controlador FormularioDecorator
 * 
 * Controlador responsavel pelos decorators de FormularioDecorators do sistema
 * 
 * @package Basico_Model_FormularioDecorator
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
 * @since 05/07/2012
 */
class Basico_OPController_FormularioDecoratorOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador FormularioDecorator
	 * @var Basico_OPController_FormularioDecoratorOPController object
	 */
	protected static $_singleton;

	/**
	 * Instância do Modelo FormularioDecorator.
	 * @var Basico_Model_FormularioDecorator
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_formulario.decorator
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario.decorator';

	/**
	 * Nome do campo id da tabela basico_formulario.decorator
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_FormularioDecoratorOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioDecoratorOPController
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
	 * Retorna instância do Controlador FormularioDecorator.
	 * 
	 * @return Basico_OPController_FormularioDecoratorOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioDecoratorOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}