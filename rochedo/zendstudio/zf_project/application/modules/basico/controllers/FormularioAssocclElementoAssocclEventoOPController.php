<?php
/**
 * Controlador FormularioElementoFormularioElementoEvento.
 * 
 * Responsável pela associacao dos elementos em formularios com os eventos
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 *
 * @uses Basico_Model_FormularioAssocclElementoAssocclEvento
 * 
 * @since 05/09/2012
 */
class Basico_OPController_FormularioAssocclElementoAssocclEventoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioAssocclElementoAssocclEventoOPController
	 * @var Basico_OPController_FormularioAssocclElementoAssocclEventoOPController
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo Formulario.
	 * @var Basico_Model_FormularioAssocclElementoAssocclEvento
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_form_assoccl_elemento.assoccl_evento
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_form_assoccl_elemento.assoccl_evento';

	/**
	 * Nome do campo id da tabela basico_form_assoccl_elemento.assoccl_evento
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioAssocclElementoAssocclEventoOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioAssocclElementoAssocclEventoOPController
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
	 * Retorna instância do Controlador Basico_OPController_FormularioAssocclElementoAssocclEventoOPController.
	 * 
	 * @return Basico_OPController_FormularioAssocclElementoAssocclEventoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioAssocclElementoAssocclEventoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna os dados dos eventos da especializacao do elemento pelo id da associacao do elemento com o formulario e o id do elemento passado como parametro
	 * 
	 * @param Int $idAssocclElemento - id do assoccl elemento que tera os dados dos eventos retornados
	 * 
	 * @return Array - array com eventos do elemento ou um array vazio se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 05/09/2012
	 */
	public function retornaArrayDadosEventosEspecializacaoOrdenadoPorOrdemPorIdAssocclElemento($idAssocclElemento)
	{
		// recuperando dados da especializacao dos filters do elemento no formulario
		$arrayDadosEventosElemento = $this->_retornaArrayDadosObjetosPorParametros("id_assoccl_elemento = {$idAssocclElemento}", 'ordem', null, null, array('idEvento', 'idAcaoEvento', 'removeFlag', 'ordem'));
		
		// verificando se foram encontrados filters 
		if (count($arrayDadosEventosElemento)) {
		 	// retornando filters encontrados
			return $arrayDadosEventosElemento;
		}
		
		// retornando array vazio se não for encontrado nenhum filter
		return array();
	}
}