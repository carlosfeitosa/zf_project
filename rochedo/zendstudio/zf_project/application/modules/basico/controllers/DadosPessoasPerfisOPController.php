<?php
/**
 * Controlador Dados Pessoas Perfis
 * 
 * Controlador responsavel pelos dados biometricos do usuario
 * 
 * @package Basico_Model_DadosPessoasPerfis
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_DadosPessoasPerfisOPController extends Basico_AbstractController_RochedoPersistentOPController
{
    /**
     * 
     * @var Basico_OPController_DadosPessoasPerfisOPController
     */
	private static $_singleton;

	/**
	 * @var Basico_Model_DadosPessoasPerfis
	 */
	private $_model;

    /**
	 * Construtor do Controlador DadosPessoasPerfis
	 * 
	 * @return Basico_Model_DadosPessoasPerfis
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
		
    	// inicializando o controlador
    	$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_DadosPessoasPerfisOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	} 
	
    /**
	 * Retorna a instancia do objeto Basico_OPController_DadosPessoasPerfisOPController
	 * 
	 * @return Basico_OPController_DadosPessoasPerfisOPController
	 */
	static public function getInstance() {
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DadosPessoasPerfisOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna a assinatura da mensagem do e-mail do sistema
	 * 
	 * @return String
	 */
	public function retornaAssinaturaMensagemEmailSistema()
	{
		// recuperando o id pessoa perfil do sistema
		$idPessoaPerfilSistema = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();
		
		// recuperando o objeto dados pessoas perfis
	    $objDadosPessoasPerfis = $this->retornaObjetosPorParametros($this->_model, "id_pessoa_perfil= {$idPessoaPerfilSistema}", null, 1, 0);
	    
	    // verificando se o objeto foi recuperado
		if (isset($objDadosPessoasPerfis[0]))
			// retornando a assinatura de e-mail do sistema
    	    return $objDadosPessoasPerfis[0]->assinaturaMensagemEmail;
    	    
    	throw new Exception(MSG_ERRO_ASSINATURA_MENSAGEM_EMAIL_SISTEMA);
	}
	
	/**
	 * Salva o objeto dados pessoas perfis no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_DadosPessoasPerfis $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_DadosPessoasPerfis', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_DADOS_PESSOAS_PERFIS, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_DADOS_PESSOAS_PERFIS;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_DADOS_PESSOAS_PERFIS, true);
	    		$mensagemLog    = LOG_MSG_NOVO_DADOS_PESSOAS_PERFIS;
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
	 * Apaga o objeto dados pessoas perfis do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_DadosPessoasPerfis $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_DadosPessoasPerfis', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_DADOS_PESSOAS_PERFIS, true);
	    	$mensagemLog    = LOG_MSG_DELETE_DADOS_PESSOAS_PERFIS;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
}