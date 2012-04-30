<?php
/**
 * Controlador Acao Aplicacao
 * 
 * Controlador responsavel pelas acoes da aplicacao
 * 
 * @package Basico
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
 * 
 * @since 10/04/2012
 */

class Basico_OPController_AcaoAplicacaoAssocVisaoOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_AcaoAplicacaoAssocVisaoOPController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_AcaoAplicacaoAssocVisao object
	 */
	private $_model;

	/**
	 * Construtor do Controlador Acao Aplicacao Assoc Visao
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador Basico_OPController_AcaoAplicacaoOPController
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_AcaoAplicacaoOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_AcaoAplicacaoAssocVisaoOPController
	 * 
	 * @return Basico_OPController_AcaoAplicacaoAssocVisaoOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_AcaoAplicacaoAssocVisaoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna o objeto visao relacionado a acao aplicacao passada
	 * 
	 * @param Int $idAcaoAplicacao
	 * 
	 * @return  Int
	 * 
	 * @package Basico
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
	 * 
	 * @since 10/04/2012
	 */
	public function retornaObjetoAcaoAplicacaoAssocVisaoPorIdAcaoAplicacao($idAcaoAplicacao)
	{
		// recuperando visao
		$visao = $this->retornaObjetosPorParametros("id_acao_aplicacao = {$idAcaoAplicacao}");
				
		// verificando se visao foi recuperada
		if (count($visao) > 0)
			// retornando visao
			return $visao[0];

			
		return false;
			
	}

	/**
	 * Retorna todas as acoes da aplicacao assoc visao
	 * 
	 * @return Array|null
	 * 
	 * @package Basico
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
	 * 
	 * @since 10/04/2012 
	 */
	public function retornaTodosObjetosAcaoAplicacaoAssocVisao()
	{
		// retornando todas as acoes da aplicacao
		return $this->retornaTodosObjetos($this->_model);
	}

	/**
	 * Retorna todos as acoes aplicacao assoc visao ativas
	 *
	 * @return Array|null
	 * 
	 * @package Basico
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
	 * 
	 * @since 10/04/2012 
	 */
	public function retornaTodosObjetosAcaoAplicacaoAssocVisaoAtivos()
	{
		// inicializando variaveis
		$ativo = Basico_OPController_PersistenceOPController::bdRetornaBoolean(true, true);

		// retornando todas as acoes aplicacao ativas
		return $this->retornaObjetosPorParametros("ativo = {$ativo}");
	}

	/**
	 * Retorna todas as acoes aplicacao assoc visao desativadas
	 * 
	 * @return Array|null
	 * 
	 * @package Basico
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
	 * 
	 * @since 10/04/2012
	 */
	public function retornaTodosObjetosAcaoAplicacaoAssocVisaoDesativados()
	{
		// inicializando variaveis
		$ativo = Basico_OPController_PersistenceOPController::bdRetornaBoolean(false, true);
		
		// retornando todas as acoes aplicacao desativadas
		return $this->retornaObjetosPorParametros("ativo = {$ativo}");
	}

	/**
	 * Salva o objeto acao aplicacao assoc visao no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_AcaoAplicacaoAssocVisao $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_AcaoAplicacaoAssocVisao', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_ACAO_APLICACAO_ASSOC_VISAO, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_ACAO_APLICACAO_ASSOC_VISAO;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVA_ACAO_APLICACAO_ASSOC_VISAO, true);
	    		$mensagemLog    = LOG_MSG_NOVA_ACAO_APLICACAO_ASSOC_VISAO;
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
	 * @param Basico_Model_AcaoAplicacaoAssocVisao $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_AcaoAplicacaoAssocVisao', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_ACAO_APLICACAO_ASSOC_VISAO, true);
	    	$mensagemLog    = LOG_MSG_DELETE_ACAO_APLICACAO_ASSOC_VISAO;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}