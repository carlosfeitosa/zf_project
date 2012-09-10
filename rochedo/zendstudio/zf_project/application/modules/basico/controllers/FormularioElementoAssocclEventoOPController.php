<?php
/**
 * Controlador FormularioElementoAssocclEvento
 * 
 * Controlador responsavel pelos Eventos de FormularioElementoAssocclEventos do sistema
 * 
 * @package Basico_Model_FormularioElementoAssocclEvento
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
 * @since 05/09/2012
 */
class Basico_OPController_FormularioElementoAssocclEventoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador FormularioElementoAssocclEvento
	 * @var Basico_OPController_FormularioElementoAssocclEventoOPController object
	 */
	protected static $_singleton;

	/**
	 * Instância do Modelo FormularioElementoAssocclEvento.
	 * @var Basico_Model_FormularioElementoAssocclEvento
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_formulario_elemento.assoccl_evento
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario_elemento.assoccl_evento';

	/**
	 * Nome do campo id da tabela basico_formulario_elemento.assoccl_evento
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_FormularioElementoAssocclEventoOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioElementoAssocclEventoOPController
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
	 * Retorna instância do Controlador FormularioElementoAssocclEvento.
	 * 
	 * @return Basico_OPController_FormularioElementoAssocclEventoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioElementoAssocclEventoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna os dados dos eventos default do elemento pelo id do elemento passado como parametro
	 * 
	 * @param Int $idElemento - id do elemento que tera os dados dos eventos retornados
	 * 
	 * @return Array - array com eventos para o elemento ou um array vazio se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 05/09/2012
	 */
	public function retornaArrayDadosEventosDefaultOrdenadoPorOrdemPorIdElemento($idElemento)
	{
		// recuperando dados dos filters do elemento
		$arrayDadosEventosElemento = $this->_retornaArrayDadosObjetosPorParametros("id_elemento = {$idElemento}", 'ordem', null, null, array('idEvento', 'idAcaoEvento', 'removeFlag', 'ordem'));
		
		// verificando se a ajuda foi encontrada
		if (count($arrayDadosEventosElemento)) {
			// retornando array com os filters encontrados
			return $arrayDadosEventosElemento;
		}
		
		// retornando array vazio
		return array();
	}
}