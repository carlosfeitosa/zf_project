<?php
/**
 * Controlador DB Util
 * 
 */

class Basico_DBUtilControllerController
{
	/**
	 * Checa a conexão com o banco de dados, lança um erro no caso de não conseguir conectar.
	 * @param Zend_Application $application
	 * @return void
	 */
	public static function checaConexaoBD(Zend_Application $application) 
	{
		//tentando conectar ao banco de dados
        try {	    
		    
        	$bootstrap = $application->getBootstrap();
            
        	$bootstrap->bootstrap('db')->getResource('db')->getConnection();
        	       
        }catch (Exception $e) {
            //escreve o erro na tela.
        	Basico_UtilControllerController::escreveErro(MSG_ERRO_CONEXAO_BANCO, $e->getMessage());
        	//salva o logFS do erro
            $logController = Basico_LogControllerController::init();
        	$mensagemLogFS = "EXCEPTION: " . MSG_ERRO_CONEXAO_BANCO . " MESSAGE: {$e->getMessage()} "; 
        	$logController->salvaLogFS($mensagemLogFS, LOG_PRIORITY_ERRO);
            exit;
        }
	}
	
    /**
     * Retorna o id da PessoaPefil do sistema.
     * @return Int
     */
	public static function retornaIdPessoaPerfilSistema()
	{
	    $login = new Basico_Model_Login();
	    $perfil = new Basico_Model_Perfil();
	    $pessoaPerfil = new Basico_Model_PessoaPerfil();

	    $applicationSystemLogin = APPLICATION_SYSTEM_LOGIN;
	    $applicationSystemPerfil = APPLICATION_SYSTEM_PERFIL;
	    
	    $loginSistema = $login->fetchList("login = '{$applicationSystemLogin}'", null, 1, 0);
	       
	    if (count($loginSistema) === 0)
	        throw new Exception(MSG_ERRO_USUARIO_MASTER_NAO_ENCONTRADO);
	        
        $perfilSistema = $perfil->fetchList("nome = '{$applicationSystemPerfil}'", null, 1, 0);
        
        if (count($perfilSistema) === 0)
	        throw new Exception(MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO);
	        
        $pessoaPerfilSistema = $pessoaPerfil->fetchList("id_pessoa = {$loginSistema[0]->pessoa} and id_perfil = {$perfilSistema[0]->id}", null, 1, 0);
        
        if (!$pessoaPerfilSistema[0]->id)
            throw new Exception(MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO);

        return $pessoaPerfilSistema[0]->id;
	}

	/**
	 * retorna o valor da chave primaria de um objeto
	 * @param $objeto
	 */
    public static function retornaValorIdGenericoObjeto($objeto)
    {
    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();
		// recuperando o nome do campo da chave primaria da tabela vinculada ao objeto
		$tablePrimaryKey = $tableInfo['primary'];
		$tablePrimaryKey = $tablePrimaryKey[1];
		// retornando o valor do id generico vindo do objeto
		return $objeto->$tablePrimaryKey;
    }
    
    /**
     * retorna o nome da tabela vinculada a um objeto
     * @param $objeto
     */
    public static function retornaTableNameObjeto($objeto)
    {
    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();
		// recuperando nome da tabela vinculada ao objeto
		$tableName = $tableInfo['name'];
		return $tableName;
    }
    
    /**
     * retorna o nome da chave primaria da tabela vinculada ao objeto
     * @param $objeto
     */
    public static function retornaPrimaryKeyObjeto($objeto)
    {
    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();
		// recuperando o nome do campo da chave primaria da tabela vinculada ao objeto
		$tablePrimaryKey = $tableInfo['primary'];
		// retorna o nome do campo da chave primaria
		return $tablePrimaryKey[1];
    }

    /**
     * retorna o objeto Categoria Chave Estrangeira relacionada a um objeto
     * @param object $objeto
     * @param boolean $forceCreateRelationship
     * 
     * @return null|Basico_Model_CategoriaChaveEstrangeira
     */
    public static function retornaCategoriaChaveEstrangeira($objeto, $forceCreateRelationship = false)
    {
    	// recuperando o nome da tabela vinculada ao objeto
    	$tableName = self::retornaTableNameObjeto($objeto);
		// instanciando o controlador de categorias
		$categoriaController = Basico_CategoriaControllerController::init();
		// recuperando categoria CVC
		$objCategoriaCVC = $categoriaController->retornaCategoriaCVC();

		// instanciando o modelo de categoria chave estrangeira
		$modelCategoriaChaveEstrangeira = new Basico_Model_CategoriaChaveEstrangeira();
		
		// recuperando a categoria chave estrangeira relacionada ao objeto
		$arrayCategoriasChaveEstrangeira = $modelCategoriaChaveEstrangeira->fetchList("id_categoria = {$objCategoriaCVC->id} and tabela_estrangeira = '{$tableName}'", null, 1, 0);
		
		// verificando se existe a relacao com categoria chave estrangeira
		if (isset($arrayCategoriasChaveEstrangeira[0])) {
			return $arrayCategoriasChaveEstrangeira[0];
		}
		else if ($forceCreateRelationship) {
			// instanciando controlador de rowinfo
			$controladorRowInfo = Basico_RowInfoControllerController::init();
			
			// cria relacao caso o haja o parametro para criacao de relacao
			$modelCategoriaChaveEstrangeira->categoria = $objCategoriaCVC->id;
			$modelCategoriaChaveEstrangeira->tabelaEstrangeira = $tableName;
			$modelCategoriaChaveEstrangeira->campoEstrangeiro = self::retornaPrimaryKeyObjeto($objeto);
			
			// preparando XML rowinfo
			$controladorRowInfo->prepareXml($modelCategoriaChaveEstrangeira, true);
			$modelCategoriaChaveEstrangeira->rowinfo = $controladorRowInfo->getXml();
			
			// salvando
			$modelCategoriaChaveEstrangeira->save();

			return $modelCategoriaChaveEstrangeira;
		}
		else {
			return null;
		}
    }
}