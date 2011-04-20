<?php
/**
 * Controlador DB Delete
 * 
 */

class Basico_OPController_DBDeleteOPController
{
	/**
	 * Deleta uma tupla de um objeto, mantendo as versoes existentes no CVC
	 * 
	 * @param Object $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfil
	 * @param Integer $idCategoriaLog
	 * @param String $mensagemLog
	 * 
	 * @return Boolean
	 */
	public static function delete($objeto, $forceCascade = false, $idPessoaPerfil = null, $idCategoriaLog = null, $mensagemLog = null)
	{
		// verificando se existem registros filhos
		$existemRegistrosFilhos = Basico_OPController_PersistenceOPController::bdChecaRegistrosFilhos($objeto);

		// verificando se deve deletar em cascata
		if (($existemRegistrosFilhos) and ($forceCascade))
			// deletando em cascata e retornando o resultado
			return self::deleteCascata($objeto);
		else if (!$existemRegistrosFilhos) {
			// iniciando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao();

			try {
				// apagando registro
				if (self::deleteObjectDbTable($objeto)) {

					// criando log de operacoes
					if ((isset($idPessoaPerfil)) and (isset($idCategoriaLog)) and (isset($mensagemLog)))
						Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);			
				} else {

					// voltando a transacao
					Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

					return false;
				}

				// salvando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

				return true;
			} catch (Exception $e) {
				// voltando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

				throw new Exception($e->getMessage());
			}
		} else
			throw new Exception(MSG_ERRO_DELETE_EXISTEM_FILHOS);
	}

	/**
	 * Deleta uma tupla de um objeto e deleta as tuplas relacionadas a este objeto, em cascata, 
	 * mantendo as versoes existentes no CVC
	 * 
	 * @param Object $objeto
	 * @param Integer $idPessoaPerfil
	 * @param Integer $idCategoriaLog
	 * @param String $mensagemLog
	 * 
	 * @return Boolean
	 */
	private function deleteCascata($objeto, $idPessoaPerfil = null, $idCategoriaLog = null, $mensagemLog = null)
	{
		// inicializando variaveis
		$tempReturn = false;

		// recuperando informacoes sobre o objeto
		$nomeTabelaObjeto = Basico_OPController_PersistenceOPController::bdRetornaTableNameObjeto($objeto);
		$idObjeto = $objeto->id;

		// inicializando transacao
		Basico_OPController_PersistenceOPController::bdControlaTransacao();

		try {
			// operacao de delete em cascata relacionada a chaves estrangeiras (banco de dados)
			$tempReturn = self::deleteCascataFKTabelaId($nomeTabelaObjeto, $idObjeto, $idPessoaPerfil, $idCategoriaLog, $mensagemLog);

			// verificando o resultado da operacao de delete em cascata relacionada a chaves estrangeiras (banco de dados)
			if ($tempReturn)
				// operacao de delete em cascata relacaionada com categoria chave estrangeira
				$tempReturn = self::deleteCascataCategoriaChaveEstrangeiraTabelaId($nomeTabelaObjeto, $idObjeto, $idPessoaPerfil, $idCategoriaLog, $mensagemLog);

			// verificando o resultado da operacao de delete em cascata relacaionada com categoria chave estrangeira
			if ($tempReturn)
				// salvando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
			else
				// voltando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
		} catch (Exception $e) {

			// voltando a transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
		}

		return $tempReturn;
	}

	/**
	 * Deleta uma tupla de uma tabela e as tuplas relacionadas a este objeto, em cascata, utilizando as informacoes de categoria chave estrangeira
	 * 
	 * @param String $nomeTabela
	 * @param Integer $valorId
	 * @param Integer $idPessoaPerfil
	 * @param Integer $idCategoriaLog
	 * @param String $mensagemLog
	 * 
	 * @return Boolean
	 */
	private function deleteCascataCategoriaChaveEstrangeiraTabelaId($nomeTabela, $valorId, $idPessoaPerfil = null, $idCategoriaLog = null, $mensagemLog = null)
	{
		// inicializando variaveis
		$tempReturn = false;

		// recuperando tabelas dependentes atraves de categoria chave estrangeira
		$arrayTabelasDepentendesCategoriaChaveEstrangeira = Basico_OPController_RelacaoCategoriaChaveEstrangeiraOPController::retornaArrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira();

		// recuperando ids categoria/valor categoria chave estrangeira
		$arrayIdsCategoriaValorChaveEstrangeiraObjeto = Basico_OPController_PersistenceOPController::retornaArrayIdsCategoriaValorChaveEstrangeiraNomeTabelaId($nomeTabela, $valorId);
		// transformando o array de ids categoria chave estrangeira
		$implodedStringIdsCategoriaChaveeEstrangira = implode(",", array_keys($arrayIdsCategoriaValorChaveEstrangeiraObjeto));

		// iniciando transcacao
		Basico_OPController_PersistenceOPController::bdControlaTransacao();

		try {
			// loop em cima das tabelas relacionadas (categoria chave estrangeira)
			foreach ($arrayTabelasDepentendesCategoriaChaveEstrangeira as $nomeTabelaCategoriaChaveEstrangeira => $nomeCampoTabelaCategoriaChaveEstrangeira) {
				// inicializando variaveis
				$nomeCampoId = TABLE_ID_FIELD;

				// query para localizar registro filhos
				$querySQLLocalizaRegistroFilho = "SELECT {$nomeCampoId} FROM {$nomeTabelaCategoriaChaveEstrangeira} WHERE {$nomeCampoTabelaCategoriaChaveEstrangeira} = {$valorId} AND id_categoria IN ({$implodedStringIdsCategoriaChaveeEstrangira})";

				// recuperando array de resultados
				$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($querySQLLocalizaRegistroFilho);

				// verificando se houve resultado
				if (count($arrayResultados)) {
					// recarregando array de resultados
					$arrayResultados = $arrayResultados[0];

					// verificando se existem registros filhos, relacionado ao registro recuperado, e reprocessando, recursivamente
					if (Basico_OPController_PersistenceOPController::bdChecaRegistrosFilhosFKTabelaId($nomeTabelaCategoriaChaveEstrangeira, $arrayResultados[$nomeCampoId])) {
						// chamando o mesmo metodo (deleteCascataFKTabelaId) recursivamente
						$tempReturn = self::deleteCascataCategoriaChaveEstrangeiraTabelaId($nomeTabelaCategoriaChaveEstrangeira, $arrayResultados[$nomeCampoId], $idPessoaPerfil, $idCategoriaLog, $mensagemLog);
					} else {
						// apagando o registro
						$tempReturn = self::deleteRegistroTabelaId($nomeTabelaCategoriaChaveEstrangeira, $arrayResultados[$nomeCampoId], $idPessoaPerfil, $idCategoriaLog, $mensagemLog);
					}

					// verificando o resultado da operacao de delete
					if (!$tempReturn) {

						// voltando transacao
						Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

						return false;
					}
				}
			}

			// apagando registro pai
			$tempReturn = self::deleteRegistroTabelaId($nomeTabela, $valorId, $idPessoaPerfil, $idCategoriaLog, $mensagemLog);

			// salvando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
		} catch (Exception $e) {

			// voltando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

			throw new Exception($e->getMessage());
		}

		return $tempReturn;
	}

	/**
	 * Deleta uma tupla de uma tabela e as tuplas relacionadas a este objeto, em cascata, utilizando as informacoes de chave estrangeira (banco de dados)
	 * 
	 * @param String $nomeTabela
	 * @param Integer $valorId
	 * @param Integer $idPessoaPerfil
	 * @param Integer $idCategoriaLog
	 * @param String $mensagemLog
	 * 
	 * @return Boolean
	 */
	private function deleteCascataFKTabelaId($nomeTabela, $valorId, $idPessoaPerfil = null, $idCategoriaLog = null, $mensagemLog = null)
	{
		// inicializando variaveis
		$tempReturn = false;

		// recuperando tabelas dependentes atraves de FK
		$arrayTabelasDepentendesFK = Basico_OPController_PersistenceOPController::bdRetornaArrayDependenciasTabelaFK($nomeTabela);

		// iniciando transcacao
		Basico_OPController_PersistenceOPController::bdControlaTransacao();

		try {

			// loop em cima das tabelas relacionadas (FK)
			foreach ($arrayTabelasDepentendesFK as $tabelaDependenteFK) {
				// inicializando variaveis
				$nomeCampoId       = TABLE_ID_FIELD;
				$nomeTabelaFK      = $tabelaDependenteFK[ARRAY_TABLE_DEPENDENCIES_FK_TABLE];
				$nomeCampoTabelaFK = $tabelaDependenteFK[ARRAY_TABLE_DEPENDENCIES_FK_COLUMN];

				// query para localizar registro filhos
				$querySQLLocalizaRegistroFilho = "SELECT {$nomeCampoId} FROM {$nomeTabelaFK} WHERE {$nomeCampoTabelaFK} = {$valorId}";

				// recuperando array de resultados
				$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($querySQLLocalizaRegistroFilho);

				// verificando se houve resultado
				if (count($arrayResultados)) {
					// recarregando array de resultados
					$arrayResultados = $arrayResultados[0];

					// verificando se existem registros filhos, relacionado ao registro recuperado, e reprocessando, recursivamente
					if (Basico_OPController_PersistenceOPController::bdChecaRegistrosFilhosFKTabelaId($nomeTabelaFK, $arrayResultados[$nomeCampoId])) {
						// chamando o mesmo metodo (deleteCascataFKTabelaId) recursivamente
						$tempReturn = self::deleteCascataFKTabelaId($nomeTabelaFK, $arrayResultados[$nomeCampoId], $idPessoaPerfil, $idCategoriaLog, $mensagemLog);
					} else {
						// apagando o registro
						$tempReturn = self::deleteRegistroTabelaId($nomeTabelaFK, $arrayResultados[$nomeCampoId]);
					}

					// verificando o resultado da operacao de delete
					if (!$tempReturn) {
						// voltando transacao
						Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

						return false;
					}
				}
			}

			// apagando registro pai
			$tempReturn = self::deleteRegistroTabelaId($nomeTabela, $valorId, $idPessoaPerfil, $idCategoriaLog, $mensagemLog);

			// salvando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
		} catch (Exception $e) {

			// voltando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

			throw new Exception($e->getMessage());
		}

		return $tempReturn;
	}

	/**
	 * Deleta uma tupla, atraves do nome da tabela e valor do id
	 * 
	 * @param String $nomeTabela
	 * @param Integer $valorId
	 * @param Integer $idPessoaPerfil
	 * @param Integer $idCategoriaLog
	 * @param String $mensagemLog
	 * 
	 * @return Boolean
	 */
	private function deleteRegistroTabelaId($nomeTabela, $valorId, $idPessoaPerfil = null, $idCategoriaLog = null, $mensagemLog = null)
	{
		// inicializando variaveis
		$nomeCampoId = TABLE_ID_FIELD;
		$tempReturn  = false;

		// query para apagar um registro
		$querySQLDelete = "DELETE FROM {$nomeTabela} WHERE {$nomeCampoId} = {$valorId}";

		// apagando o registro via query
		$tempReturn = Basico_OPController_PersistenceOPController::bdExecutaScriptSQL($querySQLDelete);

		// verificando se deve gerar log
		if (($tempReturn) and (isset($idPessoaPerfil)) and (isset($idCategoriaLog)) and (isset($mensagemLog)))
			Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

		return $tempReturn;
	}

	/**
	 * Apaga um objeto utilizando o delete do mapper (DbTable)
	 * 
	 * @param Object $objeto
	 * 
	 * @return true
	 */
	private function deleteObjectDbTable($objeto)
	{
		// verificando se foi passado um objeto, por parametro
		if (!is_object($objeto))
			throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO);

		// verificando se objeto possui o metodo getMapper()->delete()
		if ((method_exists($objeto, 'getMapper')) and (method_exists($objeto->getMapper(), 'delete'))) {

			// apagando o objeto
			$objeto->getMapper()->delete($objeto);

			return true;
		} else

			throw new Exception(MSG_ERRO_DELETE_METODO_NAO_ENCONTRADO);
	}
}