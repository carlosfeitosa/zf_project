<?php
/**
 * Controlador de Persistencia
 * 
 */

require_once("DBUtilOPController.php");
require_once("DBTransactionOPController.php");

class Basico_OPController_PersistenceOPController
{
	/**
	 * Registra o resource do banco de dados na sessao
	 * 
	 * @param Resource $dbResource
	 * 
	 * @return Boolean
	 */
	public static function bdRegistraSessao($dbResource)
	{
		// retornando o resultado do metodo "registraSessaoBD" do controlador "Basico_OPController_DBTransactionOPController"
		return Basico_OPController_DBTransactionOPController::registraSessaoBD($dbResource);
	}
	
	/**
	 * Retorna o resource do banco de dados registrado na sessao do PHP
	 * 
	 * @return Resource
	 */
	public static function bdRecuperaBDSessao()
	{
		// retornando o resultado do metodo "recuperaBDSessao" do controlador "Basico_OPController_DBTransactionOPController"
		return Basico_OPController_DBTransactionOPController::recuperaBDSessao();
	}
	
    /**
     * Controla transacoes no banco de dados
     * 
     * @param DB_BEGIN_TRANSACTION | DB_COMMIT_TRANSACTION | DB_ROLLBACK_TRANSACTION $tipoTransacao
     * 
     * @return Boolean
     */
    public static function bdControlaTransacao($tipoTransacao = DB_BEGIN_TRANSACTION)
    {  	
    	// retornando o resultado do metodo "controlaTransacaoBD" do controlador "Basico_OPController_DBTransactionOPController"
    	return Basico_OPController_DBTransactionOPController::getInstance()->controlaTransacaoBD($tipoTransacao);
    }

  	/**
     * Retorna a versao de uma tupla
     * 
     * @param Mixed $objeto
     * @param Boolean $forceVersioning
     * 
     * @return null|Integer
     */
    public static function bdRetornaUltimaVersaoCVC($objeto, $forceVersioning = false)
    {
    	// retornando o resultado do metodo "retornaUltimaVersao" do controlador "Basico_OPController_CVCOPController"
    	return Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objeto, $forceVersioning);
    }

    /**
     * Versiona um objeto e retorna o numero da versão
     * 
     * @param objeto $objeto
     * 
     * @return Integer
     */
    public static function bdVersionarCVC($objeto)
    {
    	// retornando o resultado do metodo "versionar" do controlador "Basico_OPController_CVCOPController"
    	return Basico_OPController_CVCOPController::getInstance()->versionar($objeto);
    }

    /**
     * Atualiza a versão de um objeto ja versionado e retorna o numero da versão
     * 
     * @param object $objeto
     * 
     * @return Integer
     */
    public static function bdAtualizaVersaoCVC($objeto)
    {
    	// retornando o resultado do metodo "atualizaVersao" do controlador "Basico_OPController_CVCOPController"
    	return Basico_OPController_CVCOPController::atualizaVersao($objeto);
    }

	/**
	 * Salva e versiona um objeto atraves do controlador/modelo
	 * 
	 * O segundo parametro so deve ser diferente de null caso 
	 * Caso nao deseje salvar log, ignore os tres ultimos parametros
	 * 
	 * @param controller|object $mixed
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfil
	 * @param Integer $idCategoriaLog
	 * @param String $mensagemLog
	 * 
	 * @return True|False
	 */
	static public function bdSave($mixed, $versaoUpdate = null, $idPessoaPerfil = null, $idCategoriaLog = null, $mensagemLog = null)
	{
		// retornando o resultado do metodo "save" do controlador "Basico_OPController_DBSaveOPController"
		return Basico_OPController_DBSaveOPController::save($mixed, $versaoUpdate, $idPessoaPerfil, $idCategoriaLog, $mensagemLog);
	}

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
	static public function bdDelete($objeto, $forceCascade = false, $idPessoaPerfil = null, $idCategoriaLog = null, $mensagemLog = null)
	{
		// retornando o resultado do metodo "delete" do controlador "Basico_OPController_DBDeleteOPController"
		return Basico_OPController_DBDeleteOPController::delete($objeto, $forceCascade, $idPessoaPerfil, $idCategoriaLog, $mensagemLog);
	}
	
	 /**
     * Retorna tipo do banco de dados que está sendo utilizado
     * 
     * @return String
     */
    public static function bdRetornaPdoType()
    {	
    	// retornando o resultado do metodo "retornaPdoType" no controlador "Basico_OPController_DBUtilOPController"
    	return Basico_OPController_DBUtilOPController::retornaPdoTypeConexaoAtiva();
    }

     /**
     * Retorna o valor booleano do banco de dados que esta sendo utilizado
     * 
     * @param Boolean $boolean
     * @param Boolean $comoString
     * 
     * @return Boolean|Integer
     */
    public static function bdRetornaBoolean($boolean, $comoString = false)
    {
    	// retornando o resultado do metodo "retornaBooleanDB" no controlador "Basico_OPController_DBUtilOPController"
    	return Basico_OPController_DBUtilOPController::retornaBooleanDB($boolean, $comoString);
    }

	/**
	 * Checa a conexão com o banco de dados, lança um erro no caso de não conseguir conectar.
	 * 
	 * @param Zend_Application $application
	 * 
	 * @return void
	 */
	public static function bdChecaConexao(Zend_Application $application)
	{
		// retornando o resultado do metodo "checaConexaoBD" no controlador "Basico_OPController_DBUtilOPController"
		return Basico_OPController_DBUtilOPController::checaConexaoBD($application);
	}

    /**
     * Retorna um array contendo o resultado de uma query SQL
     * 
     * @param String $sqlQuery
     * 
     * @return Array
     */
    public static function bdRetornaArraySQLQuery($sqlQuery)
    {
    	// retornando o resultado do metodo "retornaArraySQLQuery" no controlador "Basico_OPController_DBUtilOPController"
    	return Basico_OPController_DBUtilOPController::retornaArraySQLQuery($sqlQuery);
    }

    /**
     * Executa um script de banco de dados
     * 
     * @param String $script
     * 
     * @return Boolean
     */
    public static function bdExecutaScriptSQL($script)
    {
    	// retornando o resultado do metodo "executaScriptSQL" no controlador "Basico_OPController_DBUtilOPController"
    	return Basico_OPController_DBUtilOPController::executaScriptSQL($script);
    }

	/**
	 * Retorna o valor da chave primaria de um objeto
	 * 
	 * @param object $objeto
	 * 
	 * @return mixed
	 */
    public static function bdRetornaValorIdGenericoObjeto($objeto)
    {
    	// retornando o resultado do metodo "retornaValorIdGenericoObjeto" no controlador "Basico_OPController_DBUtilOPController"
    	return Basico_OPController_DBUtilOPController::retornaValorIdGenericoObjeto($objeto);
    }

    /**
     * Retorna o nome da tabela vinculada a um objeto
     * 
     * @param object $objeto
     * 
     * @return String
     */
    public static function bdRetornaTableNameObjeto($objeto)
    {
    	// retornando o resultado do metodo "retornaTableNameObjeto" no controlador "Basico_OPController_DBUtilOPController"
    	return Basico_OPController_DBUtilOPController::retornaTableNameObjeto($objeto);
    }

    /**
     * Retorna o nome da chave primaria da tabela vinculada ao objeto
     * 
     * @param object $objeto
     * 
     * @return String
     */
    public static function bdRetornaPrimaryKeyObjeto($objeto)
    {
    	// retornando o resultado do metodo "retornaTableNameObjeto" no controlador "Basico_OPController_DBUtilOPController"
    	return Basico_OPController_DBUtilOPController::retornaPrimaryKeyObjeto($objeto);
    }

    /**
     * Retorna o nome do campo que inicia-se com id_generico
     * 
     * @param Object $objeto
     * 
     * @return String|false
     */
    public static function bdRetornaNomeCampoIdGenericoObjeto($objeto)
    {
    	// retorna o resultado do metodo "retornaNomeCampoIdGenerico" no controlador "Basico_OPController_DBUtilOPController"
    	return Basico_OPController_DBUtilOPController::retornaNomeCampoIdGenericoObjeto($objeto);
    }
   
    /**
     * Reseta o banco de dados que está sendo utilizado.
     * @return boolean
     */
    public static function bdResetaBD()
    {	
    	//retornando o resultado do metodo abaixo.
    	return Basico_OPController_DBUtilOPController::resetaBD();
    }
    
	/**
	 * Retorna um array contendo as relacoes de dependencia
	 * 
	 * @param String $nomeTabela
	 */
	public static function bdRetornaArrayDependenciasTabelaFK($nomeTabela)
	{
		// retornando o resultado do metodo "retornaArrayDependenciasTabela" no controlador "Basico_OPController_DBCheckOPController"
		return Basico_OPController_DBCheckOPController::retornaArrayDependenciasTabelaFKPorNomeTabela($nomeTabela);
	}

	/**
	 * Retorna um array contendo os ids das categorias e valores de uma tabela/id relacionados a categoria chave estrangeira
	 * 
	 * @param String $nomeTabela
	 * @param Integer $idTabela
	 * 
	 * @return Array
	 */
	public static function retornaArrayIdsCategoriaValorChaveEstrangeiraNomeTabelaId($nomeTabela, $idTabela)
	{
		// retornando o resultado do metodo "retornaArrayIdsCategoriaValorChaveEstrangeiraNomeTabelaId" no controlador "Basico_OPController_DBCheckOPController"
		return Basico_OPController_DBCheckOPController::retornaArrayIdsCategoriaValorChaveEstrangeiraPorNomeTabelaId($nomeTabela, $idTabela);
	}

    /**
     * Checa a existencia da relacao categoria chave estrangeira
     * 
     * @param integer $idCategoria
     * 
     * @return boolean
     */
    public static function bdChecaExistenciaRelacaoCategoriaChaveEstrangeira($idCategoria)
    {
    	// retornando o resultado do metodo "checaExistenciaRelacaoCategoriaChaveEstrangeira" no controlador "Basico_OPController_DBCheckOPController"
    	return Basico_OPController_DBCheckOPController::checaExistenciaRelacaoCategoriaChaveEstrangeiraPorIdCategoria($idCategoria);
    }

    /**
     * Checa a existencia de um valor em tabela estrangeira atraves da categoria
     * 
     * @param Integer $idCategoria
     * @param Mixed $valor
     * @param String $nomeTabelaOrigem
     * @param String $nomeCampoOrigem
     * @param Boolean $forceCreateRelationship
     * 
     * @return Boolean
     */
    public static function bdChecaExistenciaValorCategoriaChaveEstrangeira($idCategoria, $valor, $nomeTabelaOrigem = null, $nomeCampoOrigem = null, $forceCreateRelationship = false)
    {
    	// retornando o resultado do metodo "checaExistenciaValorCategoriaChaveEstrangeira" no controlador "Basico_OPController_DBCheckOPController"
    	return Basico_OPController_DBCheckOPController::checaExistenciaValorCategoriaChaveEstrangeira($idCategoria, $valor, $nomeTabelaOrigem, $nomeCampoOrigem, $forceCreateRelationship);
    }

     /**
     * Checa se existem registros filhos vinculados ao objeto
     * 
     * @param Object $objeto
     */
	public static function bdChecaRegistrosFilhos($objeto)
	{
		// retornando o resultado do metodo "checaRegistrosFilhos" no controlador "Basico_OPController_DBCheckOPController"
		return Basico_OPController_DBCheckOPController::checaRegistrosFilhosObjeto($objeto);
	}

	/**
	 * Checa se existem registros filhos vinculados a tabela/id atraves da classe categoriaChaveEstrangeira
	 * 
	 * @param String $nomeTabela
	 * @param Integer $valorId
	 * 
	 * @return Boolean
	 */
	public static function bdChecaRegistrosFilhosCategoriaChaveEstrangeiraTabelaId($nomeTabela, $valorId)
	{
		// retornando o resultado do metodo "checaRegistrosFilhosCategoriaChaveEstrangeira" no controlador "Basico_OPController_DBCheckOPController"
		return Basico_OPController_DBCheckOPController::checaRegistrosFilhosCategoriaChaveEstrangeiraPorNomeTabelaId($nomeTabela, $valorId);
	}

    /**
	 * Checa se existem registros filhos vinculados ao objeto atraves da classe categoriaChaveEstrangeira
	 * 
	 * @param Mixed $objeto
	 * 
	 * @return Boolean
	 */
	public static function bdChecaRegistrosFilhosCategoriaChaveEstrangeira($objeto) 
	{
		// retornando o resultado do metodo "checaRegistrosFilhosCategoriaChaveEstrangeira" no controlador "Basico_OPController_DBCheckOPController"
		return Basico_OPController_DBCheckOPController::checaRegistrosFilhosCategoriaChaveEstrangeiraPorObjeto($objeto);
	}

	/**
	 * Checa se existem registros filhos vinculado a tabela atraves de chave estrangeira (banco de dados)
	 * 
	 * @param String $nomeTabela
	 * @param Integer $idPK
	 * 
	 * @return Boolean
	 */
	public static function bdChecaRegistrosFilhosFKTabelaId($nomeTabela, $idPK)
	{
		// retornando o resultado do metodo "checaRegistrosFilhosFKTabela" no controlador "Basico_OPController_DBCheckOPController"
		return Basico_OPController_DBCheckOPController::checaRegistrosFilhosFKPorTabelaId($nomeTabela, $idPK);
	}

	 /**
     * Checa se existem registros filhos vinculados ao objeto atraves de chave estrangeira (banco de dados)
     * 
     * @param Object $objeto
     * 
     * @return Boolean
     */
	public static function bdChecaRegistosFilhosFK($objeto)
	{
		// retornando o resultado do metodo "checaRegistosFilhosFK" no controlador "Basico_OPController_DBCheckOPController"
		return Basico_OPController_DBCheckOPController::checaRegistrosFilhosFKObjeto($objeto);
	}
}