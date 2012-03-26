<?php
/**
 * Controlador Acao Aplicacao
 * 
 * Controlador responsavel pelas acoes da aplicacao
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */

class Basico_OPController_AcaoAplicacaoOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_AcaoAplicacaoOPController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_AcaoAplicacao object
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
	 * Recupera a instancia do controlador Basico_OPController_AcaoAplicacaoOPController
	 * 
	 * @return Basico_OPController_AcaoAplicacaoOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_AcaoAplicacaoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna todas as acoes da aplicacao
	 * 
	 * @return Array|null
	 */
	public function retornaTodosObjetosAcaoAplicacao()
	{
		// retornando todas as acoes da aplicacao
		return $this->retornaTodosObjetos($this->_model);
	}

	/**
	 * Retorna todos as acoes aplicacao ativas
	 *
	 * @return Array|null
	 */
	public function retornaTodosObjetosAcaoAplicacaoAtivos()
	{
		// inicializando variaveis
		$ativo = Basico_OPController_PersistenceOPController::bdRetornaBoolean(true, true);

		// retornando todas as acoes aplicacao ativas
		return $this->retornaObjetosPorParametros($this->_model, "ativo = {$ativo}");
	}

	/**
	 * Retorna todos as acoes aplicacao ativas, via SQL
	 *
	 * @return Array|null
	 */
	public static function retornaArrayNomeModuloNomeControllerNomeAcaoAcaoAplicacaoAtivosViaSQL()
	{
		// inicializando variaveis
		$ativo = Basico_OPController_PersistenceOPController::bdRetornaBoolean(true, true);

		// montando query para retornar um array contendo todos as acoes aplicacao (nome do modulo, controlador e acao)
		$querySQL = "SELECT m.nome AS module, ap.controller, ap.action
					 FROM basico.acao_aplicacao ap
					 LEFT JOIN basico.modulo m ON (ap.id_modulo = m.id)
					 WHERE ap.ativo = {$ativo}";

		// retornando array
		return Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($querySQL);
	}

	/**
	 * Retorna todas as acoes aplicacao desativadas
	 * 
	 * @return Array|null
	 */
	public function retornaTodosObjetosAcaoAplicacaoDesativados()
	{
		// inicializando variaveis
		$ativo = Basico_OPController_PersistenceOPController::bdRetornaBoolean(false, true);
		
		// retornando todas as acoes aplicacao desativadas
		return $this->retornaObjetosPorParametros($this->_model, "ativo = {$ativo}");
	}

	/**
	 * Retorna objeto acao aplicacao da acao passada por request
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Basico_Model_AcaoAplicacao|null
	 */
	public function retornaObjetoAcaoAplicacaoPorRequest(Zend_Controller_Request_Abstract $request)
	{
		// retornando o objeto atraves do metodo retornaObjetoAcaoAplicacaoPorNomeModuloNomeControladorNomeAcao(), decupando o request
		return $this->retornaObjetoAcaoAplicacaoPorNomeModuloNomeControladorNomeAcao($request->getModuleName, $request->getControllerName, $request->getActionName);
	}

	public function retornaObjetoAcaoAplicacaoPorNomeModuloNomeControladorNomeAcao($nomeModule, $nomeController, $nomeAction)
	{
		// recuperando o id do modulo
		$idModulo = Basico_OPController_ModuloOPController::getInstance()->retornaObjetoModuloPorNome($nomeModule);

		// recuperando objeto acao aplicacao
		$objsAcaoAplicacao = $this->retornaObjetosPorParametros($this->_model, "id_modulo = {$idModulo} and controller = '{$nomeController}' and action = '{$nomeAction}'", null, 1, 0);

		// verificando se o objeto foi carregado com sucesso
		if ($objsAcaoAplicacao[0]->id)
			// retornando o objeto
			return $objsAcaoAplicacao[0];

		return null;
	}

	/**
	 * Verifica se a acao existe atraves do request
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	public function verificaExisteAcaoControladorPorRequest(Zend_Controller_Request_Abstract $request)
	{
		// recupernado o nome do controlador
		$nomeController = Basico_OPController_UtilOPController::retornaNomeClasseControladorPorRequest($request);

		// verificando se trata-se do modulo DEFAULT
		if (strpos($nomeController, 'Default_') === 0)
			// removendo o nome do modulo do nome do controlador
			$nomeController = str_replace('Default_', '', $nomeController);

		// recupernado o nome do arquivo
		$nomeArquivoController = str_replace(ucfirst($request->getModuleName()) . '_', '', $nomeController) . '.php';
		
		// recuperando o diretorio de controladores do modulo
		$caminhoControladoresModulo = Zend_Controller_Front::getInstance()->getDispatcher()->getControllerDirectory();
		$caminhoControladoresModulo = $caminhoControladoresModulo[$request->getModuleName()];

		// verificando se o arquivo existe
		if (!file_exists($caminhoControladoresModulo . CARACTER_BARRA_URL . $nomeArquivoController))
			return false;

		// carregando o arquivo via autoload
		Zend_Loader::loadFile($nomeArquivoController, Zend_Controller_Front::getInstance()->getDispatcher()->getControllerDirectory(), true);	

		// retornando se acao existe no controlador
		return (method_exists($nomeController, $request->getActionName() . 'Action'));
	}

	/**
	 * Verifica se o request esta relacionado a acao Error do controlador de erros
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	public function verificaAcaoErrorErrorControllerPorRequest(Zend_Controller_Request_Abstract $request)
	{
		// retornando resultado da verificacao
		return (($request->getModuleName() === 'default') and ($request->getControllerName() === 'error') and ($request->getActionName() === 'error'));
	}

	/**
	 * Verifica se o request esta relacionado a acao desautenticausuario do controlador de autenticacao
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	public function verificaAcaoDesautenticarUsuarioAutenticadorControllerPorRequest(Zend_Controller_Request_Abstract $request)
	{
		// retornando resultado da verificacao
		return (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'autenticador') and ($request->getActionName() === 'desautenticausuario'));
	}

	/**
	 * Salva o objeto acao aplicacao no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_AcaoAplicacao $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_AcaoAplicacao', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_ACAO_APLICACAO, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_ACAO_APLICACAO;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVA_ACAO_APLICACAO, true);
	    		$mensagemLog    = LOG_MSG_NOVA_ACAO_APLICACAO;
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
	 * @param Basico_Model_AcaoAplicacao $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_AcaoAplicacao', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_ACAO_APLICACAO, true);
	    	$mensagemLog    = LOG_MSG_DELETE_ACAO_APLICACAO;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}