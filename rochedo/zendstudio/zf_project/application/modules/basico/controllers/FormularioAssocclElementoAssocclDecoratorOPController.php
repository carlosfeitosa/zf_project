<?php
/**
 * Controlador FormularioElementoFormularioElementoDecorator.
 * 
 * Responsável pela associacao dos elementos em formularios com os Decorators
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 *
 * @uses Basico_Model_FormularioAssocclElementoAssocclDecorator
 * 
 * @since 05/07/2012
 */
class Basico_OPController_FormularioAssocclElementoAssocclDecoratorOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioAssocclElementoAssocclDecoratorOPController
	 * @var Basico_OPController_FormularioAssocclElementoAssocclDecoratorOPController
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo Formulario.
	 * @var Basico_Model_FormularioAssocclElementoAssocclDecorator
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_form_assoccl_elemento.assoccl_decorator
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_form_assoccl_elemento.assoccl_decorator';

	/**
	 * Nome do campo id da tabela basico_form_assoccl_elemento.assoccl_decorator
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioAssocclElementoAssocclDecoratorOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioAssocclElementoAssocclDecoratorOPController
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
	 * Retorna instância do Controlador Basico_OPController_FormularioAssocclElementoAssocclDecoratorOPController.
	 * 
	 * @return Basico_OPController_FormularioAssocclElementoAssocclDecoratorOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioAssocclElementoAssocclDecoratorOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}