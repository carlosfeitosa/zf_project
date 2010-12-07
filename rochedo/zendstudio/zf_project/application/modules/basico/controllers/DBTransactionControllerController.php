<?php
/**
 * Controlador de Transacoes DB
 * 
 */

class Basico_DBTransactionControllerController
{
	/**
	* @var int
	*/
	protected $_transactionCount;

	/**
	 * Instância do Controlador DBTransaction
	 * 
	 * @var Basico_DBTransactionControllerController
	 */
	static private $singleton;

	/**
	 * Construtor do Controlador DBTransaction.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// inicializando contador de transacao
		self::resetaContadorTransacoes();
	}

	/**
	 * Retorna instância do Controlador DBTransaction.
	 * 
	 * @return Basico_DBTransactionControllerController
	 */
	static public function init()
	{
		// verificando singleton
		if(self::$singleton == NULL){

			// retornando singleton
			self::$singleton = new Basico_DBTransactionControllerController();
		}
		return self::$singleton;
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
		// registrando o resource do banco de dados na sessao do PHP
		Basico_UtilControllerController::registraValorSessao(SESSION_DB, $dbResource);
		
		return true;
	}
	
	/**
	 * Retorna o resource do banco de dados registrado na sessao do PHP
	 * 
	 * @return Resource
	 */
	public static function recuperaBDSessao()
	{
		// recuperando o resource do banco de dados da sessao do PHP
		return Basico_UtilControllerController::retornaValorSessao(SESSION_DB);
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
    	if (self::retornaNumeroTransacoesInicializadas() > 1)
    	
    		// decrementando o numero de transacoes inicializadas
    		return self::decrementaTransacao();
    	else if (self::retornaNumeroTransacoesInicializadas() === 1) {

	    	// recuperando o resource do banco de dados
			$dbResource = self::recuperaBDSessao();
			
			// tentando salvar a transacao do banco de dados
			try {
				$dbResource->commit();
				
				// resetando o contador de transacoes inicializadas
				return self::resetaContadorTransacoes();
			} catch (Exception $e) {
				return false;
			}	
    	} else
    		throw new Exception(MSG_ERRO_BD_TRANSACAO_COMMIT_SEM_TRANSACAO);
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