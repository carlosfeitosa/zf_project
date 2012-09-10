<?php
/**
 * Controlador FilterGrupoAssocagGrupo
 * 
 * Controlador responsavel pelos agrupamentos dos filters do sistema
 * 
 * @package Basico_Model_FilterGrupoAssocagGrupo
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
 * @since 05/07/2012
 */
class Basico_OPController_FilterGrupoAssocagGrupoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador FilterGrupoAssocagGrupo
	 * @var Basico_OPController_FilterGrupoAssocagGrupoOPController object
	 */
	protected static $_singleton;

	/**
	 * Instância do Modelo FilterGrupoAssocagGrupo.
	 * @var Basico_Model_FilterGrupoAssocagGrupo
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_filter_grupo.assocag_grupo
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_filter_grupo.assocag_grupo';

	/**
	 * Nome do campo id da tabela basico_filter_grupo.assocag_grupo
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_FilterGrupoAssocagGrupoOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FilterGrupoAssocagGrupoOPController
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
	 * Retorna instância do Controlador FilterGrupoAssocagGrupo.
	 * 
	 * @return Basico_OPController_FilterGrupoAssocagGrupoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FilterGrupoAssocagGrupoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna um array com os ids dos filters ordenados por ordem pelo id do grupo passado como parametro
	 * 
	 * @param Int $idGrupo
	 * 
	 * @return array - array com os filtros ou array vazio se nao encontrar nenhum filtro
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/08/2012
	 */
	public function retornaArrayDadosFiltersOrdenadoPorOrdemPorIdGrupo($idGrupo)
	{
		// recuperando dados dos filters do grupo
		$arrayDadosFilters = $this->_retornaArrayDadosObjetosPorParametros("id_filter_grupo = {$idGrupo}", 'ordem', null, null, array('idFilter', 'idFilterGrupoAssoc'));
		
		// verificando se foram encontrados filters
		if (count($arrayDadosFilters)) {
			// retornando filters do grupo pesquisado
			return $arrayDadosFilters;
		}
		
		// retornando array vazio
		return array();
	}
}