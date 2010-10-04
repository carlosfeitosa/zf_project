<?php
/**
 * Controlador DB Util
 * 
 */

class Basico_DBUtilControllerController
{
	/**
	 * Checa a conexão com o banco de dados, lança um erro no caso de não conseguir conectar.
	 * 
	 * @param Zend_Application $application
	 * 
	 * @return void
	 */
	public static function checaConexaoBD(Zend_Application $application) 
	{
        try {	    
		    // recuperando o bootstrap
        	$bootstrap = $application->getBootstrap();
            
        	// recuperando a conexao
        	$bootstrap->bootstrap('db')->getResource('db')->getConnection();
        	       
		} catch (Exception $e) {
            // escreve o erro na tela.
        	Basico_UtilControllerController::escreveErro(MSG_ERRO_CONEXAO_BANCO, $e->getMessage());
        	// salva o logFS do erro
            $logController = Basico_LogControllerController::init();
        	$mensagemLogFS = "EXCEPTION: " . MSG_ERRO_CONEXAO_BANCO . " MESSAGE: {$e->getMessage()} "; 
        	$logController->salvaLogFS($mensagemLogFS, LOG_PRIORITY_ERRO);
            exit;
        }
	}
	
    /**
     * Retorna o id da PessoaPefil do sistema.
     * 
     * @return Int
     */
	public static function retornaIdPessoaPerfilSistema()
	{
		// instanciando modelos
	    $modelLogin = new Basico_Model_Login();
	    $modelPerfil = new Basico_Model_Perfil();
	    $modelPessoaPerfil = new Basico_Model_PessoaPerfil();

	    // recuperando login do sistema
	    $applicationSystemLogin = APPLICATION_SYSTEM_LOGIN;
	    // recuperando o perfil do sistema
	    $applicationSystemPerfil = APPLICATION_SYSTEM_PERFIL;
	    
	    // recuperando o objeto login do sistema
	    $objLoginSistema = $modelLogin->fetchList("login = '{$applicationSystemLogin}'", null, 1, 0);

	    // verificando se o objeto login do sistema foi recuperado/existe
	    if (count($objLoginSistema) === 0)
	        throw new Exception(MSG_ERRO_USUARIO_MASTER_NAO_ENCONTRADO);

		// recuperando objeto perfil do sistema
        $objPerfilSistema = $modelPerfil->fetchList("nome = '{$applicationSystemPerfil}'", null, 1, 0);
        
        // verificando se o objeto perfil do sistema foi recuperao/existe
        if (count($objPerfilSistema) === 0)
	        throw new Exception(MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO);

	    // recuperando o objeto pessoa perfil do sistema
        $objPessoaPerfilSistema = $modelPessoaPerfil->fetchList("id_pessoa = {$objLoginSistema[0]->pessoa} and id_perfil = {$objPerfilSistema[0]->id}", null, 1, 0);
        
        // verificando se o objeto pessoa perfil do sistema foi recuperado/existe
        if (!$objPessoaPerfilSistema[0]->id)
            throw new Exception(MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO);

        // retornando o id do objeto pessoa perfil do sistema
        return $objPessoaPerfilSistema[0]->id;
	}

	/**
	 * Retorna o valor da chave primaria de um objeto
	 * 
	 * @param Object $objeto
	 * 
	 * @return String
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
     * Retorna o nome da tabela vinculada a um objeto
     * 
     * @param Object $objeto
     * 
     * @return String
     */
    public static function retornaTableNameObjeto($objeto)
    {
    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();
		
		// recuperando nome da tabela vinculada ao objeto
		$tableName = $tableInfo['name'];
		
		// retornando o nome da tabela
		return $tableName;
    }
    
    /**
     * Retorna o nome da chave primaria da tabela vinculada ao objeto
     * 
     * @param Object $objeto
     * 
     * @return String
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
     * Retorna o objeto Categoria Chave Estrangeira relacionada a um objeto
     * 
     * @param Object $objeto
     * @param Boolean $forceCreateRelationship
     * 
     * @return null|Basico_Model_CategoriaChaveEstrangeira
     */
    public static function retornaObjetoCategoriaChaveEstrangeiraCVC($objeto, $forceCreateRelationship = false)
    {
    	// recuperando o nome da tabela vinculada ao objeto
    	$tableName = self::retornaTableNameObjeto($objeto);
		// instanciando o controlador de categorias
		$categoriaController = Basico_CategoriaControllerController::init();
		// recuperando o id da categoria CVC
		$idCategoriaCVC = Basico_CategoriaControllerController::retornaIdCategoriaCVC();

		// instanciando o modelo de categoria chave estrangeira
		$modelCategoriaChaveEstrangeira = new Basico_Model_CategoriaChaveEstrangeira();
		
		// recuperando a categoria chave estrangeira relacionada ao objeto
		$arrayCategoriasChaveEstrangeira = $modelCategoriaChaveEstrangeira->fetchList("id_categoria = {$idCategoriaCVC} and tabela_estrangeira = '{$tableName}'", null, 1, 0);
		
		// verificando se existe a relacao com categoria chave estrangeira
		if (isset($arrayCategoriasChaveEstrangeira[0])) {
			return $arrayCategoriasChaveEstrangeira[0];
		}
		else if ($forceCreateRelationship) {
			// instanciando controlador de rowinfo
			$controladorRowInfo = Basico_RowInfoControllerController::init();
			
			// cria relacao caso o haja o parametro para criacao de relacao
			$modelCategoriaChaveEstrangeira->categoria = $idCategoriaCVC;
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