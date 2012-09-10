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
	
	/**
	 * Retorna os dados dos decorators default do elemento pelo id do elemento passado como parametro
	 * 
	 * @param Int $idElemento - id do elemento que tera os dados dos decorators retornados
	 * 
	 * @return Array - array com decorators para o elemento ou um array vazio se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/08/2012
	 */
	public function retornaArrayDadosDecoratorsDefaultOrdenadoPorOrdemPorIdElemento($idElemento)
	{
		// recuperando decorators do elemento
		$arrayDadosDecoratorsElemento = $this->_retornaArrayDadosObjetosPorParametros("id_elemento = {$idElemento}", 'ordem', null, null, array('idDecorator', 'idDecoratorGrupo', 'removeFlag', 'ordem'));
		
		// verificando se os decorators foram encontrados
		if (count($arrayDadosDecoratorsElemento)) {
			// retornando array com os decorators encontrados
			return $arrayDadosDecoratorsElemento;
		}
		
		// retornando array vazio
		return array();
	}
}