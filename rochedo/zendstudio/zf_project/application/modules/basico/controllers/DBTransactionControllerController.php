<?php
/**
 * Controlador de Transacoes DB
 * 
 */

class Basico_DBTransactionControllerController
{
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
		Zend_Registry::set(SESSION_DB, $dbResource);
		
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
		return Zend_Registry::get(SESSION_DB);
	}
	
    /**
     * Inicializa uma transacao no banco de dados
     * 
     * @return Boolean
     */
    private function inicializaTransacaoBD()
    {
		// recuperando o resource do banco de dados
		$dbResource = self::recuperaBDSessao();
		
		// tentando inicializar transacao do banco de dados
		try {
			$dbResource->beginTransaction();
			
			return true;
		} catch (Exception $e) {
			return false;
		}
    }
    
    /**
     * Salva uma transacao aberta no banco de dados
     * 
     * @return Boolean
     */
    private function salvaTransacaoBD()
    {
    	// recuperando o resource do banco de dados
		$dbResource = self::recuperaBDSessao();
		
		// tentando inicializar transacao do banco de dados
		try {
			$dbResource->commit();
			
			return true;
		} catch (Exception $e) {
			return false;
		}
    }
    
    /**
     * Cancela uma transacao aberta no banco de dados
     * 
     * @return Boolean
     */
    private function voltaTransacaoBD()
    {
        // recuperando o resource do banco de dados
		$dbResource = self::recuperaBDSessao();
		
		// tentando inicializar transacao do banco de dados
		try {
			$dbResource->rollback();
			
			return true;
		} catch (Exception $e) {
			return false;
		}
    }
    
    /**
     * Controla transacoes no banco de dados
     * 
     * @param DB_BEGIN_TRANSACTION | DB_COMMIT_TRANSACTION | DB_ROLLBACK_TRANSACTION $tipoTransacao
     * 
     * @return Boolean
     */
    public static function controlaTransacaoBD($tipoTransacao = DB_BEGIN_TRANSACTION)
    {
    	switch ($tipoTransacao) {
    		case DB_BEGIN_TRANSACTION:
    			return self::inicializaTransacaoBD();
    		case DB_COMMIT_TRANSACTION:
    			return self::salvaTransacaoBD();
    		case DB_ROLLBACK_TRANSACTION:
    			return self::voltaTransacaoBD();
    		default:
    			throw new Exception(MSG_ERRO_BD_TRANSACAO_OPERACAO_NAO_EXISTENTE);
    	}
    }
}