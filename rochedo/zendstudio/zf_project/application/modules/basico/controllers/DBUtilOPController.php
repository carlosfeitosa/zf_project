<?php

/**
 * Controlador DB Util
 * 
 */

class Basico_OPController_DBUtilOPController
{
	const ATRIBUTO_CAMPO_TABELA_DATATYPE = 'dataType';
	const ATRIBUTO_CAMPO_TABELA_NULLABLE = 'nullable';
	const ATRIBUTO_CAMPO_TABELA_LENGTH = 'length';
	const ATRIBUTO_CAMPO_TABELA_FK = 'fk';
	
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
        	echo Basico_OPController_UtilOPController::retornaMensagemErro(MSG_ERRO_CONEXAO_BANCO, $e->getMessage());

        	// salva o logFS do erro
            $logController = Basico_OPController_LogOPController::getInstance();
        	$mensagemLogFS = "EXCEPTION: " . MSG_ERRO_CONEXAO_BANCO . " MESSAGE: {$e->getMessage()} "; 
        	$logController->salvaLogFS($mensagemLogFS, LOG_PRIORITY_ERRO);
            exit;
        }
	}

	/**
	 * Verifica se o banco de dados está levantado
	 * 
	 * @return Boolean - True se o banco de dados estiver levantado. False se não.
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 06/07/2012
	 */
	public static function checaBancoLevantado() 
	{
		// retornando o resultado da verificação
		return (Basico_OPController_DBUtilOPController::tabelaExiste('dicionario_expressao', 'basico') and (Basico_OPController_DicionarioExpressaoOPController::verificaTraducaoExiste('CONSTANTE_TEXTUAL_AINDA_NAO_TRADUZIDA')));
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
    	//verificando se o parametro passado é um objeto
    	if (!is_object($objeto)) {
    		throw new Exception(MSG_ERRO_NAO_OBJETO);
    	}
    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();

		// recuperando o nome do campo da chave primaria da tabela vinculada ao objeto
		$tablePrimaryKey = $tableInfo['primary'];
		$tablePrimaryKey = $tablePrimaryKey[1];

		// recuperando o valor do atributo "pk" do objeto
		$pkObjeto = $objeto->$tablePrimaryKey;

		// limpando memória
		unset($tableInfo);
		unset($objeto);

		// retornando o valor do id generico vindo do objeto
		return $pkObjeto;
    }

    /**
     * Retorna o nome de um campo através do nome do atributo
     * 
     * @param String $nomeAtributo
     * 
     * @return String
     * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 16/04/2012
     */
    public static function retornaNomeCampoAtributo($nomeAtributo)
    {
    	// inicializando variáveis
    	$nomeCampo = '';
    	// loop para montar o nome do campo
		for ($i = 0; $i < strlen($nomeAtributo); $i++) {
			// recuperando substring
			$substring = substr($nomeAtributo, $i, 1);

			// verificando a substring é maiúscula
			if ($substring !== strtolower($substring)) {
				// adicionando underline como separador e trocando a substring maiúscula por minúscula
				$nomeCampo .= '_' . strtolower($substring);
			} else {
				// adicionando substring
				$nomeCampo .= $substring;
			}
		}

    	// retornando o nome do campo
    	return $nomeCampo;
    }

    /**
     * Retorna o nome de um atributo através do nome do campo
     * 
     * @param String $nomeCampo
     * 
     * @return String
     * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 16/04/2012
     */
    public static function retornaNomeAtributoCampo($nomeCampo)
    {
    	// inicializando variáveis
    	$nomeAtributo = '';

    	// loop para montar o nome do campo
		for ($i = 0; $i < strlen($nomeCampo); $i++) {
			// recuperando substring
			$substring = substr($nomeCampo, $i, 1);

			// verificando a substring é maiúscula
			if ($substring === '_') {
				// adicionando underline como separador e trocando a substring maiúscula por minúscula
				$nomeAtributo .= strtoupper(substr($nomeCampo, $i+1, 1));
				// incrementando o contador
				$i++;
			} else {
				// adicionando substring
				$nomeAtributo .= $substring;
			}
		}

    	// retornando o nome do campo
    	return $nomeAtributo;
    }
    
	/**
     * Retorna o nome do schema da tabela vinculada a um objeto
     * 
     * @param Object $objeto
     * 
     * @return String
     * 
     * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
     * @since 27/05/2012
     */
    public static function retornaSchemaNameObjeto($objeto)
    {
	    //verificando se o parametro passado é um objeto
    	if (!is_object($objeto)) {
    		throw new Exception(MSG_ERRO_NAO_OBJETO);
    	}

    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();

		// recuperando nome do schema vinculado ao objeto
		$schemaName = $tableInfo['schema'];

		// limpando variáveis
		unset($tableInfo);

		// retornando o nome do schema
		return $schemaName;
    }

    /**
     * Retorna o nome da tabela vinculada a um objeto
     * 
     * @param Object $objeto
     * @param Boolean $retornaSchema
     * 
     * @return String
     */
    public static function retornaTableNameObjeto($objeto, $retornaSchema = true)
    {
	    //verificando se o parametro passado é um objeto
    	if (!is_object($objeto)) {
    		throw new Exception(MSG_ERRO_NAO_OBJETO);
    	}

    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();

		if ($retornaSchema)
			// recuperando nome da tabela vinculada ao objeto
			$tableName = $tableInfo['schema'] . "." . $tableInfo['name'];
		else
			// recuperando nome da tabela vinculada ao objeto
			$tableName = $tableInfo['name'];

		// limpando variáveis
		unset($tableInfo);

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
    	//verificando se o parametro passado é um objeto
    	if (!is_object($objeto)) {
    		throw new Exception(MSG_ERRO_NAO_OBJETO);
    	}

    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();

		// recuperando o nome do campo da chave primaria da tabela vinculada ao objeto
		$tablePrimaryKey = $tableInfo['primary'];

		// limpando variáveis
		unset($tableInfo);

		// retorna o nome do campo da chave primaria
		return $tablePrimaryKey[1];
    }

    /**
     * Retorna um array com os atributos dos campos da tabela do banco de dados relacionada ao objeto
     * 
     * @param Objeto $objeto
     * 
     * @return Array
     * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 16/04/2012
     */
    public static function retornaArrayAtributosTabelaBDObjeto($objeto)
    {
    	// inicializando variáveis
    	$arrayResultado = array();

    	//verificando se o parametro passado é um objeto
    	if (!is_object($objeto)) {
    		throw new Exception(MSG_ERRO_NAO_OBJETO);
    	}

    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();

		// recuperando metadados
		$arrayMetaDados = $tableInfo['metadata'];

		// recuperando array com as chaves estrangeiras da tabela
		$arrayChavesEstrangeiras = Basico_OPController_PersistenceOPController::bdRetornaArrayChavesEstrangeirasPorNomeTabela(self::retornaTableNameObjeto($objeto));

		// loop para recuperar informações sobre os campos
		foreach ($arrayMetaDados as $chave => $arrayValores) {
			// verificando se o campo é do tipo fk
			if (array_key_exists($chave, $arrayChavesEstrangeiras)) {
				// carregando array de resultados
				$arrayResultado[$chave] = array(self::ATRIBUTO_CAMPO_TABELA_DATATYPE => $arrayValores['DATA_TYPE'], self::ATRIBUTO_CAMPO_TABELA_NULLABLE => $arrayValores['NULLABLE'], self::ATRIBUTO_CAMPO_TABELA_LENGTH => $arrayValores['LENGTH'], self::ATRIBUTO_CAMPO_TABELA_FK => $arrayChavesEstrangeiras[$chave]);
			} else {
				// carregando array de resultados
				$arrayResultado[$chave] = array(self::ATRIBUTO_CAMPO_TABELA_DATATYPE => $arrayValores['DATA_TYPE'], self::ATRIBUTO_CAMPO_TABELA_NULLABLE => $arrayValores['NULLABLE'], self::ATRIBUTO_CAMPO_TABELA_LENGTH => $arrayValores['LENGTH']);				
			}
		}

		// retornando resultado
		return $arrayResultado;
    }

    /**
     * Retorna o nome do campo que inicia-se com id_generico
     * 
     * @param Object $objeto
     * 
     * @return String|false
     */
    public static function retornaNomeCampoIdGenericoObjeto($objeto)
    {
	    //verificando se o parametro passado é um objeto
    	if (!is_object($objeto)) {
    		throw new Exception(MSG_ERRO_NAO_OBJETO);
    	}

		// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();

		// recuperando as colunas
		$arrayColunas = $tableInfo['cols'];

		// loop para localizar a coluna de id generico
		foreach ($arrayColunas as $coluna) {
			// cortando o nome do campo para o tamanho da constante ID_GENERICO
			$tempResult = substr($coluna, 0, strlen(ID_GENERICO));

			// verificando o corte
			if ($tempResult == ID_GENERICO)
				return $coluna;
		}

		return false;
    }

    /**
     * Função para resetar o banco de dados
     * 
     * @return Boolean
     */
    public static function resetaBD()
    {
    	try {
    		//incializando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao();
	    	//checando se está no ambiente de desenvolvimento
	    	if (Basico_OPController_UtilOPController::ambienteDesenvolvimento()) {
	    		//salvando log de inicio da operação
		    	Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_RESET_DB_INICIO);

				//dropando as tabelas do sistema
		    	self::dropDbTables();
		    	//criando as tabelas do sistema
		    	self::createDbTables();
		    	//inserindo os dados básicos do sistema
		    	self::insertDbData(self::retornaDBDataScriptsPath());
		    	//resetando login do usuario master no arquivo .htaccess
		        self::resetaLoginUsuarioMaster();
		        //salvando log de sucesso da operação
		        Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_RESET_DB_SUCESSO);
		        // confirmando execucao dos scripts
		        Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

		        return true;
	    	}else{
	    	    return false;
	    	}
    	}catch (Exception $e) {
    		// voltando a transação
    		Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
    		throw new Exception(MSG_ERRO_DB_EXECUCAO_SCRIPT . $e->getMessage());
    	}
    }
    
    /**
     * Reseta o login do usuário master do sistema no arquivo .htaccess
     * 
     * @return Boolean
     */
    private static function resetaLoginUsuarioMaster()
    {
	   	//setando a mascara
    	$pattern = "@(". QUEBRA_DE_LINHA ."SetEnv APPLICATION_SYSTEM_LOGIN .*?\\" . QUEBRA_DE_LINHA . ")@";
    	//setando string de substituicao
    	$replacement = QUEBRA_DE_LINHA . 'SetEnv APPLICATION_SYSTEM_LOGIN ' . Basico_OPController_PessoaLoginOPController::getInstance()->retornaLoginUsuarioMasterDBViaSQL() . QUEBRA_DE_LINHA;
    	//recuperando conteudo do arquivo htaccess
    	$conteudoHtaccess = Basico_OPController_UtilOPController::retornaConteudoArquivo(HTACCESS_FULLFILENAME);
        //recuperando o novo conteudo do arquivo htaccess
    	$conteudoNovoHtaccess = preg_replace($pattern, $replacement, $conteudoHtaccess, 1);
    	//reescrevendo o arquivo htaccess
    	Basico_OPController_UtilOPController::escreveConteudoArquivo(HTACCESS_FULLFILENAME, $conteudoNovoHtaccess);
    }

    /**
     * Apaga todas as tabelas do banco que está sendo utilizado.
     * 
     * @return Boolean
     */
    private static function dropDbTables() 
    {
    	try {
    		// inicializando transação
    		Basico_OPController_PersistenceOPController::bdControlaTransacao();
    		//salvando log de inicio da operação
	    	Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_DROP_DB_INICIO);
	    	// carregando array com o fullFileName dos arquivos de drop do banco utilizado.
	    	$dropScriptsFiles = self::retornaArrayFileNamesDbDropScriptsFiles();

	    	//executando scripts de drop
	    	foreach ($dropScriptsFiles as $file) {
	    		$fullFilename = self::retornaDBCreateScriptsPath() . "/" . $file; 
	    		if (is_file($fullFilename)) { 
	    		  self::executaScriptSQL(file_get_contents(self::retornaDBCreateScriptsPath() . "/" . $file));
	    		}
	    	}
	    	//salvando log de sucesso da operação
	    	Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_DROP_DB_SUCESSO);
	    	
	    	// finalizando a transação
	    	Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
	    	
	    	return true;

    	}catch(Exception $e) {
    		// voltando transação
    		Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
    		// lançando erro
    		throw new Exception(MSG_ERRO_DB_EXECUCAO_SCRIPT . 'Arquivo: ' . $file . QUEBRA_DE_LINHA . $e->getMessage());
    	}
    }

    /**
     * Executa script de criação de todas as tabelas do banco que está sendo utilizado.
     * 
     * @return Boolean
     */
    private static function createDbTables() 
    {
    	try {
    		// inicializando transação
    		Basico_OPController_PersistenceOPController::bdControlaTransacao();
	    	//salvando log de inicio da operação
	    	Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_CREATE_DB_INCIO);
	    	// carregando array com o fullFileName dos arquivos de drop do banco utilizado.
	    	$createScriptsFiles = self::retornaArrayFileNamesDbCreateScriptsFiles();

	    	//executando scripts de create
	    	foreach ($createScriptsFiles as $file) {
	    		$fullFilename = self::retornaDBCreateScriptsPath() . "/" . $file; 
	    		if (is_file($fullFilename)) {
	    			self::executaScriptSQL(file_get_contents(self::retornaDBCreateScriptsPath() . "/" . $file));
	    		}
	    	}
	    	//salvando log de sucesso da operação
	    	Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_CREATE_DB_SUCESSO);
	    	
	    	// finalizando a transação
	    	Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
	    	
	    	return true;

    	}catch(Exception $e) {
    		// voltando transação
    		Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
    		// lançando erro
    		throw new Exception(MSG_ERRO_DB_EXECUCAO_SCRIPT . 'Arquivo: ' . $file . QUEBRA_DE_LINHA . $e->getMessage());
    	}
    }
    
    /**
     * Executa script de inserção dos dados básicos do sistema recursivamente.
     * @return unknown_type
     */
    private static function insertDbData($caminhoArquivos) 
    {
    	try {
    		// inicializando transação
    		Basico_OPController_PersistenceOPController::bdControlaTransacao();
	    	//salvando log de inicio da operação
	    	Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_INSERT_DB_DATA_INICIO);

	    	//recuperando arquivos do diretorio passado
	    	$files = self::retornaArrayFileNamesDbDataScriptsFiles($caminhoArquivos);

	    	//executando scripts dos arquivos sql do diretorio passado
	    	foreach ($files as $file) {
	    		// verificando se a variável $file faz referencia a um arquivo existente no sistema de arquivos 
	    		if (is_file($caminhoArquivos . "/" .  $file)) {
	    			// executando o script
	    			self::executaScriptSQL(Basico_OPController_UtilOPController::retornaConteudoArquivo($caminhoArquivos . "/" .  $file));
	    		}
	    	}

	    	//recuperando pastas do diretorio passado
	    	$dataScriptsPaths = self::retornaArrayPastas($caminhoArquivos);

	    	//percorrendo as pastas do diretorio passado
	    	foreach ($dataScriptsPaths as $path) {
	    		//executando novamente a função (recursiva)
	    		self::insertDbData($path);
	    	}

	    	//salvando log de sucesso da operação
	    	Basico_OPController_LogOPController::getInstance()->salvaLogFS(LOG_MSG_INSERT_DB_DATA_SUCESSO);
	    	
	    	// finalizando a transação
	    	Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

	    	return true;
    	}catch(Exception $e) {
    		
    		// voltando transação
    		Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
    		
    		// recuperando a origem do erro
			if (isset($file))
				$origemException = $file;
			else
				$origemException = $path;

    		throw new Exception(MSG_ERRO_DB_EXECUCAO_SCRIPT . 'Arquivo/Caminho: ' . $origemException . QUEBRA_DE_LINHA . $e->getMessage());
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
	    		$script = Basico_OPController_UtilOPController::removeComentariosArquivo($script);

		    	// recuperando resource do bando de dados.
		    	$auxDb  = Basico_OPController_PersistenceOPController::bdRecuperaBDSessao();

		    	//executando script SQL
		    	if ($script != "") {
		    		$auxDb->getConnection()->exec($script);
		    	}
				return true;
    		}

    		return false;
    	} catch(Exception $e) {
    		// salvando log do erro
    		Basico_OPController_LogOPController::getInstance()->salvaLogFS('Erro ao tentar executar o script.');
    		// lançando o erro
    		throw new Exception(MSG_ERRO_DB_EXECUCAO_SCRIPT . $e->getMessage());

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
			$auxDb = Basico_OPController_PersistenceOPController::bdRecuperaBDSessao();

			// rodando query
			$stmt = $auxDb->query($sqlQuery);

			// retornando resultado
			return $stmt->fetchAll();

    	} catch (Exception $e) {

    		throw new Exception($e->getMessage());
    	}    	
    }

    /**
     * Insere dados no banco de dados, via SQL, atraves do nome da tabela e um array de nomes dos campos (chave) e valores
     * 
     * @param String $nomeTabela
     * @param Array $arrayChaveNomesCamposValorValores
     * 
     * @return Boolean
     */
    public static function insereDadosViaSQL($nomeTabela, $arrayChaveNomesCamposValorValores)
    {
		// verificando se foram passados os parametros corretamente
		if ((!isset($nomeTabela)) or (!is_array($arrayChaveNomesCamposValorValores)))
			return false;

		// recuperando os nomes dos campos e valores
		$nomesCamposInsert = implode(",", array_keys($arrayChaveNomesCamposValorValores));
		$valoresInsert     = implode(",", array_values($arrayChaveNomesCamposValorValores));

		// preparando instrucao SQL
		$insertSQL = "INSERT INTO {$nomeTabela} ({$nomesCamposInsert}) VALUES ({$valoresInsert})";

		// retornando o resultado do insert no banco de dados via SQL
		return self::executaScriptSQL($insertSQL);
    }

    /**
     * Retorna um array contendo os nomes dos campos (chaves) e valores (valores) de uma tabela do banco de dados, 
     * filtrados por uma condicao SQL e ordenados por um ou conjunto de campos
     * 
     * @param String $nomeTabela
     * @param Array $arrayNomesCampos
     * @param String $condicaoSQL
     * @param Array $arrayCamposOrdenacao
     * 
     * @return Array|false
     */
    public static function retornaArrayDadosViaSQL($nomeTabela, $arrayNomesCampos = null, $condicaoSQL = null, $arrayCamposOrdenacao = null)
    {
    	// verificando se foi passado o nome da tabela
    	if (!isset($nomeTabela))
    		return false;

		// verificando se foi passado um array com os campos que devem ser retornados
		if ((isset($arrayNomesCampos)) and (is_array($arrayNomesCampos)) and (count($arrayNomesCampos) > 0)) {
			// implodindo o array dentro de uma string
			$nomesCamposSelect = implode(", ", $arrayNomesCampos);
		} else {
			// string para recuperacao de todos os campos
			$nomesCamposSelect = "*";
		}

    	// inicializando variaveis
    	$camposOrdenacaoSelect = '';

    	// preparando instrucao SQL
		$selectSQL = "SELECT {$nomesCamposSelect} FROM {$nomeTabela}";

		// verificando se eh preciso filtrar a consulta
		if (isset($condicaoSQL)) {
			// setando condicao SQL
			$selectSQL .= " WHERE {$condicaoSQL}";
		}

		// verificando se existem campos ordenadores
		if ((isset($arrayCamposOrdenacao)) and (is_array($arrayCamposOrdenacao)) and (count($arrayCamposOrdenacao) > 0)) {
			// setando campos ordenadores
			$camposOrdenacaoSelect = implode(", ", $arrayCamposOrdenacao);

			// setando ordenacao na instrucao SQL
			$selectSQL .= " ORDER BY {$camposOrdenacaoSelect}";
		}

		// retornando o resultado da consulta
		return Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($selectSQL);
    }

    /**
     * Retorna o nome da tabela relacionada ao objeto passado por parametro
     * 
     * @param Object $objeto
     * 
     * @return Boolean
     * 
     * @deprecated
     */
	public static function retornaNomeTabelaPorObjeto($objeto)
	{
		// verificando se o parametro $objeto eh um objeto
		if (!is_object($objeto))
			return;

		// recuperando o nome do objeto
		$nomeObjeto = get_class($objeto);
		// recuperando o nome do modulo do objeto
		$nomeModuloObjeto = Basico_OPController_UtilOPController::retornaNomeModuloPorObjeto($objeto);

		// transformando o nome do objeto em nome da tabela
		$nomeTabelaCamelCase = str_replace($nomeModuloObjeto, '', $nomeObjeto);
		$nomeTabelaCamelCase = str_replace('_Model_', '', $nomeTabelaCamelCase);

		// instanciando variaveis
		$nomeTabela = '';

		// loop para separar os nomes da tabela
		for ($i = 0; $i < strlen($nomeTabelaCamelCase); $i++) {
			// verificando se o caracter eh maiusculo
			if (($i > 0) and (($nomeTabelaCamelCase[$i]) === strtoupper($nomeTabelaCamelCase[$i]))) {
				// inserindo separador e caracter
				$nomeTabela .= "_{$nomeTabelaCamelCase[$i]}";
			} else {
				// inserindo caracter
				$nomeTabela .= $nomeTabelaCamelCase[$i];
			}
		}

		// transformando o nome da tabela em minusculo
		$nomeTabela = strtolower($nomeTabela);

		// retornando o nome da tabela
		return $nomeTabela;
	}

    /**
     * Checa se o script está disponivel para ser gerado (Procura pela flag @exclude)
     * 
     * @param $script
     * 
     * @return Boolean
     */
    private static function checkScriptIsAvailable($script)
    {
    	//Checando se o script pode ser executado.
    	if (strpos($script, "@exclude") !== false) {

    		return false;
    	}
    	return true;
    }
    
    /**
     * Retorna todas as pastas de um caminho passado
     * 
     * @param String $caminhoArquivo
     * 
     * @return Array
     */
    public static function retornaArrayPastas($caminhoArquivos)
    {
    	// verificando se existe o caminho para os arquivos
    	if (trim($caminhoArquivos) != "") {
    		// scaneando caminho
    	    $filesNames = scandir($caminhoArquivos);

    	    // aplicando filtros
    	    $filtroArquivosOcultos[] = Basico_OPController_UtilOPController::retornaArrayFiltroArquivosOcultos();
    	    $filesNames = Basico_OPController_UtilOPController::filtraArray($filesNames, $filtroArquivosOcultos);

    	    // inicializando variaveis
    	    $arrayPastas = array();

    	    // loop para listar os caminhos
    	    foreach ($filesNames as $fileName) {
    	    	// verificando se o caminho existe
    	    	if (is_dir($caminhoArquivos . "/" . $fileName)){
    	    		// carretando caminhos encontrados
    	    		$arrayPastas[] = $caminhoArquivos . "/" . $fileName; 
    	    	}
    	    }
			// retornando caminho
    	    return $arrayPastas;
    	}

    	return null;
    }
        
    /**
     * Retorna array com nomes dos arquivos de drop para o banco que está sendo utilizado
     * 
     * @return array
     */
    private static function retornaArrayFileNamesDbDropScriptsFiles() 
    {
        // inicializando variaveis
        $arrayFilters = array();
        
    	//recuperando o path dos arquivos de create do banco de dados.
        $scriptsPath = self::retornaDBCreateScriptsPath();

		// recuperando filtros
		$arrayFilters[] = Basico_OPController_UtilOPController::retornaArrayFiltroArquivosOcultos();
		$arrayFilters[] = Basico_OPController_UtilOPController::retornaArrayFiltroNomesArquivos('create');

    	// carregando array com arquivos contidos no diretorio.
    	$dropScriptsFilesArray = Basico_OPController_UtilOPController::retornaArrayArquivosCaminho($scriptsPath, $arrayFilters);
    	
    	//invertendo a ordem do array
    	krsort($dropScriptsFilesArray);
    	// retornando array invertido de resultados
    	return $dropScriptsFilesArray;
    }
    
    /**
     * Retorna array com nomes dos arquivos de create para o banco que está sendo utilizado
     * 
     * @return String
     */
    private static function retornaArrayFileNamesDbCreateScriptsFiles() 
    {
       // inicializando variaveis
        $arrayFilters = array();
        
    	//recuperando o path dos arquivos de create do banco de dados.
        $scriptsPath = self::retornaDBCreateScriptsPath();

		// recuperando filtros
		$arrayFilters[] = Basico_OPController_UtilOPController::retornaArrayFiltroArquivosOcultos();
		$arrayFilters[] = Basico_OPController_UtilOPController::retornaArrayFiltroNomesArquivos('drop');
		
    	// carregando array com arquivos contidos no diretorio.
    	$createScriptsFilesArray = Basico_OPController_UtilOPController::retornaArrayArquivosCaminho($scriptsPath, $arrayFilters);
    	
    	// retornando array de resultados
    	return $createScriptsFilesArray;
    }
    
    /**
     * Retorna array com nomes dos arquivos de insert de dados para o banco que está sendo utilizado
     * 
     * @param String $scriptsPath
     * 
     * @return Array
     */
    private static function retornaArrayFileNamesDbDataScriptsFiles($scriptsPath = null) 
    {
       // inicializando variaveis
        $arrayFilters = array();
        
    	//recuperando o path dos arquivos de create do banco de dados.
    	if ($scriptsPath == null)
            $scriptsPath = self::retornaDBDataScriptsPath();

		// recuperando filtros
		$arrayFilters[] = Basico_OPController_UtilOPController::retornaArrayFiltroArquivosOcultos();
        $arrayFilters[] = Basico_OPController_UtilOPController::retornaArrayFiltroNomesArquivosSQL();
        
    	// carregando array com arquivos contidos no diretorio.
    	$dataScriptsFilesArray = Basico_OPController_UtilOPController::retornaArrayArquivosCaminho($scriptsPath, $arrayFilters);
    	
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
    	$dbResource = Basico_OPController_PersistenceOPController::bdRecuperaBDSessao();

    	//retornando o tipo do banco de dados
    	if ($dbResource instanceof Zend_Db_Adapter_Pdo_Pgsql){
    		// retornando tipo POSTGRESQL
    		return "PGSQL";    		
    	} else if ($dbResource instanceof Zend_Db_Adapter_Pdo_Dblib){
    		// retornando tipo MICROSOFT SQL SERVER
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
    		$tempReturn = Basico_OPController_UtilOPController::retornaValorTipado($boolean, TIPO_INTEIRO);
		else
			// retorna o booleano caso nao haja conversao
    		$tempReturn = Basico_OPController_UtilOPController::retornaValorTipado($boolean, TIPO_BOOLEAN);

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
     * Retorna a função do banco de dados que verifica por valores nulos do banco de dados
     * 
     * @return String
     */
    public static function retornaIsNullDB()
    {
        // recuperando o tipo de banco de dados ativo
    	$pdoTypeBancoAtivo = self::retornaPdoTypeConexaoAtiva();

    	// verificando o tipo de banco de dados
    	switch ($pdoTypeBancoAtivo) {
    		case 'MSSQL':
    			return 'isnull';
    		break;
    		case 'PGSQL';
    			return 'coalesce';
    		break;
    		default:
    			return null;
    		break;
    	}
    }

    /**
     * Retorna o operador de contatenação do banco de dados
     * 
     * @return String
     */
    public static function retornaConcatenadorDB()
    {
        // recuperando o tipo de banco de dados ativo
    	$pdoTypeBancoAtivo = self::retornaPdoTypeConexaoAtiva();

    	// verificando o tipo de banco de dados
    	switch ($pdoTypeBancoAtivo) {
    		case 'MSSQL':
    			return '+';
    		break;
    		case 'PGSQL';
    			return '||';
    		break;
    		default:
    			return null;
    		break;
    	}
    }

    /**
     * Retorna a funcao que retorna a data-hora atual do servidor, relacionado ao banco de dados ativo
     * 
     * @return String
     */
    public static function retornaFuncaoDataHoraAtualDB()
    {
    	// recuperando o tipo de banco de dados ativo
    	$pdoTypeBancoAtivo = self::retornaPdoTypeConexaoAtiva();

    	// verificando o tipo de banco de dados
    	switch ($pdoTypeBancoAtivo) {
    		case 'MSSQL':
    			return 'getdate()';
    		break;
    		case 'PGSQL';
    			return 'current_timestamp';
    		break;
    		default:
    			return null;
    		break;
    	}
    }

    /**
     * Retorna o formato de data do banco de dados em uso
     * 
     * @return String|null
     */
    public static function retornaFormatoDateTimeDB()
    {
       	// recuperando o tipo de banco de dados ativo
    	$pdoTypeBancoAtivo = self::retornaPdoTypeConexaoAtiva();

    	// verificando o tipo de banco de dados
    	switch ($pdoTypeBancoAtivo) {
    		case 'MSSQL':
    			return Zend_Date::ISO_8601;
    		break;

    		case 'PGSQL';
    			return DEFAULT_PG_DATABASE_DATETIME_FORMAT;
    		break;

    		default:
    			return null;
    		break;
    	}
    }

    /**
     * Modifica uma string substituindo tags pelos valores relacionados ao banco de dados ativo
     * 
     * @param String $sqlScript
     * 
     * @return void
     */
    public static function substituiTagsSQLScriptDB(&$sqlScript)
    {
    	// fazendo substituicoes de tags
    	$sqlScript = str_replace('@false',  self::retornaBooleanDB(false, true) , $sqlScript);
    	$sqlScript = str_replace('@true',   self::retornaBooleanDB(true, true) , $sqlScript);
    	$sqlScript = str_replace('@now',    self::retornaFuncaoDataHoraAtualDB() , $sqlScript);
    	$sqlScript = str_replace('@isnull', self::retornaFuncaoDataHoraAtualDB() , $sqlScript);
    }

    /**
     * Retorna o path dos arquivos de Create para o banco que está sendo utilizado.
     * 
     * @return String
     */
    private static function retornaDBCreateScriptsPath()
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
     * 
     * @return String
     */
    private static function retornaDBDataScriptsPath()
    {
    	//retornando o path dos scripts de banco de dados de acordo com o tipo do banco
    	switch (self::retornaPdoTypeConexaoAtiva()) {
    		case "PGSQL":
    		    return BASICO_DB_PGSQL_DATA_SCRIPTS_PATH;
    		case "MSSQL":
    			return BASICO_DB_MSSQL_DATA_SCRIPTS_PATH;     
    	}
    	
    }

    /**
     * Retorna se a tabela existe ou nao
     * 
     * @param String $nomeTabela
     * @param String $schema
     * @return Boolean
     */
    public static function tabelaExiste($nomeTabela, $schema = null)
    {
    	// recuperando resource do bando de dados.
		$auxDb = Basico_OPController_PersistenceOPController::bdRecuperaBDSessao();
		// verificando se a tabela existe
    	if (count($auxDb->describeTable($nomeTabela, $schema)) > 0) {
    		// retornando verdadeiro
    		return true;
    	}

    	// retornando falso
    	return false;
    }

    /**
     * Verifica se o campo de uma tabela existe
     * 
     * @param String $nomecampo - nome do campo que deseja verificar se existe
     * @param String $nomeTabela - nome da tabela do campo que deseja verificar se existe
     * @param String $schema - nome do schema da tabela do campo que deseja verificar se existe
     * 
     * @return Boolean - true se o campo existir, false se não
     * 
     * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
     * @since 10/07/2012
     */
    public static function campoExiste($nomecampo, $nomeTabela, $schema = null)
    {
    	// verificando se não foi passado o nome do campo e tabela
    	if ((!$nomecampo) or (!$nomeTabela)) {
    		// retornando falso
    		return false;
    	}

    	// recuperando informações sobre a tabela
    	$arrayDescricaoTabela = $auxDb = Basico_OPController_PersistenceOPController::bdRecuperaBDSessao()->describeTable($nomeTabela, $schema);

    	// recuperando os nomes dos campos da tabela
    	$arrayNomesCamposTabela = array_keys($arrayDescricaoTabela);

    	// limpando memória
    	unset($arrayDescricaoTabela);

    	// retornando o resultado da verificação se o campo existe no array de campos da tabela
    	return (array_search($nomecampo, $arrayNomesCamposTabela) > 0);
    }

	/**
	 * Retorna a quantidade de linhas de um modelo (e sua condição SQL), via SQL
	 * 
	 * @param String $objetoModelo
	 * @param String $condicaSQL
	 * 
	 * @return Integer
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 16/04/2012
	 */
	public static function retornaQuantidadeLinhasModeloCondicaoSQLViaSQL($objetoModelo, $condicaSQL)
	{
		// recuperando o nome da tabela
		$nomeTabelaModelo = self::retornaTableNameObjeto($objetoModelo);

		// montando a query para recuperar a quantidade de registros
		$queryQuantidadeRegistros = "SELECT count(id) AS total_registros FROM {$nomeTabelaModelo}";

		// verificando se existe condição SQL passada
		if ($condicaSQL) {
			// adicionando condição SQL
			$queryQuantidadeRegistros .= " WHERE {$condicaSQL}";
		}

		// recuperando resultados
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryQuantidadeRegistros);

		// verificando resultado
		if (count($arrayResultados)) {
			// retornando a quantidade de registros
			return (int) $arrayResultados[0]['total_registros'];
		}

		return 0;
	}

	/**
	 * Retorna a quantidade de linhas de um determinado schema
	 * 
	 * @param String $schemaname
	 * 
	 * @return Integer
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	public static function retornaQuantidadeTabelasSchema($schemaname)
	{
		// verificando se nao foi passado o nome do schema
		if (!$schemaname) {
			// retornando zero
			return 0;
		}

		// query para retornar a quantidade de tabelas em um schema
		$queryRetornaQuantidadeTabelasSchema = "SELECT count(tables.table_name) AS total_tabelas_schema

												FROM INFORMATION_SCHEMA.tables tables
												
												WHERE tables.table_catalog = 'rochedo_db'
												AND tables.table_type = 'BASE TABLE'
												AND tables.table_schema = ('{$schemaname}')";

		// recuperando resultados
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryRetornaQuantidadeTabelasSchema);

		// verificando resultado
		if (count($arrayResultados)) {
			// retornando a quantidade de registros
			return (int) $arrayResultados[0]['total_tabelas_schema'];
		}

		return 0;
	}

	/**
	 * Retorna a quantidade de campos de uma determinada tabela
	 * 
	 * @param String $schemaname
	 * @param String $tablename
	 * 
	 * @return Integer
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	public static function retornaQuantidadeCamposTabela($schemaname, $tablename)
	{
		// verificando se nao foi passado o nome do schema ou tabela
		if ((!$schemaname) or (!$tablename)) {
			// retornando zero
			return 0;
		}

		// query para retornar a quantidade de tabelas em um schema
		$queryRetornaQuantidadeCamposTabelas = "SELECT count(fields.column_name) AS total_campos_tabelas

												FROM INFORMATION_SCHEMA.columns fields
												LEFT JOIN INFORMATION_SCHEMA.tables tables ON (fields.table_schema = tables.table_schema AND
												                                           fields.table_name = tables.table_name)

												WHERE tables.table_catalog = 'rochedo_db'
												AND tables.table_type = 'BASE TABLE'
												AND tables.table_schema = '$schemaname'
												AND tables.table_name = '$tablename'";

		// recuperando resultados
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryRetornaQuantidadeCamposTabelas);

		// verificando resultado
		if (count($arrayResultados)) {
			// retornando a quantidade de registros
			return (int) $arrayResultados[0]['total_campos_tabelas'];
		}

		return 0;
	}

	/**
	 * Retorna uma string contendo os nomes dos check constraints de uma tabela
	 * 
	 * @param String $schemaname
	 * @param String $tablename
	 * 
	 * @return String|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 27/04/2012
	 */
	public static function retornaCheckContraintsTabela($schemaname, $tablename)
	{
		// verificando se nao foi passado o nome do schema ou tabela
		if ((!$schemaname) or (!$tablename)) {
			// retornando nulo
			return null;
		}

		// query para retornar as check constraint vinculadas a esta tabela
		$queryCheckContraintsTabela = "SELECT tc.constraint_name, cc.check_clause

									   FROM INFORMATION_SCHEMA.table_constraints tc
									   LEFT JOIN INFORMATION_SCHEMA.check_constraints cc ON (tc.constraint_name = cc.constraint_name)

									   WHERE tc.table_schema = '{$schemaname}'
									   AND tc.table_name = '{$tablename}'";

		// recuperando resultados
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryCheckContraintsTabela);

		// verificando resultado
		if (count($arrayResultados)) {
			// inicializando variaveis
			$retorno = "";

			// loop para montar string de saida
			foreach ($arrayResultados as $valor) {
				// montando string
				$retorno .= "{$valor['constraint_name']} ({$valor['check_clause']})" . QUEBRA_DE_LINHA;

				// limpando memoria
				unset($valor);
			}

			// limpando memoria
			unset($arrayResultados);

			// retornando a quantidade de registros
			return $retorno;
		}

		return null;
	}

	/**
	 * Retorna um array contendo as proprietades dos campos da tabela/schema especificada
	 * 
	 * @param String $schemaname
	 * @param String $tablename
	 * @param String $fieldname
	 * 
	 * @return Array|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 27/04/2012
	 */
	public static function retornaArrayAtributosCampoTabela($schemaname, $tablename, $fieldname)
	{
		// verificando se nao foi passado o nome do schema ou tabela
		if ((!$schemaname) or (!$tablename)) {
			// retornando nulo
			return null;
		}

		// query para recuperar os atributos do campo/tabela
		$queryAtributosTabela = "SELECT c.column_name, c.column_default, c.is_nullable, c.udt_name AS type, c.character_maximum_length, c.numeric_precision, c.numeric_scale

								 FROM INFORMATION_SCHEMA.columns c
								
								 WHERE c.table_schema = '{$schemaname}'
								 AND c.table_name = '{$tablename}'
								 AND c.column_name = '{$fieldname}'
								
								 ORDER BY c.ordinal_position";

		// recuperando resultados
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryAtributosTabela);

		// verificando resultado
		if (count($arrayResultados)) {
			// retornando array de resultados
			return $arrayResultados[0];
		}

		// retornando null
		return null;
	}
}