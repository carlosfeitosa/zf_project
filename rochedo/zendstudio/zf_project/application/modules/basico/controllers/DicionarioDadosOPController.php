<?php
/**
 * Controlador DicionarioDados
 * 
 * Controlador responsável pelo Dicionario de dados do sistema.
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 * @since 23/04/2012
 * 
 */

class Basico_OPController_DicionarioDadosOPController
{
	/**
	 *  
	 * @var Basico_OPController_DicionarioDadosOPController object
	 */
	protected static $_singleton;
	/**
	 * 
	 * @var Basico_OPController_ModuloOPController object
	 */
	protected $_moduloOPController;
	/**
	 * 
	 * @var Basico_OPController_CVCOPController object
	 */
	protected $_cvcOPController;
	/**
	 * 
	 * @var Basico_OPController_CategoriaOPController object
	 */
	protected $_categoriaOPController;
	/**
	 * 
	 * @var Basico_OPController_DicionarioDadosSchemaOPController object
	 */
	protected $_dicionarioDadosSchemaOPController;
	/**
	 * 
	 * @var Basico_OPController_DicionarioDadosAssocTableOPController object
	 */
	protected $_dicionarioDadosAssocTableOPController;
	/**
	 * 
	 * @var Basico_OPController_DicionarioDadosAssocFieldOPController object
	 */
	protected $_dicionarioDadosAssocFieldOPController;

	/**
	 * Construtor do Controlador DicionarioDados
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// inicializando o controlador
		$this->_init();

		return;
	}

	/**
	 * Inicializa o controlador Basico_OPController_DicionarioDadosOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{ 
		// inicializando controladores
		$this->_initControllers();

		return;
	}

	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function _initControllers()
	{
		// instanciando controladores utilzados pelo controlador
		$this->_moduloOPController                    = Basico_OPController_ModuloOPController::getInstance();
		$this->_cvcOPController                       = Basico_OPController_CVCOPController::getInstance();
		$this->_categoriaOPController				  = Basico_OPController_CategoriaOPController::getInstance();
		$this->_dicionarioDadosSchemaOPController     = Basico_OPController_DicionarioDadosSchemaOPController::getInstance();
		$this->_dicionarioDadosAssocTableOPController = Basico_OPController_DicionarioDadosAssocTableOPController::getInstance();
		$this->_dicionarioDadosAssocFieldOPController = Basico_OPController_DicionarioDadosAssocFieldOPController::getInstance();

		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_DicionarioDadosOPController
	 * 
	 * @return Basico_OPController_DicionarioDadosOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DicionarioDadosOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Verifica diferença no dicionario de dados
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 24/04/2012
	 */
	public function processaDiferencaDicionarioDados()
	{
	    // recuperando o tempo de execucao do php
		$tempoExecucaoPhp = ini_get('max_execution_time');
		// recuperando o limite de memoria do php
		$limiteMemoriaPhp = ini_get('memory_limit');

		// setando o tempo de execucao do php
		set_time_limit(APPLICATION_DATABASE_MAKE_SYSTEM_CHECKSUM_MAXTIME_SECONDS);
		// setando o limite de memoria do php para 256M
		ini_set('memory_limit', APPLICATION_DICIONARIO_DADOS_MEMORY_SIZE);

		// recuperando array de resultados
		$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($this->retornaQueryDiferenca());

		// verificando o resultado da recuperação
		if (count($arrayResultado)) {
			// loop para montar arrays para processamento
			foreach ($arrayResultado as $linha) {
				// verificando tipo de processamento
				switch ($linha['tipo']) {
					case '01-schemas':
						// recuperando linha para array de schemas modificados
						$arraySchema[] = $linha;
					break;
					case '02-tables':
						// recuperando linha para array de schemas modificados
						$arrayTables[] = $linha;
					break;
					case '03-fields':
						// recuperando linha para array de schemas modificados
						$arrayFields[] = $linha;
					break;
				}
			}

			// inicializando variáveis
			$resultado = true;

			// verificando arrays para processamento de schemas
			if ((isset($arraySchema)) and (count($arraySchema))) {
				// recuperando o resultado do processamento de schemas
				$resultado = $this->processaSchemas($arraySchema);
			}

			// verificando arrays para processamento de tables
			if ((true === $resultado) and (isset($arrayTables)) and (count($arrayTables))) {
				// recuperando o resultado do processamento de schemas
				$resultado = $this->processaTables($arrayTables);
			}
			
			// verificando arrays para processamento de fields
			if ((true === $resultado) and (isset($arrayFields)) and (count($arrayFields))) {
				// recuperando o resultado do processamento de schemas
				$resultado = $this->processaFields($arrayFields);
			}

			// setando o tempo de execucao do php
			set_time_limit($tempoExecucaoPhp);
			// setando o limite de memoria do php para o default
			ini_set('memory_limit', $limiteMemoriaPhp);

			// limpando memoria
			unset($tempoExecucaoPhp);
			unset($limiteMemoriaPhp);

			// retornando resultado
			return $resultado;
		}

		// setando o tempo de execucao do php
		set_time_limit($tempoExecucaoPhp);
		// setando o limite de memoria do php para o default
		ini_set('memory_limit', $limiteMemoriaPhp);

		// limpando memoria
		unset($tempoExecucaoPhp);
		unset($limiteMemoriaPhp);

		// retornando falso
		return false;
	}

	/**
	 * Processa as diferenças nos schemas
	 * 
	 * @param array $arrayDados
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 24/04/2012
	 */
	private function processaSchemas(array $arrayDados)
	{
		// verificando se foi passado um array com dados
		if (count($arrayDados)) {
			// recuperando o id pessoa perfil sistema
			$idPessoaAssocclPerfilSistema = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

			// loop para processar array
			foreach ($arrayDados as $chave => $arrayValores) {
				// recuperando id do módulo
				$idModulo = $this->_moduloOPController->retornaIdModuloPorNomeViaSQL($arrayValores['nome_pai']);

				// verificando o tipo de operacao
				switch ($arrayValores['operacao']) {
					case 'insert':
						// verificando se já existe um schema desativado
						if ($this->_dicionarioDadosSchemaOPController->retornaIdSchemaPorSchemaname($arrayValores['nome'])) {
							// reativando schema
							$this->_dicionarioDadosSchemaOPController->ativaSchema($idPessoaAssocclPerfilSistema, $idModulo, $arrayValores['nome']);
						} else {
							// recuperando o nome da constante textual para localização
							$constanteTextual = "DD_SCHEMA_" . strtoupper($arrayValores['nome']);

							// verificando se a constante textual não existe no banco de dados
							if (!Basico_OPController_DicionarioExpressaoOPController::verificaTraducaoExiste($constanteTextual)) {
								// transformando o valor da constante textual para um valor de constante ainda não traduzida
								$constanteTextual = 'CONSTANTE_TEXTUAL_AINDA_NAO_TRADUZIDA';
							}

							// criando novo schema
							$this->_dicionarioDadosSchemaOPController->criarNovoSchemaAtivo($idPessoaAssocclPerfilSistema, $idModulo, $arrayValores['nome'], $constanteTextual);

							// limpando memória
							unset($constanteTextual);
						}
					break;
					case 'update':
						// desativando o schema
						$this->_dicionarioDadosSchemaOPController->desativaSchema($idPessoaAssocclPerfilSistema, $idModulo, $arrayValores['nome']);
					break;
				}

				// limpando memória
				unset($chave);
				unset($arrayValores);
			}

			// retornando sucesso
			return true;
		}

		// retornando fracasso
		return false;
	}

	/**
	 * Processa as diferenças nos tables
	 * 
	 * @param array $arrayDados
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 24/04/2012
	 */
	private function processaTables(array $arrayDados)
	{
		// inicializando variaveis
		$nomeSchema = '';
		$contador = 0;

		// verificando se foi passado um array com dados
		if (count($arrayDados)) {
			// recuperando o id pessoa perfil sistema
			$idPessoaAssocclPerfilSistema = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

			// loop para processar array
			foreach ($arrayDados as $chave => $arrayValores) {
				// verificando se houve troca de schema ou se trata-se da ultima volta do loop
				if ((('' !== $nomeSchema) and ($nomeSchema !== $arrayValores['nome_pai'])) or (count($arrayDados) === ($contador+1))) {
					// atualizando quantidade de tabelas do schema
					$this->_dicionarioDadosSchemaOPController->atualizaQuantidadeTabelasSchema($idPessoaAssocclPerfilSistema, $nomeSchema);
				} else {
					// voltando ponteiro do array
					prev($arrayDados);
				}

				// recuperando o nome do schema
				$nomeSchema = $arrayValores['nome_pai'];

				// recuperando id do schema
				$idSchema = $this->_dicionarioDadosSchemaOPController->retornaIdSchemaPorSchemaname($nomeSchema);

				// descobrindo o tipo da tabela
				$constCategoriaTipoTabela = $this->_dicionarioDadosAssocTableOPController->retornaValorConstanteCategoriaTipoTabela($arrayValores['nome']);

				// recuperando o id da categoria da tabela
				$idCategoria = $this->_categoriaOPController->retornaIdCategoriaTipoTabela($constCategoriaTipoTabela);

				// limpando memoria
				unset($constCategoriaTipoTabela);

				// verificando o tipo de operacao
				switch ($arrayValores['operacao']) {
					case 'insert':
						// verificando se já existe a tabela para reativação
						if ($this->_dicionarioDadosAssocTableOPController->retornaIdTablePorIdSchemaTablename($idSchema, $arrayValores['nome'])) {
							// reativando tabela
							$this->_dicionarioDadosAssocTableOPController->ativaTabela($idPessoaAssocclPerfilSistema, $idSchema, $arrayValores['nome']);
						} else {
							// recuperando o nome da constante textual para localização
							$constanteTextual = "DD_SCHEMA_" . strtoupper($arrayValores['nome_pai']) . "_TABLE_" . strtoupper($arrayValores['nome']);

							// verificando se a constante textual não existe no banco de dados
							if (!Basico_OPController_DicionarioExpressaoOPController::verificaTraducaoExiste($constanteTextual)) {
								// transformando o valor da constante textual para um valor de constante ainda não traduzida
								$constanteTextual = 'CONSTANTE_TEXTUAL_AINDA_NAO_TRADUZIDA';
							}

							// criando nova tabela
							$this->_dicionarioDadosAssocTableOPController->criarNovaTabelaAtiva($idPessoaAssocclPerfilSistema, $idCategoria, $idSchema, $arrayValores['nome'], $constanteTextual);
						}
					break;
					case 'update':
						// desativando a tabela
						$this->_dicionarioDadosAssocTableOPController->desativaTabela($idPessoaAssocclPerfilSistema, $idSchema, $arrayValores['nome']);
					break;
				}

				// limpando memória
				unset($chave);
				unset($arrayValores);
				unset($idCategoria);
				unset($idSchema);

				// incrementando o contador
				$contador++;
			}

			// limpando memoria
			unset($nomeSchema);
			unset($contador);
			unset($idPessoaAssocclPerfilSistema);

			// retornando sucesso
			return true;
		}

		// limpando memoria
		unset($nomeSchema);
		unset($contador);
		unset($idPessoaAssocclPerfilSistema);

		// retornando fracasso
		return false;
	}

	/**
	 * Processa as diferenças nos fields
	 * 
	 * @param array $arrayDados
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 27/04/2012
	 */
	private function processaFields(array $arrayDados)
	{
		// inicializando variaveis
		$nomeTabela = '';
		$nomeSchema = '';
		$contador = 0;

		// verificando se foi passado um array com dados
		if (count($arrayDados)) {
			// recuperando o id pessoa perfil sistema
			$idPessoaAssocclPerfilSistema = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

			// loop para processar array
			foreach ($arrayDados as $chave => $arrayValores) {
				// verificando se houve troca de campo/tabela ou trata-se da ultima volta do loop
				if ((('' !== $nomeTabela) and ($arrayValores['nome_pai'] !== $nomeTabela)) or (('' !== $nomeSchema) and ($arrayValores['schema_name'] !== $nomeSchema)) or (count($arrayDados) === ($contador + 1))) {
					// verificando se trata-se de campo unico
					if (1 === count($arrayDados)) {
						// recuperando o id do schema
						$idSchema = $this->_dicionarioDadosSchemaOPController->retornaIdSchemaPorSchemaname($arrayValores['schema_name']);
						// recuperando o nome da tabela
						$nomeTabela = $arrayValores['nome_pai'];
					}

					// atualizando quantidade de campos da tabela
					$this->_dicionarioDadosAssocTableOPController->atualizaQuantidadeCamposTabela($idPessoaAssocclPerfilSistema, $idSchema, $nomeTabela);
				}

				// recuperando id do schema
				$idSchema = $this->_dicionarioDadosSchemaOPController->retornaIdSchemaPorSchemaname($arrayValores['schema_name']);

				// recuperando o nome da tabela e schema
				$nomeTabela = $arrayValores['nome_pai'];
				$nomeSchema = $arrayValores['schema_name'];

				// recuperando id da tabela
				$idAssocTable = $this->_dicionarioDadosAssocTableOPController->retornaIdTablePorIdSchemaTablename($idSchema, $arrayValores['nome_pai']);

				// verificando o tipo de operacao
				switch ($arrayValores['operacao']) {
					case 'insert':
						// verificando se já existe o campo para reativação
						if ($this->_dicionarioDadosAssocFieldOPController->retornaIdFieldPorIdSchemaTablename($idAssocTable, $arrayValores['nome'])) {
							// reativando o campo
							$this->_dicionarioDadosAssocFieldOPController->ativaCampo($idPessoaAssocclPerfilSistema, $idAssocTable, $arrayValores['nome']);
						} else {
							// recuperando o nome da constante textual para localização
							$constanteTextual = "DD_SCHEMA_" . strtoupper($arrayValores['schema_name']) . "_TABLE_" . strtoupper($arrayValores['nome_pai']) . "_FIELD_" . strtoupper($arrayValores['nome']);

							// verificando se a constante textual não existe no banco de dados
							if (!Basico_OPController_DicionarioExpressaoOPController::verificaTraducaoExiste($constanteTextual)) {
								// transformando o valor da constante textual para um valor de constante ainda não traduzida
								$constanteTextual = 'CONSTANTE_TEXTUAL_AINDA_NAO_TRADUZIDA';
							}
							
							// criando novo campo
							$this->_dicionarioDadosAssocFieldOPController->criarNovoCampoAtivo($idPessoaAssocclPerfilSistema, $idAssocTable, $arrayValores['nome'], $constanteTextual);
						}
					break;
					case 'update':
						// desativando o campo
						$this->_dicionarioDadosAssocFieldOPController->desativaCampo($idPessoaAssocclPerfilSistema, $idAssocTable, $arrayValores['nome']);
					break;
				}

				// limpando memória
				unset($chave);
				unset($arrayValores);
				unset($idAssocTable);

				// atualizando contador
				$contador++;
			}

			// limpando memoria
			unset($nomeTabela);
			unset($nomeSchema);
			unset($contador);
			unset($idSchema);
			unset($idPessoaAssocclPerfilSistema);

			// retornando sucesso
			return true;
		}

		// limpando memoria
		unset($nomeTabela);
		unset($nomeSchema);
		unset($contador);
			
		// retornando fracasso
		return false;
	}

	/**
	 * Retorna a query que procura por falta de sincronia entre o banco de dados e o dicionario de dados
	 * 
	 * @return String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 23/04/2012
	 */
	private function retornaQueryDiferenca()
	{
		// query para recuperar as diferenças
		return "-- SCHEMAS PARA INSERT
				SELECT '01-schemas' AS tipo, schemas.schema_name,
				       CASE WHEN position('_' in schemas.schema_name) = 0 THEN 
				         lower(schemas.schema_name)
				       ELSE 
				         lower(substring(schemas.schema_name, 0, position('_' in schemas.schema_name))) 
				       END AS nome_pai,
				       schemas.schema_name AS nome,
				       'insert' AS operacao
				
				FROM INFORMATION_SCHEMA.schemata schemas
				LEFT JOIN basico_dicionario_dados.schema schemarf ON (schemas.schema_name = schemarf.schemaname)
				
				WHERE schemas.catalog_name = 'rochedo_db'
				AND schemas.schema_owner = 'rochedo_user'
				AND schemarf.id IS NULL
				
				UNION ALL
				
				-- SCHEMAS PARA UPDATE (DESATIVACAO)
				SELECT '01-schemas' AS tipo, schemarf.schemaname AS schema_name, lower(mod.nome) AS nome_pai,
				       schemarf.schemaname AS nome, 'update' AS operacao
				
				FROM basico_dicionario_dados.schema schemarf
				LEFT JOIN basico.modulo mod on (schemarf.id_modulo = mod.id)
				LEFT JOIN INFORMATION_SCHEMA.schemata schemas ON (schemas.schema_name = schemarf.schemaname)
				
				WHERE (schemas.schema_name IS NULL AND schemarf.ativo = true)
				
				UNION
				
				-- TABLES PARA INSERT
				SELECT '02-tables' AS tipo, tables.table_schema as schema_name,
				       lower(tables.table_schema) AS nome_pai,
				       tables.table_name AS nome,
				       'insert' AS operacao
				
				FROM INFORMATION_SCHEMA.tables tables
				LEFT JOIN basico_dicionario_dados.assoc_table tablerf ON (tables.table_name = tablerf.tablename)
				
				WHERE tables.table_catalog = 'rochedo_db'
				AND tables.table_type = 'BASE TABLE'
				AND tables.table_schema not in ('pg_catalog', 'information_schema')
				AND tablerf.id IS NULL
				
				UNION
				
				-- TABLES PARA UPDATE
				SELECT '02-tables' AS tipo, schemarf.schemaname AS schema_name,
				       schemarf.schemaname AS nome_pai, tablerf.tablename AS nome,
				       'update' AS operacao
				
				FROM basico_dicionario_dados.assoc_table tablerf
				LEFT JOIN basico_dicionario_dados.schema schemarf ON (tablerf.id_schema = schemarf.id)
				LEFT JOIN INFORMATION_SCHEMA.tables tables ON (tables.table_name = tablerf.tablename)
				
				WHERE (tables.table_name IS NULL AND tablerf.ativo = true)
				
				UNION
				
				-- FIELDS PARA INSERT
				SELECT '03-fields' AS tipo, fields.table_schema AS schema_name,
				       fields.table_name as nome_pai,
				       fields.column_name as nome,
				       'insert' AS operacao
				
				FROM INFORMATION_SCHEMA.columns fields
				LEFT JOIN INFORMATION_SCHEMA.tables tables ON (fields.table_schema = tables.table_schema AND
				                                               fields.table_name = tables.table_name)
				LEFT JOIN basico.modulo AS modulorf ON (CASE WHEN position('_' in tables.table_schema) = 0 THEN
				                                          lower(tables.table_schema)
				                                        ELSE
				                                          lower(substring(tables.table_schema, 0, position('_' in tables.table_schema)))
				                                        END = lower(modulorf.nome))
				LEFT JOIN basico_dicionario_dados.schema schemarf ON (modulorf.id = schemarf.id_modulo AND
				                                                      tables.table_schema = schemarf.schemaname)
				LEFT JOIN basico_dicionario_dados.assoc_table tablerf ON (schemarf.id = tablerf.id_schema AND
				                                                          tables.table_name = tablerf.tablename)
				LEFT JOIN basico_dicionario_dados.assoc_field fieldrf ON (tablerf.id = fieldrf.id_assoc_table AND
				                                                          fields.column_name = fieldrf.fieldname)
				
				WHERE tables.table_catalog = 'rochedo_db'
				AND tables.table_type = 'BASE TABLE'
				AND tables.table_schema not in ('pg_catalog', 'information_schema')
				AND fieldrf.id IS NULL
				
				UNION
				
				-- FIELDS PARA UPDATE
				SELECT '03-fields' AS tipo, schemarf.schemaname AS schema_name, tablerf.tablename AS nome_pai,
				       fieldrf.fieldname AS nome, 'update' AS operacao
				
				FROM basico_dicionario_dados.assoc_field fieldrf
				LEFT JOIN basico_dicionario_dados.assoc_table tablerf ON (fieldrf.id_assoc_table = tablerf.id)
				LEFT JOIN basico_dicionario_dados.schema schemarf ON (tablerf.id_schema = schemarf.id)
				LEFT JOIN INFORMATION_SCHEMA.columns fields ON (schemarf.schemaname = fields.table_schema AND
				                                               tablerf.tablename = fields.table_name AND
				                                               fieldrf.fieldname = fields.column_name)
				
				WHERE (fields.column_name IS NULL AND fieldrf.ativo = true)
				
				ORDER BY tipo, operacao, schema_name, nome_pai, nome";
	}
}