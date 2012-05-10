<?php
/**
 * Controlador Acoes Aplicacao x Perfis
 * 
 * Controlador responsavel pelas associacoes entre acoes da aplicacao e perfil
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */

class Basico_OPController_AcaoAplicacaoAssocclPerfilOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_AcaoAplicacaoAssocclPerfilOPController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_AcaoAplicacaoAssocclPerfil object
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_acao_aplicacao.assoccl_perfil
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_acao_aplicacao.assoccl_perfil';
	
	/**
	 * Nome do campo id da tabela basico_acao_aplicacao.assoccl_perfil
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Acao Aplicacao
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_AcoesAplicacaoPerfisOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();

		return;
	}

	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 03/05/2012
	 */
	protected function initControllers()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_AcoesAplicacaoPerfisOPController
	 * 
	 * @return Basico_OPController_AcoesAplicacaoPerfisOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_AcaoAplicacaoAssocclPerfilOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna todos os objetos Acoes Aplicacao Perfis
	 * 
	 * @return Array
	 */
	public function retornaTodosObjetosAcoesAplicacaoPerfis()
	{
		// retornando acoes da aplicacao
		return $this->retornaTodosObjetos($this->_model);
	}

	public static function retornaArrayNomePerfilNomeModuloNomeControllerNomeActionTodasAcoesAplicacaoPerfisViaSQL()
	{
		// montando a consulta que vai retornar todas as acoes da aplicacao e seus vinculos com perfil
		$querySQL = "SELECT p.nome AS perfil, m.nome AS module, aa.controller, aa.action, aa.ativo
					 FROM basico_acao_aplicacao.assoccl_perfil aap
					 LEFT JOIN basico.perfil p ON (aap.id_perfil = p.id)
					 LEFT JOIN basico.acao_aplicacao aa ON (aap.id_acao_aplicacao = aa.id)
					 LEFT JOIN basico.modulo m ON (aa.id_modulo = m.id)";

		// retornando array com os resultados
		return Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($querySQL);
	}
}