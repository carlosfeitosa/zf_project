<?php
/**
 * Controlador DB Save
 * 
 */

class Basico_OPController_DBSaveOPController
{
	/**
	 * Salva e versiona um objeto atraves do controlador/modelo
	 * 
	 * O segundo parametro so deve ser diferente de null caso 
	 * Caso nao deseje salvar log, ignore os tres ultimos parametros
	 * 
	 * @param Controller|Object $mixed
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfil
	 * @param Integer $idCategoriaLog
	 * @param String $mensagemLog
	 * 
	 * @return Boolean
	 */
	static public function save($mixed, $versaoUpdate = null, $idPessoaPerfil = null, $idCategoriaLog = null, $mensagemLog = null)
	{
		// verificando os tipos dos parametros
		if ((!is_null($versaoUpdate)) and (!is_int($versaoUpdate)))
			throw new Exception(MSG_ERRO_TIPO_ERRADO_TIPO_INTEIRO . '($versaoUpdate)');
		if ((!is_null($versaoUpdate)) and (!is_int($idPessoaPerfil)))
			throw new Exception(MSG_ERRO_TIPO_ERRADO_TIPO_INTEIRO . '($idPessoaPerfil)');
		if ((!is_null($versaoUpdate)) and (!is_int($idCategoriaLog)))
			throw new Exception(MSG_ERRO_TIPO_ERRADO_TIPO_INTEIRO . '($idCategoriaLog)');

		// verificando se trata-se de uma atualizacao e se a linha ainda existe no banco da dados
		if ((isset($mixed->id)) and (isset($versaoUpdate)) and (!Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($mixed)))
			throw new Exception(MSG_ERRO_SAVE_UPDATE_SEM_PERSISTENCIA);

		// iniciando transacao
		$transacaoInicializada = Basico_OPController_PersistenceOPController::bdControlaTransacao();

		try {
			// descobrindo se a tupla existe no banco de dados, para o CVC funcionar
			if (!Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($mixed)) {
				// verificando se o objeto possui atributos de sobrecarga de valores (data)
				if (property_exists($mixed, PROPRIEDADE_DATAHORA_ULTIMA_ATUALIZACAO))
					$mixed->PROPRIEDADE_DATAHORA_ULTIMA_ATUALIZACAO = Basico_OPController_UtilOPController::retornaDateTimeAtual();

				// salvando o objeto
				if (self::saveObjectDbTable($mixed)) {

					// criando log de operacoes
					if ((isset($idPessoaPerfil)) and (isset($idCategoriaLog)) and (isset($mensagemLog)))
						Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

					$novaTupla = true;
				}
				else {
					// verificando se existe transacao iniciada
					if ($transacaoInicializada) {
						// cancelando a transacao
						$transacaoInicializada = !Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
					}

					throw new Exception(MSG_ERRO_SAVE_METODO_NAO_ENCONTRADO);
				}
			}
			// verificando se, tratando-se de um update, foi informado a versao da tupla
			else if ((!isset($versaoUpdate)) or ($versaoUpdate <= 0)){
				throw new Exception(MSG_ERRO_SAVE_UPDATE_SEM_INFORMACAO_SOBRE_VERSAO);
			}

			// recuperando o numero da ultima versao
			$ultimaVersao = Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($mixed, true);

			// verificando se a versao para update eh diferente da ultima versao existente no repositorio CVC
			if (isset($versaoUpdate) and ($ultimaVersao !== $versaoUpdate)) {
				// verificando se existe transacao iniciada
				if ($transacaoInicializada) {
					// cancelando a transacao
					$transacaoInicializada = !Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
				}

				// verificando se o sistema pode solicitar ao usuario que ele mesmo resolva o conflito de versoes
				if (APPLICATION_CVC_USER_RESOLVE_CONFLICT) {
					// montando parametros para o resolvedor de conflitos
					$nomeObjetoEmConflito   = get_class($mixed);
					$idObjetoEmConflito     = Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($mixed);
					$versaoObjetoEmConflito = $versaoUpdate;
					$urlUltimoRequest       = Basico_OPController_UtilOPController::codificaBarrasUrl(Basico_OPController_SessionOPController::retornaUltimaUrlPoolRequests());

					// montando string da url para redirecionamento
					$urlResolvedorConflitoVersaoObjeto = Basico_OPController_UtilOPController::retornaBaseUrl() . "/basico/cvc/resolveconflitoversaoobjeto/nomeObjetoEmConflito/{$nomeObjetoEmConflito}/idObjetoEmConflito/{$idObjetoEmConflito}/versaoObjetoEmConflito/{$versaoObjetoEmConflito}/urlUltimoRequest/{$urlUltimoRequest}";

					// criando token da url para redirecionamento
					$urlResolvedorConflitoVersaoObjetoTokenizado = Basico_OPController_TokenOPController::getInstance()->gerarTokenPorUrl($urlResolvedorConflitoVersaoObjeto);
					// retirando o base url da url do token
					$urlResolvedorConflitoVersaoObjetoTokenizado = Basico_OPController_UtilOPController::removeBaseUrl($urlResolvedorConflitoVersaoObjetoTokenizado);

					// redirecionando para a acao de resolucao de conflitos
					Basico_OPController_UtilOPController::redirecionaUsuarioParaAction($urlResolvedorConflitoVersaoObjetoTokenizado);

					return false;
				} else {
					// estourando excecao sobre conflito de versao (versao para update diferente da versao do banco de dados)
					throw new Exception(MSG_ERRO_SAVE_UPDATE_VERSAO_DESATUALIZADA);
				}
			}

			// verificando se o objeto deve ser versionado ou ter sua ultima versao atualizada apenas
			if ((!self::isInBlackList($mixed)) and (self::isInAtualizarVersaoList($mixed))) {
				// atualizando o objeto
				$versaoVersionamento = Basico_OPController_PersistenceOPController::bdAtualizaVersaoCVC($mixed);			
			}
			else if (!self::isInBlackList($mixed)) {
				// versionando objeto
				$versaoVersionamento = Basico_OPController_PersistenceOPController::bdVersionarCVC($mixed);
			}

			// verificando se houve atualizacao da versao
			if ($ultimaVersao !== $versaoVersionamento) {
				if (self::saveObjectDbTable($mixed)) {

					// criando log de operacoes
					if ((isset($idPessoaPerfil)) and (isset($idCategoriaLog)) and (isset($mensagemLog)))
						Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);
				}
				else {
					// verificando se existe transacao iniciada
					if ($transacaoInicializada) {
						// cancelando a transacao
						$transacaoInicializada = !Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
					}

					throw new Exception(MSG_ERRO_SAVE_NAO_ENCONTRADO);
				}

				// verificando se existe transacao iniciada
				if ($transacaoInicializada) {
					// salva a transacao
					$transacaoInicializada = !Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
				}

				return true;
			}
			else {
				// verificando se houve insercao de nova tupla no banco de dados
				if (isset($novaTupla) and ($novaTupla) and ($transacaoInicializada)) {
					// salvando a transacao
					$transacaoInicializada = !Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
				}
				else if ($transacaoInicializada) {
					// cancelando a transacao
					$transacaoInicializada = !Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
				}

				return false;
			}

		} catch (Exception $e) {
			// verificando se existe transacao iniciada
			if ($transacaoInicializada) {
				// cancelando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
			}

			throw new Exception($e->getMessage());

			return false;
		}
	}

	/**
	 * Salva um objeto utilizando o save do mapper (DbTable)
	 * 
	 * @param Object $objeto
	 * 
	 * @return true
	 */
	private static function saveObjectDbTable($objeto)
	{
		// verificando se foi passado um objeto, por parametro
		if (!is_object($objeto))
			throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO);

		// verificando se objeto possui o metodo getMapper()->save()
		if ((method_exists($objeto, 'getMapper')) and (method_exists($objeto->getMapper(), 'save'))) {
			
			// salvando o objeto
			$objeto->getMapper()->save($objeto);

			return true;
		} else

			throw new Exception(MSG_ERRO_SAVE_METODO_NAO_ENCONTRADO);
	}

	/**
	 * Verifica se o objeto esta na lista de atualizacao
	 * 
	 * @param Mixed $mixed
	 * 
	 * @return Boolean
	 */
	private static function isInAtualizarVersaoList($mixed)
	{
		// inicializando array contendo o nome das tabelas que devem atualizar a versao apenas
		$arrayAtualizarList = array();
		
		// retornando resultado da pesquisa da tabela relacionada ao objeto dentro do array de tabelas que devem atualizar a versao apenas
		return (false !== array_search(Basico_OPController_PersistenceOPController::bdRetornaTableNameObjeto($mixed), $arrayAtualizarList));
	}
	
	/**
	 * Verifica se o objeto esta na blacklist
	 * 
	 * @param Mixed $mixed
	 * 
	 * @return Boolean
	 */
	private static function isInBlackList($mixed)
	{
		// inicializando array contendo o nome das tabelas que devem atualizar a versao apenas
		$arrayBlackList = array();
		
		// retornando resultado da pesquisa da tabela relacionada ao objeto dentro do array de tabelas que devem atualizar a versao apenas
		return (false !== array_search(Basico_OPController_PersistenceOPController::bdRetornaTableNameObjeto($mixed), $arrayBlackList));
	}
}