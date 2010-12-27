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
			
			// recuperando objeto modulo do objeto
			$objModulo = Basico_ModuloControllerController::retornaObjetoModuloNome(Basico_UtilControllerController::retornaNomeModuloObjeto($objeto));

			// cria relacao caso o haja o parametro para criacao de relacao
			$modelCategoriaChaveEstrangeira->categoria = $idCategoriaCVC;
			$modelCategoriaChaveEstrangeira->modulo = $objModulo->id;
			$modelCategoriaChaveEstrangeira->tabelaEstrangeira = $tableName;
			$modelCategoriaChaveEstrangeira->campoEstrangeiro = self::retornaPrimaryKeyObjeto($objeto);
			
			// preparando XML rowinfo
			$controladorRowInfo->prepareXml($modelCategoriaChaveEstrangeira, true);
			$modelCategoriaChaveEstrangeira->rowinfo = $controladorRowInfo->getXml();
			
			// iniciando transacao
			Basico_PersistenceControllerController::bdControlaTransacao();
			
			try {
				
				// salvando objeto
				$modelCategoriaChaveEstrangeira->getMapper()->save($modelCategoriaChaveEstrangeira);
				// salvando log
				Basico_LogControllerController::salvarLog(Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema(), Basico_CategoriaControllerController::retornaIdCategoriaLogCategoriaChaveEstrangeira(), LOG_MSG_CATEGORIA_CHAVE_ESTRANGEIRA);
				
				// salvando a transacao
				Basico_PersistenceControllerController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
			} catch (Exception $e) {
				
				// cancelando a transacao
				Basico_PersistenceControllerController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
				
				throw new Exception(MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_CRIAR_RELACAO . QUEBRA_DE_LINHA . $e->getMessage());
			}

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
	    	self::insertDbData(self::retornaDBDataScriptsPath());
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
     * 
     * @return String
     */
    private function retornaLoginUsuarioMasterDB() 
    {
    	//recuperando o objeto pessoaPerfil do sistema
    	$objetoPessoaPerfilSistema = self::retornaObjetoPessoaPerfilSistema();
    	
    	//criando objeto login
    	$objLogin = new Basico_Model_Login();
    	
    	//recuperando resource do banco de dados
    	$auxDb = Basico_PersistenceControllerController::bdRecuperaBDSessao();
    	
    	//recuperando o login do usuario master do sistema
    	$arrayObjslogin = $objLogin->fetchList("id_pessoa = {$objetoPessoaPerfilSistema->pessoa}", null, 1, 0);

    	// verificando se o objeto foi recuperado com sucesso
    	if (isset($arrayObjslogin[0]))    	
    		//retornando o login do usuario master do sistema
    		return $arrayObjslogin[0]->login;

    	return null;
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
     * Executa script de inserção dos dados básicos do sistema recursivamente.
     * @return unknown_type
     */
    private function insertDbData($caminhoArquivos) 
    {
    	try {
	    	//salvando log de inicio da operação
	    	Basico_LogControllerController::init()->salvaLogFS(LOG_MSG_INSERT_DB_DATA_INICIO);
	    	// carregando array com o fullFileName dos arquivos de insert (DADOS) do banco utilizado.
	    	
	    	//recuperando arquivos do diretorio passado
	    	$files = self::retornaArrayFileNamesDbDataScriptsFiles($caminhoArquivos);
	    	
	    	//executando scripts dos arquivos sql do diretorio passado
	    	foreach ($files as $file) {
	    		self::executaScriptSQL(Basico_UtilControllerController::retornaConteudoArquivo($caminhoArquivos . "/" .  $file));
	    	}
	    	
	    	//recuperando pastas do diretorio passado
	    	$dataScriptsPaths = self::retornaArrayPastas($caminhoArquivos);
	    	
	    	//percorrendo as pastas do diretorio passado
	    	foreach ($dataScriptsPaths as $path) {
	    		//executando novamente a função (recursiva)
	    		self::insertDbData($path);
	    		
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
     * 
     * @param String $script
     * 
     * @return Boolean
     */
    public static function executaScriptSQL($script)
    {
    	
    	try {
    		if (self::checkScriptIsAvailable($script)) {
	            //removendo comentarios do script SQL
	    		$script = Basico_UtilControllerController::removeComentariosArquivo($script);
	            
		    	// recuperando resource do bando de dados.
		    	$auxDb  = Basico_PersistenceControllerController::bdRecuperaBDSessao();
		    	
		    	//executando script SQL
		    	if ($script != "")
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
     * Retorna um array contendo o resultad de uma query SQL
     * 
     * @param String $sqlQuery
     * 
     * @return Array
     */
    public static function retornaArraySQLQuery($sqlQuery)
    {
    	try {
    		// recuperando resource do bando de dados.
			$auxDb = Basico_PersistenceControllerController::bdRecuperaBDSessao();

			$stmt = $auxDb->query($sqlQuery);

			return $stmt->fetchAll();
    		
    	} catch (Exception $e) {

    		throw new Exception($e->getMessage());
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
    	if (strpos($script, "@exclude") !== false) {
    		
    		return false;
    	}
    	
    	return true;
    	
    }
    
    /**
     * Retorna todas as pastas de um caminho passado
     * @param String $caminhoArquivo
     * @return Array
     */
    public static function retornaArrayPastas($caminhoArquivos)
    {
    	if (trim($caminhoArquivos) != "") {
    	    $filesNames = scandir($caminhoArquivos);
    	    
    	    $filtroArquivosOcultos[] = Basico_UtilControllerController::retornaArrayFiltroArquivosOcultos();
    	    $filesNames = Basico_UtilControllerController::filtraArray($filesNames, $filtroArquivosOcultos);
    	    
    	    $arrayPastas = array();
    	    foreach ($filesNames as $fileName) {
    	    	
    	    	if (is_dir($caminhoArquivos . $fileName)){
    	    		$arrayPastas[] = $caminhoArquivos . $fileName; 
    	    	}
    	    }
    	    
    	    return $arrayPastas;
    	}
    	return NULL;
    }
        
    /**
     * Retorna array com nomes dos arquivos de drop para o banco que está sendo utilizado
     * @return array
     */
    private function retornaArrayFileNamesDbDropScriptsFiles() 
    {
        // inicializando variaveis
        $arrayFilters = array();
        
    	//recuperando o path dos arquivos de create do banco de dados.
        $scriptsPath = self::retornaDBCreateScriptsPath();

		// recuperando filtros
		$arrayFilters[] = Basico_UtilControllerController::retornaArrayFiltroArquivosOcultos();
		$arrayFilters[] = Basico_UtilControllerController::retornaArrayFiltroNomesArquivos('create');

    	// carregando array com arquivos contidos no diretorio.
    	$dropScriptsFilesArray = Basico_UtilControllerController::retornaArrayArquivosCaminho($scriptsPath, $arrayFilters);
    	
    	//invertendo a ordem do array
    	krsort($dropScriptsFilesArray);
    	// retornando array invertido de resultados
    	return $dropScriptsFilesArray;
    }
    
    /**
     * Retorna array com nomes dos arquivos de create para o banco que está sendo utilizado
     * @return unknown_type
     */
    private function retornaArrayFileNamesDbCreateScriptsFiles() 
    {
       // inicializando variaveis
        $arrayFilters = array();
        
    	//recuperando o path dos arquivos de create do banco de dados.
        $scriptsPath = self::retornaDBCreateScriptsPath();

		// recuperando filtros
		$arrayFilters[] = Basico_UtilControllerController::retornaArrayFiltroArquivosOcultos();
		$arrayFilters[] = Basico_UtilControllerController::retornaArrayFiltroNomesArquivos('drop');
		
    	// carregando array com arquivos contidos no diretorio.
    	$createScriptsFilesArray = Basico_UtilControllerController::retornaArrayArquivosCaminho($scriptsPath, $arrayFilters);
    	
    	// retornando array de resultados
    	return $createScriptsFilesArray;
    }
    
    /**
    * Retorna array com nomes dos arquivos de insert de dados para o banco que está sendo utilizado
    * @return unknown_type
    */
    private function retornaArrayFileNamesDbDataScriptsFiles($scriptsPath = NULL) 
    {
       // inicializando variaveis
        $arrayFilters = array();
        
    	//recuperando o path dos arquivos de create do banco de dados.
    	if ($scriptsPath == NULL)
            $scriptsPath = self::retornaDBDataScriptsPath();

		// recuperando filtros
		$arrayFilters[] = Basico_UtilControllerController::retornaArrayFiltroArquivosOcultos();
        $arrayFilters[] = Basico_UtilControllerController::retornaArrayFiltroNomesArquivosSQL();
        
    	// carregando array com arquivos contidos no diretorio.
    	$dataScriptsFilesArray = Basico_UtilControllerController::retornaArrayArquivosCaminho($scriptsPath, $arrayFilters);
    	
    	// retornando array de resultados
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
    	} else if ($dbResource instanceof Zend_Db_Adapter_Pdo_Dblib){
    	    return "MSSQL";
    	}
    }
    
    /**
     * Retorna o valor booleano do banco de dados que esta sendo utilizado
     * 
     * @param Boolean $boolean
     * @param Boolean $comoString
     * 
     * @return Boolean|Integer
     */
    public static function retornaBooleanDB($boolean, $comoString = false)
    {
    	// verificando se eh preciso fazer conversao
    	if (self::retornaPdoTypeConexaoAtiva() === 'MSSQL')
    		// retornando valor booleano convertido para inteiro
    		$tempReturn = Basico_UtilControllerController::retornaValorTipado($boolean, TIPO_INTEIRO);
		else
			// retorna o booleano caso nao haja conversao
    		$tempReturn = Basico_UtilControllerController::retornaValorTipado($boolean, TIPO_BOOLEAN);

    	// verificando se eh preciso converter para string
    	if ($comoString) {
    		// vericando o conteudo da variavei
    		if ($tempReturn === true)
    			return 'true';
    		else if ($tempReturn === false)
    			return 'false';
    		else
    			return (String) $tempReturn;
    	}	
    	else
    		return $tempReturn;
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