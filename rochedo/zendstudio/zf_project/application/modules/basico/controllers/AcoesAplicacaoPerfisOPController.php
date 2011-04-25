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

class Basico_OPController_AcoesAplicacaoPerfisOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_AcoesAplicacaoPerfisOPController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_AcaosAplicacaoPerfis object
	 */
	private $_model;

	/**
	 * Construtor do Controlador Acao Aplicacao
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador Basico_OPController_AcoesAplicacaoPerfisOPController
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_AcoesAplicacaoPerfisOPController
	 * 
	 * @return void
	 */
	protected function init()
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
			self::$_singleton = new Basico_OPController_AcoesAplicacaoPerfisOPController();
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
		return $this->_model->fetchAll();
	}

	public static function retornaArrayNomePerfilNomeModuloNomeControllerNomeActionTodasAcoesAplicacaoPerfisViaSQL()
	{
		// montando a consulta que vai retornar todas as acoes da aplicacao e seus vinculos com perfil
		$querySQL = "SELECT p.nome AS perfil, m.nome AS module, aa.controller, aa.action, aa.ativo
					 FROM acoes_aplicacao_perfis aap
					 LEFT JOIN perfil p ON (aap.id_perfil = p.id)
					 LEFT JOIN acao_aplicacao aa ON (aap.id_acao_aplicacao = aa.id)
					 LEFT JOIN modulo m ON (aa.id_modulo = m.id)";

		// retornando array com os resultados
		return Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($querySQL);
	}

	/**
	 * Salva o objeto acao aplicacao no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_AcoesAplicacaoPerfis $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_AcoesAplicacaoPerfis', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_ACOES_APLICACAO_PERFIS, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_ACOES_APLICACAO_PERFIS;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVA_ACOES_APLICACAO_PERFIS, true);
	    		$mensagemLog    = LOG_MSG_NOVA_ACOES_APLICACAO_PERFIS;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}

	/**
	 * Apaga o objeto acao aplicao do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_AcoesAplicacaoPerfis $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_AcoesAplicacaoPerfis', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_ACOES_APLICACAO_PERFIS, true);
	    	$mensagemLog    = LOG_MSG_DELETE_ACOES_APLICACAO_PERFIS;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}