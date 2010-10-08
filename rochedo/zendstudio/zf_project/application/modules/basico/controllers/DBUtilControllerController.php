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
     * Retorna o objeto da PessoaPefil do sistema.
     * 
     * @return Int
     */
	public static function retornaObjetoPessoaPerfilSistema()
	{
		// instanciando modelos

	    $modelPerfil = new Basico_Model_Perfil();
	    $modelPessoaPerfil = new Basico_Model_PessoaPerfil();

	    // recuperando o perfil do sistema
	    $applicationSystemPerfil = APPLICATION_SYSTEM_PERFIL;
	   
		// recuperando objeto perfil do sistema
        $objPerfilSistema = $modelPerfil->fetchList("nome = '{$applicationSystemPerfil}'", null, 1, 0);
        
        // verificando se o objeto perfil do sistema foi recuperao/existe
        if (count($objPerfilSistema) === 0)
	        throw new Exception(MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO);

	    // recuperando o objeto pessoa perfil do sistema
        $objPessoaPerfilSistema = $modelPessoaPerfil->fetchList("id_perfil = {$objPerfilSistema[0]->id}", null, 1, 0);
        
        // verificando se o objeto pessoa perfil do sistema foi recuperado/existe
        if (!$objPessoaPerfilSistema[0]->id)
            throw new Exception(MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO);

        // retornando o id do objeto pessoa perfil do sistema
        return $objPessoaPerfilSistema[0];
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
     * Retorna o nome do campo que inicia-se com id_generico
     * 
     * @param Object $objeto
     * 
     * @return String|false
     */
    public static function retornaNomeCampoIdGenerico($objeto)
    {
		// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();
		
		// recuperando as colunas
		$arrayColunas = $tableInfo['cols'];

		// loop para localizar a coluna de id generico
		foreach ($arrayColunas as $coluna) {
			// cortando o nome do campo para o tamanho da constante ID_GENERICO
			$tempResult = substr($coluna, 0, strlen(ID_GENERICO));
			
			if ($tempResult == ID_GENERICO)
				return $coluna;
		}
		
		return false;
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
    
    /**
     * Função para resetar o banco de dados
     * @return Boolean
     */
    public static function resetaBD()
    {
    	self::resetaLoginUsuarioMaster();
    	//checando se está no ambiente de desenvolvimento
    	if (Basico_UtilControllerController::ambienteDesenvolvimento()) {
    		//salvando log de inicio da operação
	    	Basico_LogControllerController::init()->salvaLogFS(LOG_MSG_RESET_DB_INICIO);
	    	//incializando transacao
			Basico_PersistenceControllerController::bdControlaTransacao();
			//dropando as tabelas do sistema
	    	self::dropDbTables();
	    	//criando as tabelas do sistema
	    	self::createDbTables();
	    	//inserindo os dados básicos do sistema
	    	self::insertDbData();
	    	// confirmando execucao dos scripts
	        Basico_PersistenceControllerController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
	        //resetando login do usuario master no arquivo .htaccess
	        self::resetaLoginUsuarioMaster();
	        //salvando log de sucesso da operação
	        Basico_LogControllerController::init()->salvaLogFS(LOG_MSG_RESET_DB_SUCESSO);
	        return true;
    	}else{
    	    return false;
    	}
    }
    
    /**
     * Reseta o login do usuário master do sistema no arquivo .htaccess
     * @return Boolean
     */
    private function resetaLoginUsuarioMaster()
    {
    	//setando a mascara
    	$pattern = "@(". QUEBRA_DE_LINHA ."SetEnv APPLICATION_SYSTEM_LOGIN .*?\\" . QUEBRA_DE_LINHA . ")@";
    	//setando string de substituicao
    	$replacement = QUEBRA_DE_LINHA . 'SetEnv APPLICATION_SYSTEM_LOGIN ' . self::retornaLoginUsuarioMasterDB() . QUEBRA_DE_LINHA;
    	//recuperando conteudo do arquivo htaccess
    	$conteudoHtaccess = Basico_UtilControllerController::retornaConteudoArquivo(HTACCESS_FULLFILENAME);
        //recuperando o novo conteudo do arquivo htaccess
    	$conteudoNovoHtaccess = preg_replace($pattern, $replacement, $conteudoHtaccess, 1);
    	//reescrevendo o arquivo htaccess
    	Basico_UtilControllerController::escreveConteudoArquivo(HTACCESS_FULLFILENAME, $conteudoNovoHtaccess);
    }
    
    /**
     * Retorna o login do usuario master do sistema cadastrado no banco de dados
     * @return String
     */
    private function retornaLoginUsuarioMasterDB() 
    {
    	//recuperando o objeto pessoaPerfil do sistema
    	$pessoaPerfilSistema = self::retornaObjetoPessoaPerfilSistema();
    	//criando objeto login
    	$objLogin = new Basico_Model_Login();
    	//recuperando resource do banco de dados
    	$auxDb = Basico_PersistenceControllerController::bdRecuperaBDSessao();
    	//recuperando o login do usuario master do sistema
    	$login = $objLogin->fetchList("id_pessoa = {$pessoaPerfilSistema->pessoa}", null, 1, 0);
    	//retornando o login do usuario master do sistema
    	return $login[0]->login;
    }
       
    /**
     * Apaga todas as tabelas do banco que está sendo utilizado.
     * @return Boolean
     */
    private function dropDbTables() 
    {
    	try {
    		//salvando log de inicio da operação
	    	Basico_LogControllerController::init()->salvaLogFS(LOG_MSG_DROP_DB_INICIO);
	    	// carregando array com o fullFileName dos arquivos de drop do banco utilizado.
	    	$dropScriptsFiles = self::retornaArrayFileNamesDbDropScriptsFiles();
	    	
	    	//executando scripts de drop
	    	foreach ($dropScriptsFiles as $file) {
	    		self::executaScriptSQL(file_get_contents(self::retornaDBCreateScriptsPath(). $file));
	    	}
	    	//salvando log de sucesso da operação
	    	Basico_LogControllerController::init()->salvaLogFS(LOG_MSG_DROP_DB_SUCESSO);
	    	return true;
    		
    	}catch(Exception $e) {
    		throw new Exception(MSG_ERRO_EXECUCAO_SCRIPT . 'Arquivo: ' . $file . QUEBRA_DE_LINHA . $e->getMessage());
    	}
    	
    }

    /**
     * Executa script de criação de todas as tabelas do banco que está sendo utilizado.
     * @return Boolean
     */
    private function createDbTables() 
    {
    	try {
	    	//salvando log de inicio da operação
	    	Basico_LogControllerController::init()->salvaLogFS(LOG_MSG_CREATE_DB_INCIO);
	    	// carregando array com o fullFileName dos arquivos de drop do banco utilizado.
	    	$createScriptsFiles = self::retornaArrayFileNamesDbCreateScriptsFiles();
	    	    	
	    	//executando scripts de create
	    	foreach ($createScriptsFiles as $file) {
	    		self::executaScriptSQL(file_get_contents(self::retornaDBCreateScriptsPath(). $file));
	    	}
	    	//salvando log de sucesso da operação
	    	Basico_LogControllerController::init()->salvaLogFS(LOG_MSG_CREATE_DB_SUCESSO);
	    	return true;
    	}catch(Exception $e) {
    		throw new Exception(MSG_ERRO_EXECUCAO_SCRIPT . 'Arquivo: ' . $file . QUEBRA_DE_LINHA . $e->getMessage());
    	}
    }
    
    /**
     * Executa script de inserção dos dados básicos do sistema.
     * @return unknown_type
     */
    private function insertDbData() 
    {
    	try {
	    	//salvando log de inicio da operação
	    	Basico_LogControllerController::init()->salvaLogFS(LOG_MSG_INSERT_DB_DATA_INICIO);
	    	// carregando array com o fullFileName dos arquivos de insert (DADOS) do banco utilizado.
	    	$dataScriptsFiles = self::retornaArrayFileNamesDbDataScriptsFiles();
	    	        
	    	//executando scripts de insert
	    	foreach ($dataScriptsFiles as $file) {
	    		self::executaScriptSQL(file_get_contents(self::retornaDBDataScriptsPath(). $file));
	    	}
	    	//salvando log de sucesso da operação
	    	Basico_LogControllerController::init()->salvaLogFS(LOG_MSG_INSERT_DB_DATA_SUCESSO);
	    	return true;
    	}catch(Exception $e) {
    		throw new Exception(MSG_ERRO_EXECUCAO_SCRIPT . 'Arquivo: ' . $file . QUEBRA_DE_LINHA . $e->getMessage());
    	}
    }
    
    /**
     * Executa um script de banco de dados
     * @param $script
     * @return Boolean
     */
    private function executaScriptSQL($script) 
    {
    	try {
    		if (self::checkScriptIsAvailable($script)) {
	            //removendo comentarios do script SQL
	    		$script = Basico_UtilControllerController::removeComentariosArquivo($script);
	            
		    	// recuperando resource do bando de dados.
		    	$auxDb = Basico_PersistenceControllerController::bdRecuperaBDSessao();
		    	
		    	//executando script SQL
		    	$auxDb->getConnection()->exec($script);
		    		    	
				return true;
    			
    		}
    		return false;
    	}catch(Exception $e) {
    		// cancelando execucao do script
    		Basico_PersistenceControllerController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
    		//salvando log do erro
    		Basico_LogControllerController::init()->salvaLogFS(LOG_MSG_ERRO_EXECUCAO_SCRIPT);
    		//lançando o erro
    		throw new Exception(MSG_ERRO_EXECUCAO_SCRIPT . $e->getMessage());
            return false;
    	}
    	
    }
    
    /**
     * Checa se o script está disponivel para ser gerado (Procura pela flag @exclude)
     * @param $script
     * @return Boolean
     */
    private function checkScriptIsAvailable($script)
    {
    	//Checando se o script pode ser executado.
    	if (strpos($script, "@exclude") === false) {
    		return true;
    	}else{
    		return false;
    	}
    }
        
    /**
     * Retorna array com nomes dos arquivos de drop para o banco que está sendo utilizado
     * @return array
     */
    private function retornaArrayFileNamesDbDropScriptsFiles() 
    {
    	//recuperando o path dos arquivos de create do banco de dados.
        $scriptsPath = self::retornaDBCreateScriptsPath();
    	
        // checando se o path existe
    	if (!file_exists($scriptsPath)){
    		throw new Exception(MSG_ERRO_BD_PATH_NAO_ENCONTRADO);
    	}
    	
    	// carregando array com arquivos contidos no diretorio.
    	$dropScriptsFilesArray = scandir($scriptsPath, 1);
    	
    	// retirando aquivos ocultos e os scripts de create do array de arquivos
    	$i = 0;
    	foreach ($dropScriptsFilesArray as $file) {
    		// retirando arquivos ocultos
    		if (strpos($file, '.') === 0) {
    			unset($dropScriptsFilesArray[$i]);
    		}
    		// retirando arquivos de create
    	    if (strpos($file, 'create') != false) {
    			unset($dropScriptsFilesArray[$i]);
    		}
    		$i++;
    	}
    	return $dropScriptsFilesArray;
    }
    
    /**
     * Retorna array com nomes dos arquivos de create para o banco que está sendo utilizado
     * @return unknown_type
     */
    private function retornaArrayFileNamesDbCreateScriptsFiles() 
    {
    	//recuperando o path dos arquivos de create do banco de dados.
        $scriptsPath = self::retornaDBCreateScriptsPath();
    	
        // checando se o path existe
    	if (!file_exists($scriptsPath)){
    		throw new Exception(MSG_ERRO_BD_PATH_NAO_ENCONTRADO);
    	}
    	// carregando array com arquivos contidos no diretorio.
    	$createScriptsFilesArray = scandir($scriptsPath);
    	
    	// retirando aquivos ocultos e os scripts de create do array de arquivos
    	$i = 0;
    	foreach ($createScriptsFilesArray as $file) {
    		// retirando arquivos ocultos
    		if (strpos($file, '.') === 0) {
    			unset($createScriptsFilesArray[$i]);
    		}
    		// retirando arquivos de create
    	    if (strpos($file, 'drop') != false) {
    			unset($createScriptsFilesArray[$i]);
    		}
    		$i++;
    	}
    	return $createScriptsFilesArray;
    }
    
    /**
    * Retorna array com nomes dos arquivos de insert de dados para o banco que está sendo utilizado
    * @return unknown_type
    */
    private function retornaArrayFileNamesDbDataScriptsFiles() 
    {
    	//recuperando o path dos arquivos de create do banco de dados.
        $scriptsPath = self::retornaDBDataScriptsPath();
    	
        // checando se o path existe
    	if (!file_exists($scriptsPath)){
    		throw new Exception(MSG_ERRO_BD_PATH_NAO_ENCONTRADO);
    	}
    	
    	// carregando array com arquivos contidos no diretorio.
    	$dataScriptsFilesArray = scandir($scriptsPath);
    	
    	// retirando aquivos ocultos e os scripts de create do array de arquivos
    	$i = 0;
    	foreach ($dataScriptsFilesArray as $file) {
    		// retirando arquivos ocultos
    		if (strpos($file, '.') === 0) {
    			unset($dataScriptsFilesArray[$i]);
    		}
    		$i++;
    	}
    	return $dataScriptsFilesArray;
    }
    
    /**
     * Retorna tipo do banco de dados que está sendo utilizado
     * 
     * @return String
     */
    public static function retornaPdoTypeConexaoAtiva()
    {
    	//recuperando resource do bando de dados
    	$dbResource = Basico_PersistenceControllerController::bdRecuperaBDSessao();
    	
    	//retornando o tipo do banco de dados
    	if ($dbResource instanceof Zend_Db_Adapter_Pdo_Pgsql){
    		return "PGSQL";    		
    	}else if ($dbResource instanceof Zend_Db_Adapter_Pdo_Dblib){
    	    return "MSSQL";
    	}
    	
    }
    
    /**
     * Retorna o path dos arquivos de Create para o banco que está sendo utilizado.
     * @return String
     */
    private function retornaDBCreateScriptsPath()
    {
    	//retornando o path dos scripts de banco de dados de acordo com o tipo do banco
    	switch (self::retornaPdoTypeConexaoAtiva()) {
    		case "PGSQL":
    		    return BASICO_DB_PGSQL_CREATE_SCHEMA_SCRIPTS_PATH;
    		case "MSSQL":
    			return BASICO_DB_MSSQL_CREATE_SCHEMA_SCRIPTS_PATH;     
    	}
    	
    }
    
    /**
     * Retorna o path dos arquivos de insert de dados para o banco que está sendo utilizado.
     * @return String
     */
    private function retornaDBDataScriptsPath()
    {
    	//retornando o path dos scripts de banco de dados de acordo com o tipo do banco
    	switch (self::retornaPdoTypeConexaoAtiva()) {
    		case "PGSQL":
    		    return BASICO_DB_PGSQL_DATA_SCRIPTS_PATH;
    		case "MSSQL":
    			return BASICO_DB_MSSQL_DATA_SCRIPTS_PATH;     
    	}
    	
    }
}