<?php
/**
 * Controlador Save
 * 
 */
require_once("CVCControllerController.php");

class Basico_SaveControllerController
{
	/**
	 * Salva e versiona um objeto atraves do controlador/modelo
	 * 
	 * O segundo parametro so deve ser diferente de null caso 
	 * Caso nao deseje salvar log, ignore os tres ultimos parametros
	 * 
	 * @param controller|object $mixed
	 * @param integer $versaoUpdate
	 * @param integer $idPessoaPerfil
	 * @param integer $idCategoriaLog
	 * @param string $mensagemLog
	 * @return true|false
	 */
	static public function save($mixed, $versaoUpdate = null, $idPessoaPerfil = null, $idCategoriaLog = null, $mensagemLog = null)
	{
		// iniciando/verificando transacao
		$transacaoInicializada = self::controlaTransacaoBD();
		
		try {			
			// descobrindo se a tupla existe no banco de dados, para o CVC funcionar
			if (!Basico_UtilControllerController::retornaIdGenericoObjeto($mixed)) {
				if (method_exists($mixed, 'save')) {
					// salvando o objeto
					$mixed->save();
					// criando log de operacoes
					if ((isset($idPessoaPerfil)) and (isset($idCategoriaLog)) and (isset($mensagemLog)))
						Basico_LogControllerController::salvarLog($idPessoaPerfil, $idCategoriaLog, $mensagemLog);
					
					$novaTupla = true;
				}
				else {
					// verificando se existe transacao iniciada
					if ($transacaoInicializada) {
						// cancelando a transacao
						self::controlaTransacaoBD(DB_ROLLBACK_TRANSACTION);
					}
						
					throw new Exception(MSG_ERRO_SAVE_NAO_ENCONTRADO);
				}
			}
			
			// recuperando o numero da ultima versao
			$ultimaVersao = Basico_CVCControllerController::retornaUltimaVersao($mixed, true);
			
			// verificando se a versao para update eh diferente da ultima versao existente no repositorio CVC
			if (isset($versaoUpdate) and ($ultimaVersao !== $versaoUpdate)) {
				// verificando se existe transacao iniciada
				if ($transacaoInicializada) {
					// cancelando a transacao
					self::controlaTransacaoBD(DB_ROLLBACK_TRANSACTION);
				}
				
				throw new Exception(MSG_ERRO_SAVE_UPDATE_VERSAO_DESATUALIZADA);
			}
	
			// verificando se o objeto deve ser versionado ou ter sua ultima versao atualizada apenas
			if ((!self::isInBlackList($mixed)) and (self::isInAtualizarVersaoList($mixed))) {
				// atualizando o objeto
				$versaoVersionamento = Basico_CVCControllerController::atualizaVersao($mixed);			
			}
			else if (!self::isInBlackList($mixed)) {
				// versionando objeto
				$versaoVersionamento = Basico_CVCControllerController::versionar($mixed);
			}
			
			// verificando se houve atualizacao da versao
			if ($ultimaVersao !== $versaoVersionamento) {
				if (method_exists($mixed, 'save')) {
					// salvando o objeto
					$mixed->save();
					// criando log de operacoes
					if ((isset($idPessoaPerfil)) and (isset($idCategoriaLog)) and (isset($mensagemLog)))
						Basico_LogControllerController::salvarLog($idPessoaPerfil, $idCategoriaLog, $mensagemLog);
				}
				else {
					// verificando se existe transacao iniciada
					if ($transacaoInicializada) {
						// cancelando a transacao
						self::controlaTransacaoBD(DB_ROLLBACK_TRANSACTION);
					}
						
					throw new Exception(MSG_ERRO_SAVE_NAO_ENCONTRADO);
				}
				
				// verificando se existe transacao iniciada
				if ($transacaoInicializada) {
					// salva a transacao
					self::controlaTransacaoBD(DB_COMMIT_TRANSACTION);
				}

				return true;
			}
			else {
				// verificando se houve insercao de nova tupla no banco de dados
				if (($novaTupla) and ($transacaoInicializada)) {
					// salvando a transacao
					self::controlaTransacaoBD(DB_COMMIT_TRANSACTION);
				}
				else if ($transacaoInicializada) {
					// cancelando a transacao
					self::controlaTransacaoBD(DB_ROLLBACK_TRANSACTION);
				}

				return false;
			}

		} catch (Exception $e) {
			// verificando se existe transacao iniciada
			if ($transacaoInicializada) {
				// cancelando a transacao
				self::controlaTransacaoBD(DB_ROLLBACK_TRANSACTION);
			}
			
			return false;
		}
	}
	
	/**
	 * verifica se o objeto esta na lista de atualizacao
	 * @param mixed $mixed
	 * 
	 * @return boolean
	 */
	static private function isInAtualizarVersaoList($mixed)
	{
		// inicializando array contendo o nome das tabelas que devem atualizar a versao apenas
		$arrayAtualizarList = array();
		
		// retornando resultado da pesquisa da tabela relacionada ao objeto dentro do array de tabelas que devem atualizar a versao apenas
		$resultadoArraySearch = array_search(Basico_UtilControllerController::retornaTableNameObjeto($mixed), $arrayAtualizarList);
		
		return (false !== array_search(Basico_UtilControllerController::retornaTableNameObjeto($mixed), $arrayAtualizarList));
	}
	
	/**
	 * verifica se o objeto esta na blacklist
	 * @param mixed $mixed
	 * 
	 * @return boolean
	 */
	static private function isInBlackList($mixed)
	{
		// inicializando array contendo o nome das tabelas que devem atualizar a versao apenas
		$arrayBlackList = array();
		
		// retornando resultado da pesquisa da tabela relacionada ao objeto dentro do array de tabelas que devem atualizar a versao apenas
		$resultadoArraySearch = array_search(Basico_UtilControllerController::retornaTableNameObjeto($mixed), $arrayBlackList);
		
		return (false !== array_search(Basico_UtilControllerController::retornaTableNameObjeto($mixed), $arrayBlackList));
	}

	/**
	 * Registra o resource do banco de dados na sessao
	 * @param resource $dbResource
	 * 
	 * @return boolean
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
	 * @return resource
	 */
	public static function recuperaBDSessao()
	{
		// recuperando o resource do banco de dados da sessao do PHP
		return Zend_Registry::get(SESSION_DB);
	}
	
    /**
     * Inicializa uma transacao no banco de dados
     * 
     * @return boolean
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
     * @return boolean
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
     * @return boolean
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
     * @return boolean
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