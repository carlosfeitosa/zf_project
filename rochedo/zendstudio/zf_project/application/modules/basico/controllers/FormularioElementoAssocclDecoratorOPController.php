<?php
/**
 * Controlador FormularioElementoAssocclDecorator
 * 
 * Controlador responsavel pelos decorators de FormularioElementoAssocclDecorators do sistema
 * 
 * @package Basico_Model_FormularioElementoAssocclDecorator
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
 * @since 05/07/2012
 */
class Basico_OPController_FormularioElementoAssocclDecoratorOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador FormularioElementoAssocclDecorator
	 * @var Basico_OPController_FormularioElementoAssocclDecoratorOPController object
	 */
	protected static $_singleton;

	/**
	 * Instância do Modelo FormularioElementoAssocclDecorator.
	 * @var Basico_Model_FormularioElementoAssocclDecorator
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_formulario_elemento.assoccl_decorator
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario_elemento.assoccl_decorator';

	/**
	 * Nome do campo id da tabela basico_formulario_elemento.assoccl_decorator
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_FormularioElementoAssocclDecoratorOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioElementoAssocclDecoratorOPController
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
	 * Retorna instância do Controlador FormularioElementoAssocclDecorator.
	 * 
	 * @return Basico_OPController_FormularioElementoAssocclDecoratorOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioElementoAssocclDecoratorOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}