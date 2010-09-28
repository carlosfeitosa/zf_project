<?php
/**
 * Controlador DB Save
 * 
 */

class Basico_DBSaveControllerController
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
		$transacaoInicializada = Basico_PersistenceControllerController::bdControlaTransacao();
		
		try {			
			// descobrindo se a tupla existe no banco de dados, para o CVC funcionar
			if (!Basico_PersistenceControllerController::bdRetornaValorIdGenericoObjeto($mixed)) {
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
						Basico_PersistenceControllerController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
					}
						
					throw new Exception(MSG_ERRO_SAVE_METODO_NAO_ENCONTRADO);
				}
			}
			// verificando se, tratando-se de um update, foi informado a versao da tupla
			else if ((!isset($versaoUpdate)) or ($versaoUpdate <= 0)){
				
				throw new Exception(MSG_ERRO_SAVE_UPDATE_SEM_INFORMACAO_SOBRE_VERSAO);
			}
			
			// recuperando o numero da ultima versao
			$ultimaVersao = Basico_PersistenceControllerController::bdRetornaUltimaVersaoCVC($mixed, true);
			
			// verificando se a versao para update eh diferente da ultima versao existente no repositorio CVC
			if (isset($versaoUpdate) and ($ultimaVersao !== $versaoUpdate)) {
				// verificando se existe transacao iniciada
				if ($transacaoInicializada) {
					// cancelando a transacao
					Basico_PersistenceControllerController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
				}
				
				throw new Exception(MSG_ERRO_SAVE_UPDATE_VERSAO_DESATUALIZADA);
			}
	
			// verificando se o objeto deve ser versionado ou ter sua ultima versao atualizada apenas
			if ((!self::isInBlackList($mixed)) and (self::isInAtualizarVersaoList($mixed))) {
				// atualizando o objeto
				$versaoVersionamento = Basico_PersistenceControllerController::bdAtualizaVersaoCVC($mixed);			
			}
			else if (!self::isInBlackList($mixed)) {
				// versionando objeto
				$versaoVersionamento = Basico_PersistenceControllerController::bdVersionarCVC($mixed);
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
						Basico_PersistenceControllerController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
					}
						
					throw new Exception(MSG_ERRO_SAVE_NAO_ENCONTRADO);
				}
				
				// verificando se existe transacao iniciada
				if ($transacaoInicializada) {
					// salva a transacao
					Basico_PersistenceControllerController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
				}

				return true;
			}
			else {
				// verificando se houve insercao de nova tupla no banco de dados
				if (($novaTupla) and ($transacaoInicializada)) {
					// salvando a transacao
					Basico_PersistenceControllerController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
				}
				else if ($transacaoInicializada) {
					// cancelando a transacao
					Basico_PersistenceControllerController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
				}

				return false;
			}

		} catch (Exception $e) {
			// verificando se existe transacao iniciada
			if ($transacaoInicializada) {
				// cancelando a transacao
				Basico_PersistenceControllerController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
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
	private function isInAtualizarVersaoList($mixed)
	{
		// inicializando array contendo o nome das tabelas que devem atualizar a versao apenas
		$arrayAtualizarList = array();
		
		// retornando resultado da pesquisa da tabela relacionada ao objeto dentro do array de tabelas que devem atualizar a versao apenas
		return (false !== array_search(Basico_PersistenceControllerController::bdRetornaTableNameObjeto($mixed), $arrayAtualizarList));
	}
	
	/**
	 * verifica se o objeto esta na blacklist
	 * @param mixed $mixed
	 * 
	 * @return boolean
	 */
	private function isInBlackList($mixed)
	{
		// inicializando array contendo o nome das tabelas que devem atualizar a versao apenas
		$arrayBlackList = array();
		
		// retornando resultado da pesquisa da tabela relacionada ao objeto dentro do array de tabelas que devem atualizar a versao apenas
		return (false !== array_search(Basico_PersistenceControllerController::bdRetornaTableNameObjeto($mixed), $arrayBlackList));
	}
}