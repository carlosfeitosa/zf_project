<?php
/**
 * Controlador FormularioElementoAssocclFilter
 * 
 * Controlador responsavel pelos Filters de FormularioElementoAssocclFilters do sistema
 * 
 * @package Basico_Model_FormularioElementoAssocclFilter
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
 * @since 05/07/2012
 */
class Basico_OPController_FormularioElementoAssocclFilterOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador FormularioElementoAssocclFilter
	 * @var Basico_OPController_FormularioElementoAssocclFilterOPController object
	 */
	protected static $_singleton;

	/**
	 * Instância do Modelo FormularioElementoAssocclFilter.
	 * @var Basico_Model_FormularioElementoAssocclFilter
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_formulario_elemento.assoccl_filter
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario_elemento.assoccl_filter';

	/**
	 * Nome do campo id da tabela basico_formulario_elemento.assoccl_filter
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_FormularioElementoAssocclFilterOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioElementoAssocclFilterOPController
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
	 * Retorna instância do Controlador FormularioElementoAssocclFilter.
	 * 
	 * @return Basico_OPController_FormularioElementoAssocclFilterOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioElementoAssocclFilterOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna os dados dos filters default do elemento pelo id do elemento passado como parametro
	 * 
	 * @param Int $idElemento - id do elemento que tera os dados dos filters retornados
	 * 
	 * @return Array - array com filters para o elemento ou um array vazio se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 12/07/2012
	 */
	public function retornaArrayDadosFiltersDefaultOrdenadoPorOrdemPorIdElemento($idElemento)
	{
		// recuperando constanteTextualAjuda
		$arrayDadosFiltersElemento = $this->_retornaArrayDadosObjetosPorParametros("id_elemento = {$idElemento}", 'ordem', null, null, array('idElemento', 'idFilter', 'idFilterGrupo', 'exclude', 'ordem'));
		
		// verificando se a ajuda foi encontrada
		if (count($arrayDadosFiltersElemento)) {
			// retornando array com os filters encontrados
			return $arrayDadosFiltersElemento;
		}
		
		// retornando array vazio
		return array();
	}
	
	/**
	 * Retorna os dados dos filters includes default do elemento pelo id do elemento passado como parametro
	 * 
	 * @param Int $idElemento - id do elemento que tera os dados dos filters retornados
	 * 
	 * @return Array - array com filters para o elemento ou um array vazio se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 12/07/2012
	 */
	public function retornaArrayDadosFiltersIncludesOrdenadoPorOrdemPorIdElemento($idElemento)
	{
		// recuperando o valor boolean false
		$booleanFalse = Basico_OPController_DBUtilOPController::retornaBooleanDB(false, true);
		
		// recuperando constanteTextualAjuda
		$arrayDadosFiltersElemento = $this->_retornaArrayDadosObjetosPorParametros("id_elemento = {$idElemento} AND remove_flag = {$booleanFalse}", 'ordem', null, null, array('idElemento', 'idFilter', 'idFilterGrupo', 'exclude', 'ordem'));
		
		// verificando se a ajuda foi encontrada
		if (count($arrayDadosFiltersElemento)) {
			// retornando array com os filters encontrados
			return $arrayDadosFiltersElemento;
		}
		
		// retornando array vazio
		return array();
	}
	
	/**
	 * Retorna os dados dos filters excludes default do elemento pelo id do elemento passado como parametro
	 * 
	 * @param Int $idElemento - id do elemento que tera os dados dos filters retornados
	 * 
	 * @return Array - array com filters default para o elemento ou um array vazio se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 12/07/2012
	 */
	public function retornaArrayDadosFiltersExcludesOrdenadoPorOrdemPorIdElemento($idElemento)
	{
		// recuperando o valor boolean false
		$booleanTrue = Basico_OPController_DBUtilOPController::retornaBooleanDB(true, true);
		
		// recuperando constanteTextualAjuda
		$arrayDadosFiltersElemento = $this->_retornaArrayDadosObjetosPorParametros("id_elemento = {$idElemento} AND remove_flag = {$booleanTrue}", 'ordem', null, null, array('idElemento', 'idFilter', 'idFilterGrupo', 'exclude', 'ordem'));
		
		// verificando se a ajuda foi encontrada
		if (count($arrayDadosFiltersElemento)) {
			// retornando array com os filters encontrados
			return $arrayDadosFiltersElemento;
		}
		
		// retornando array vazio
		return array();
	}
}