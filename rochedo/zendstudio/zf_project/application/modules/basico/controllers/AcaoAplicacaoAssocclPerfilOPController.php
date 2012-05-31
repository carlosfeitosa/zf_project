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
		if(self::$_singleton == null){
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
	
	/**
	 * Insere uma nova linha na tabela basico_acao_aplicacao.assoccl_perfil
	 * 
	 * @param Int $idAcaoAplicacao
	 * @param Int $idPerfil
	 * 
	 * @return void
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 21/05/2012
	 */
	public function insereAcaoAplicacaoAssocclPerfil($idAcaoAplicacao, $idPerfil)
	{
		try {
			// recuperando um novo modelo acoes aplicacao perfis
			$modeloAcoesAplicacaoPerfis = $this->_retornaNovoObjetoModelo();
	
			// setando informacoes sobre a vinculacao da nova acao com o perfil de desenvolvedor
			$modeloAcoesAplicacaoPerfis->idPerfil        = $idPerfil;
			$modeloAcoesAplicacaoPerfis->idAcaoAplicacao = $idAcaoAplicacao;
	
			// salvando a acao aplicacao assoccl perfil
			parent::_salvarObjeto($modeloAcoesAplicacaoPerfis, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVA_ACOES_APLICACAO_PERFIS, true), LOG_MSG_NOVA_ACOES_APLICACAO_PERFIS);
			
		} catch (Exception $e) {
			// lançando erro
			throw new Exception("Erro ao inserir acao aplicacao assoccl perfil: " . $e->getMessage());
		}
	}
}