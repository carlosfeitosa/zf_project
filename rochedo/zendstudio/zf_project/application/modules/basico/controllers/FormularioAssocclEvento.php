<?php
/**
 * Controlador FormularioAssocclEvento.
 * 
 * Responsavel pela associação entre formulario e formularioDecorator
 *
 * @author Joao Vasconcelos (jdrums2@gmail.com)
 * 
 * @uses Basico_Model_FormularioAsssocclDecorator
 * 
 * @since 10/09/2012
 * 
 */
class Basico_OPController_FormularioAssocclEvento extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioAssocclEvento
	 * @var Basico_OPController_FormularioAssocclEvento
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo formulario associado com formulario decorator.
	 * @var Basico_Model_FormularioAsssocclDecorator
	 */
	protected $_model;
	
	/**
	 * Nome da tabela
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario.assoccl_evento';

	/**
	 * Nome do campo id da tabela
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_FormularioAssocclEvento.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioAssocclEvento
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
	 * @since 05/07/2012
	 */
	protected function _initControllers()
	{
		// inicializando controladores
		return;
	}
	
	/**
	 * Retorna instância do Controlador Basico_OPController_FormularioAssocclEvento.
	 * 
	 * @return Basico_OPController_FormularioAssocclEvento
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioAssocclEvento();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna os dados dos eventos default do formulario pelo id do elemento passado como parametro
	 * 
	 * @param Int $idFormulario - id do formulario que tera os dados dos eventos retornados
	 * 
	 * @return Array - array com eventos para o formulario ou um array vazio se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/09/2012
	 */
	public function retornaArrayDadosEventosFormularioOrdenadoPorOrdemPorIdFormulario($idFormulario)
	{
		// recuperando dados dos eventos do formulario
		$arrayDadosEventosFormulario = $this->_retornaArrayDadosObjetosPorParametros("id_formulario = {$idFormulario}", 'ordem', null, null, array('idEvento', 'idAcaoEvento', 'removeFlag', 'ordem'));
		
		// verificando se o evento foi encontrado
		if (count($arrayDadosEventosFormulario)) {
			// retornando array com os eventos encontrados
			return $arrayDadosEventosFormulario;
		}
		
		// retornando array vazio
		return array();
	}
}