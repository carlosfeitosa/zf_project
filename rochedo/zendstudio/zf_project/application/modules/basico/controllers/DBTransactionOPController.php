<?php
/**
 * Controlador de Transacoes DB
 * 
 */

class Basico_OPController_DBTransactionOPController
{
	/**
	* @var int
	*/
	protected $_transactionCount;

	/**
	 * Instância do Controlador Basico_OPController_DBTransactionOPController
	 * 
	 * @var Basico_OPController_DBTransactionOPController
	 */
	protected static $_singleton;

	/**
	 * Construtor do controlador Basico_OPController_DBTransactionOPController.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// inicializando controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_DBTransactionOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		// inicializando contador de transacoes
		self::resetaContadorTransacoes();
	}
	
	/**
	 * Retorna instância do Controlador DBTransaction.
	 * 
	 * @return Basico_OPController_DBTransactionOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DBTransactionOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Registra o resource do banco de dados na sessao
	 * 
	 * @param Resource $dbResource
	 * 
	 * @return Boolean
	 */
	public static function registraSessaoBD($dbResource)
	{
		// inicializando variaveis
		$sessionDbAttribute = SESSION_DB;

		// cria/recuperando a sessao de banco de dados
		$session = Basico_OPController_SessionOPController::registraSessaoBD();

		// verificando se o banco de dados existe na sessao
		if ((!isset($session->$sessionDbAttribute)) or ($session->$sessionDbAttribute !== $dbResource))
			$session->$sessionDbAttribute = $dbResource;

		return true;
	}
	
	/**
	 * Retorna o resource do banco de dados registrado na sessao do PHP
	 * 
	 * @return Resource|null
	 */
	public static function recuperaBDSessao()
	{
		// inicializando variaveis
		$sessionDbAttribute = SESSION_DB;

		// cria/recuperando a sessao de banco de dados
		$session = Basico_OPController_SessionOPController::registraSessaoBD();

		// verificando se a conexão com o banco de dados existe na sessao
		if (isset($session->$sessionDbAttribute)) {
			// retornando a conexão
			return $session->$sessionDbAttribute;
		}

		return null;
	}

	/**
	 * Reseta o contador de transacoes inicializadas
	 * 
	 * @return true;
	 */
	private function resetaContadorTransacoes()
	{
		// resetando o numero de transacoes inicializadas
		$this->_transactionCount = 0;
		
		return true;
	}

	/**
	 * Incrementa o numero de transacoes inicializadas
	 * 
	 * @return true
	 */
	private function incrementaTransacao()
	{
		// incrementando o numero de transacoes ativas
		$this->_transactionCount++;
		
		return true;
	}

	/**
	 * Decrementa o numero de transacoes inicializadas
	 * 
	 * @return true
	 */
	private function decrementaTransacao()
	{
		// verificando se existe transacao inicializada
		if ($this->_transactionCount > 0) {

			// decrementando o numero de transacoes ativas
			$this->_transactionCount--;
			
			return true;
		} else
			throw new Exception(MSG_ERRO_BD_TRANSACAO_ROLLBACK_SEM_TRANSACAO);
	}

	/**
	 * Checa se existe transacao inicializada
	 * 
	 * @return Boolean
	 */
	private function checaTransacaoInicializada()
	{
		// retornando se existe transacao inicializada
		return ($this->_transactionCount > 0);
	}

	/**
	 * Retorna o numero de transacoes inicializadas
	 * 
	 * @return Integer
	 */
	private function retornaNumeroTransacoesInicializadas()
	{
		// retornando o numero de transacoes inicializadas
		return (Int) $this->_transactionCount;
	}

    /**
     * Inicializa uma transacao no banco de dados
     * 
     * @return Boolean
     */
    private function inicializaTransacaoBD()
    {
    	// verificando nao se existem transacoes inicializadas
    	if (!self::checaTransacaoInicializada()) {
    		
    		// recuperando o resource do banco de dados
			$dbResource = self::recuperaBDSessao();

			// tentando inicializar transacao do banco de dados
			try {
				$dbResource->beginTransaction();
			
			} catch (Exception $e) {
				
				return false;
			}
    	}
    	
		return self::incrementaTransacao();
    }
    
    /**
     * Salva uma transacao aberta no banco de dados
     * 
     * @return Boolean
     */
    private function salvaTransacaoBD()
    {
    	// verificando o numero de transacoes inicializadas
    	if (self::retornaNumeroTransacoesInicializadas() > 1) {  	
    		// decrementando o numero de transacoes inicializadas
    		return self::decrementaTransacao();

    	} else if (self::retornaNumeroTransacoesInicializadas() === 1) {
	    	// recuperando o resource do banco de dados
			$dbResource = self::recuperaBDSessao();
			
			// tentando salvar a transacao do banco de dados
			try {
				$dbResource->commit();
				
				// resetando o contador de transacoes inicializadas
				return self::resetaContadorTransacoes();
			} catch (Exception $e) {
				// retornando falso (não conseguiu commitar)
				return false;
			}	
    	} else {
    		// estourando excessão
    		throw new Exception(MSG_ERRO_BD_TRANSACAO_COMMIT_SEM_TRANSACAO);
    	}
    }
    
    /**
     * Cancela uma transacao aberta no banco de dados
     * 
     * @return Boolean
     */
    private function voltaTransacaoBD()
    {
    	// verificando o numero de transacoes inicializadas
    	if (self::retornaNumeroTransacoesInicializadas() > 1)
    	
			// decrementando o numero de transacoes inicializadas
    		return self::decrementaTransacao();
    	else if (self::retornaNumeroTransacoesInicializadas() === 1) {

	    	// recuperando o resource do banco de dados
			$dbResource = self::recuperaBDSessao();
			
			// tentando inicializar transacao do banco de dados
			try {
				$dbResource->rollback();
				
				return self::resetaContadorTransacoes();
			} catch (Exception $e) {
				return false;
			}
    	} else
    		throw new Exception(MSG_ERRO_BD_TRANSACAO_ROLLBACK_SEM_TRANSACAO);
    }
    
    /**
     * Controla transacoes no banco de dados
     * 
     * @param DB_BEGIN_TRANSACTION | DB_COMMIT_TRANSACTION | DB_ROLLBACK_TRANSACTION $tipoTransacao
     * 
     * @return Boolean
     */
    public function controlaTransacaoBD($tipoTransacao = DB_BEGIN_TRANSACTION)
    {
    	// verificando o tipo de operacao de transcacao a executar
    	switch ($tipoTransacao) {
    		case DB_BEGIN_TRANSACTION:
    			// inicializando transacao
    			return self::inicializaTransacaoBD();
    		case DB_COMMIT_TRANSACTION:
    			// salvando transacao
    			return self::salvaTransacaoBD();
    		case DB_ROLLBACK_TRANSACTION:
    			// voltando transacao
    			return self::voltaTransacaoBD();
    		default:
    			throw new Exception(MSG_ERRO_BD_TRANSACAO_OPERACAO_NAO_EXISTENTE);
    	}
    }
}