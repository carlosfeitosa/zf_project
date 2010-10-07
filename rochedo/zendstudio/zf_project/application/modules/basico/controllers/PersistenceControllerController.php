<?php
/**
 * Controlador de Persistencia
 * 
 */

// requerindo arquivos dependentes
require_once("DBUtilControllerController.php");
require_once("DBTransactionControllerController.php");
require_once("DBCheckControllerController.php");
require_once("DBSaveControllerController.php");
require_once("DBDeleteControllerController.php");
require_once("CVCControllerController.php");

class Basico_PersistenceControllerController
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
		// retornando o resultado do metodo "registraSessaoBD" do controlador "Basico_DBTransactionControllerController"
		return Basico_DBTransactionControllerController::registraSessaoBD($dbResource);
	}
	
	/**
	 * Retorna o resource do banco de dados registrado na sessao do PHP
	 * 
	 * @return Resource
	 */
	public static function bdRecuperaBDSessao()
	{
		// retornando o resultado do metodo "recuperaBDSessao" do controlador "Basico_DBTransactionControllerController"
		return Basico_DBTransactionControllerController::recuperaBDSessao();
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
    	// retornando o resultado do metodo "controlaTransacaoBD" do controlador "Basico_DBTransactionControllerController"
    	return Basico_DBTransactionControllerController::controlaTransacaoBD($tipoTransacao);
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
    	// retornando o resultado do metodo "retornaUltimaVersao" do controlador "Basico_CVCControllerController"
    	return Basico_CVCControllerController::retornaUltimaVersao($objeto, $forceVersioning);
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
    	// retornando o resultado do metodo "versionar" do controlador "Basico_CVCControllerController"
    	return Basico_CVCControllerController::versionar($objeto);
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
    	// retornando o resultado do metodo "atualizaVersao" do controlador "Basico_CVCControllerController"
    	return Basico_CVCControllerController::atualizaVersao($objeto);
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
		// retornando o resultado do metodo "save" do controlador "Basico_DBSaveControllerController"
		return Basico_DBSaveControllerController::save($mixed, $versaoUpdate, $idPessoaPerfil, $idCategoriaLog, $mensagemLog);
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
		// retornando o resultado do metodo "checaConexaoBD" no controlador "Basico_DBUtilControllerController"
		return Basico_DBUtilControllerController::checaConexaoBD($application);
	}

    /**
     * Retorna o id da PessoaPefil do sistema.
     * 
     * @return Int
     */
	public static function bdRetornaIdPessoaPerfilSistema()
	{
		// retornando o resultado do metodo "retornaIdPessoaPerfilSistema" no controlador "Basico_DBUtilControllerController"
		return Basico_DBUtilControllerController::retornaIdPessoaPerfilSistema();
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
    	// retornando o resultado do metodo "retornaValorIdGenericoObjeto" no controlador "Basico_DBUtilControllerController"
    	return Basico_DBUtilControllerController::retornaValorIdGenericoObjeto($objeto);
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
    	// retornando o resultado do metodo "retornaTableNameObjeto" no controlador "Basico_DBUtilControllerController"
    	return Basico_DBUtilControllerController::retornaTableNameObjeto($objeto);
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
    	// retornando o resultado do metodo "retornaTableNameObjeto" no controlador "Basico_DBUtilControllerController"
    	return Basico_DBUtilControllerController::retornaPrimaryKeyObjeto($objeto);
    }

    /**
     * Retorna o objeto Categoria Chave Estrangeira relacionada a um objeto
     * 
     * @param object $objeto
     * @param boolean $forceCreateRelationship
     * 
     * @return null|Basico_Model_CategoriaChaveEstrangeira
     */
    public static function bdRetornaObjetoCategoriaChaveEstrangeiraCVC($objeto, $forceCreateRelationship = false)
    {
    	// retornando o resultado do metodo "retornaCategoriaChaveEstrangeira" no controlador "Basico_DBUtilControllerController"
    	return Basico_DBUtilControllerController::retornaObjetoCategoriaChaveEstrangeiraCVC($objeto, $forceCreateRelationship);
    }
    
    /**
     * Reseta o banco de dados que está sendo utilizado.
     * @return boolean
     */
    public static function bdResetaBD()
    {	
    	//retornando o resultado do metodo abaixo.
    	return Basico_DBUtilControllerController::resetaBD();
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
    	// retornando o resultado do metodo "checaExistenciaRelacaoCategoriaChaveEstrangeira" no controlador "Basico_DBUtilControllerController"
    	return Basico_DBCheckControllerController::checaExistenciaRelacaoCategoriaChaveEstrangeira($idCategoria);
    }

    /**
     * Checa a existencia de um valor em tabela estrangeira atraves da categoria
     * 
     * @param integer $idCategoria
     * @param mixed $valor
     * 
     * @return boolean
     */
    public static function bdChecaExistenciaValorCategoriaChaveEstrangeira($idCategoria, $valor)
    {
    	// retornando o resultado do metodo "checaExistenciaValorCategoriaChaveEstrangeira" no controlador "Basico_DBUtilControllerController"
    	return Basico_DBCheckControllerController::checaExistenciaValorCategoriaChaveEstrangeira($idCategoria, $valor);
    }
}