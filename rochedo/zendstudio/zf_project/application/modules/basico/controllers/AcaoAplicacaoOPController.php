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

class Basico_OPController_AcaoAplicacaoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do controlador Basico_OPController_AcaoAplicacaoOPController.
	 * @var Basico_OPController_AcaoAplicacaoOPController
	 */
	protected static $_singleton;
	/**
	 * Instância do modelo Basico_Model_AcaoAplicacao.
	 * @var Basico_Model_AcaoAplicacao
	 */
	protected $_model;

	/**
	 * Nome da tabela basico.acao_aplicacao
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.acao_aplicacao';
	
	/**
	 * Nome do campo id da tabela basico.acao_aplicacao
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
	 * Inicializa o controlador Basico_OPController_AcaoAplicacaoOPController
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
	 * @since 25/04/2012
	 */
	protected function _initControllers()
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
		if(self::$_singleton == null){
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
		return $this->_retornaObjetosPorParametros("ativo = {$ativo}");
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
		return $this->_retornaObjetosPorParametros("ativo = {$ativo}");
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
		// verificando se todos os parametros foram passados corretamente
		if ($nomeModule == null || $nomeController == null || $nomeAction == null)
			return null;
		
		// recuperando o id do modulo
		$idModulo = Basico_OPController_ModuloOPController::getInstance()->retornaObjetoModuloPorNome($nomeModule)->id;

		// recuperando objeto acao aplicacao
		$objsAcaoAplicacao = $this->_retornaObjetosPorParametros("id_modulo = {$idModulo} and controller = '{$nomeController}' and action = '{$nomeAction}'", null, 1, 0);

		// verificando se o objeto foi carregado com sucesso
		if (is_object($objsAcaoAplicacao))
			// retornando o objeto
			return $objsAcaoAplicacao;

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
	 * Verifica se o request esta relacionado a acao decode do controlador de tokens
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com
	 * @since 30/07/2012
	 */
	public function verificaAcaoDecodeTokenControllerPorRequest(Zend_Controller_Request_Abstract $request)
	{
		// retornando resultado da verificacao
		return (($request->getModuleName() === 'basico') and ($request->getControllerName() === 'token') and ($request->getActionName() === 'decode'));
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
	 * insere uma nova acao aplicacao ativa e retorna o id
	 * 
	 * @param Int $idModulo
	 * @param String $nomeController
	 * @param String $nomeAcao
	 * 
	 * @return Int
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 21/05/2012
	 */
	public function insereAcaoAplicacaoAtivaRetornandoId($idModulo, $nomeController, $nomeAcao)
	{
		try {
			// recuperando um novo modelo de acao aplicacao
			$modeloAcaoAplicacao = $this->_retornaNovoObjetoModelo();
	
			// setando informacoes sobre a acao
			$modeloAcaoAplicacao->idModulo   = $idModulo;
			$modeloAcaoAplicacao->controller = $nomeController;
			$modeloAcaoAplicacao->action     = $nomeAcao;
			$modeloAcaoAplicacao->ativo      = true;
	
			// salvando o acao aplicacao
			parent::_salvarObjeto($modeloAcaoAplicacao, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVA_ACAO_APLICACAO, true), LOG_MSG_NOVA_ACAO_APLICACAO);
			
			// retornando id
			return $modeloAcaoAplicacao->id;
			
		} catch (Exception $e) {
			// lançando excessão
			throw new Exception("Erro ao inserir acao aplicação: ". $e->getMessage());
		}
	}

	/**
	 * Retorna os ids de ações aplicação através do nome do módulo e nome do controlador
	 * 
	 * @param String $nomeModulo - nome do módulo
	 * @param String $nomeControlador - nome do controlador
	 * 
	 * @return Integer|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/06/2012
	 */
	public function retornaArrayIdConstantesTextuaisAcaoAplicacaoPorNomeModuloNomeControladorNomeAction($nomeModulo, $nomeControlador)
	{
		// recuperando o id do módulo através do nome
		$idModulo = Basico_OPController_ModuloOPController::getInstance()->retornaIdModuloPorNomeViaSQL($nomeModulo);

		// verificando o resultado da recuperação do id do módulo
		if ((null === $idModulo) or (null === $nomeControlador)) {
			// retornando nulo
			return null;
		}

		// recuperando o id e as constantes textuais da ação aplicacao
		$arrayResultado = $this->_retornaArrayDadosObjetosPorParametros("id_modulo = {$idModulo} AND controller = '{$nomeControlador}' AND LOWER(action) <> 'metainfo'", null, null, null, array('id', 'constanteTextual', 'constanteTextualDescricao', 'action'));

		// limpando memória
		unset($idModulo);

		// verificando o resultado da recuperação
		if (count($arrayResultado)) {
			// retornando o array de resultados
			return $arrayResultado;
		}

		// retornando nulo
		return null;
	}
}