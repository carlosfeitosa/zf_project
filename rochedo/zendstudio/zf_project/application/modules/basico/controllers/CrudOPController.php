<?php
/**
 * Controlador de CRUD
 * 
 * Controlador responsavel pelas ações de CRUD
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 11/04/2012
 */

class Basico_OPController_CrudOPController
{
	/**
	 * Constantes para utilizacação via parametros do crud
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 11/04/2012
	 */
	const ATRIBUTO_TIPO_CRUD = "tipo";
	const ATRIBUTO_MODELO_CRUD = "modelo";
	const ATRIBUTO_CONDICAOSQL_CRUD = "condicaoSql";
	const ATRIBUTO_ORDENACAO_CRUD = "ordenacao";
	const ATRIBUTO_LIMITE_CRUD = "limite";
	const ATRIBUTO_OFFSET_CRUD = "offset";
	const ATRIBUTO_FORMATO_DADOS = 'formatoDados';
	const ATRIBUTO_TIPO_GRID = 'tipoGrid';
	const TIPO_LISTAR = "listar";
	const TIPO_INSERIR = "inserir";
	const TIPO_EDITAR = "editar";
	const TIPO_SALVAR = "salvar";
	const TIPO_EXCLUIR = "excluir";
	const TIPO_DADOS = "dados";
	const TIPO_GRID_JQGRID = 'jqgrid';
	const FORMATO_DADOS_JSON = 'json';
	const FORMATO_DADOS_XML = 'xml';
	const JQGRID_VALOR_PAGE = 'page';
	const JQGRID_VALOR_ROWS = 'rows';
	const JQGRID_VALOR_SIDX = 'sidx';
	const JQGRID_VALOR_SORD = 'sord';
	const JQGRID_VALOR_TOTAL_PAGES = 'total';
	const JQGRID_VALOR_TOTAL_RECS = 'records';
	const JQGRID_CHAVE_FILTROS = 'filters';
	const JQGRID_VALOR_SEARCH_FIELD = 'field';
	const JQGRID_VALOR_SEARCH_DATA = 'data';
	const JQGRID_VALOR_SEARCH_GROUP_OPERATOR = 'groupOp';
	const JQGRID_VALOR_SEARCH_RULES = 'rules';
	const JQGRID_VALOR_SEARCH_OPERATOR = 'op';
	const JQGRID_VALOR_SEARCH_OPERADOR_EQ = 'eq';
	const JQGRID_VALOR_SEARCH_OPERADOR_NOT_EQ = 'ne';
	const JQGRID_VALOR_SEARCH_OPERADOR_BEGIN_WITH = 'bw';
	const JQGRID_VALOR_SEARCH_OPERADOR_NOT_BEGIN_WITH = 'bn';
	const JQGRID_VALOR_SEARCH_OPERADOR_END_WITH = 'ew';
	const JQGRID_VALOR_SEARCH_OPERADOR_NOT_END_WITH = 'en';
	const JQGRID_VALOR_SEARCH_OPERADOR_CONTAINS = 'cn';
	const JQGRID_VALOR_SEARCH_OPERADOR_NOT_CONTAINS = 'nc';
	const JQGRID_VALOR_SEARCH_OPERADOR_IS_NULL = 'nu';
	const JQGRID_VALOR_SEARCH_OPERADOR_IS_NOT_NULL = 'nn';
	const JQGRID_VALOR_SEARCH_OPERADOR_IS_IN = 'in';
	const JQGRID_VALOR_SEARCH_OPERADOR_IS_NOT_IN = 'ni';
	const JQGRID_DEFAULT_LIMITE_POR_PAGINA = 15;
	const JQGRID_DEFAULT_OPCOES_LIMITE_POR_PAGINA = '[15, 30, 45, 0]';
	const JQGRID_MAX_STRING = 500;
	const JQGRID_MAX_STRING_TRUNCATE = 15;

	/**
	 * Processa o array de parametros do crud
	 * 
	 * @param Array $arrayParametrosCrud
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 11/04/2012
	 */
	private static function processaArrayParametrosCrud(&$arrayParametrosCrud)
	{
		// verificando se foi passado o modelo do crud
		if (!isset($arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD])) {
			// retornando falso
			return false;
		}

		// verificando se foi passado a condição SQL
		if (!isset($arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD])) {
			// setando o valor para nulo
			$arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD] = null;
		}

		// verificando se foi passado a ordenação
		if (!isset($arrayParametrosCrud[self::ATRIBUTO_ORDENACAO_CRUD])) {
			// setando o valor para nulo
			$arrayParametrosCrud[self::ATRIBUTO_ORDENACAO_CRUD] = null;
		}

		// verificando se foi passado o limite do crud
		if (!isset($arrayParametrosCrud[self::ATRIBUTO_LIMITE_CRUD])) {
			// setando o valor para nulo
			$arrayParametrosCrud[self::ATRIBUTO_LIMITE_CRUD] = null;
		}

		// verificando se foi passado o offset do crud
		if (!isset($arrayParametrosCrud[self::ATRIBUTO_OFFSET_CRUD])) {
			// setando o valor para nulo
			$arrayParametrosCrud[self::ATRIBUTO_OFFSET_CRUD] = null;
		}

		// verificando se foi passado o parametro formato dos dados
		if (!isset($arrayParametrosCrud[self::ATRIBUTO_FORMATO_DADOS])) {
			// setando o valor json
			$arrayParametrosCrud[self::ATRIBUTO_FORMATO_DADOS] = self::FORMATO_DADOS_JSON;
		}

		return true;
	}

	/**
	 * Processa o array de parametros do jqgrid
	 * 
	 * @param Array $arrayParametrosCrud
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 16/04/2012
	 */
	private static function processaArrayParametrosJQGrid(array &$arrayParametrosCrud)
	{
		// recuperando parametro do jqgrid
		$stringJsonParametrosJqGrid  = Basico_OPController_UtilOPController::retornaChaveUltimoElementoArray($arrayParametrosCrud);

		// verificando se o resultado da recuperação é um array json vindo do jqgrid
		if (0 !== strpos($stringJsonParametrosJqGrid, '{"_search')) {
			// parando a execução
			return true;
		}

		// completando a recuperacao dos parametros do jqGrid
		if (isset($arrayParametrosCrud[$stringJsonParametrosJqGrid]) && is_array($arrayParametrosCrud[$stringJsonParametrosJqGrid])) {
			// recuperando restante dos parametros do jqGrid
			$stringJsonParametrosJqGrid .= Basico_OPController_UtilOPController::retornaChaveUltimoElementoArray($arrayParametrosCrud[$stringJsonParametrosJqGrid]);
			// corrigindo fechamento do json dos parametros
			$stringJsonParametrosJqGrid .= "]}}";	
		}
		
		// corrigindo string json
		$stringJsonParametrosJqGrid = str_replace('"rules":', '"rules":[', str_replace('"{', '{', str_replace('\"', '"', $stringJsonParametrosJqGrid)));
				
		// transformando o array json em array php
		$arrayParametrosJqGrid = Basico_OPController_UtilOPController::encodedStringToArray($stringJsonParametrosJqGrid);
		
		// setando o valor do limite
		$arrayParametrosCrud[self::ATRIBUTO_LIMITE_CRUD] = $arrayParametrosJqGrid[self::JQGRID_VALOR_ROWS];
		// calculando e setando o offset
		$arrayParametrosCrud[self::ATRIBUTO_OFFSET_CRUD] = ($arrayParametrosCrud[self::ATRIBUTO_LIMITE_CRUD] * ($arrayParametrosJqGrid[self::JQGRID_VALOR_PAGE]-1));
		// setando o valor de ordenacao
		$arrayParametrosCrud[self::ATRIBUTO_ORDENACAO_CRUD] = "{$arrayParametrosJqGrid[self::JQGRID_VALOR_SIDX]} {$arrayParametrosJqGrid[self::JQGRID_VALOR_SORD]}";
		// setando a página
		$arrayParametrosCrud[self::JQGRID_VALOR_PAGE] = $arrayParametrosJqGrid[self::JQGRID_VALOR_PAGE];
		// setando o tipo de grid
		$arrayParametrosCrud[self::ATRIBUTO_TIPO_GRID] = self::TIPO_GRID_JQGRID;
		
		// verificando se foi passado parametros de filtros
		if ((isset($arrayParametrosJqGrid[self::JQGRID_CHAVE_FILTROS])) and ('' !== $arrayParametrosJqGrid[self::JQGRID_CHAVE_FILTROS])) {
			
			// recuperando parametros de filtragem
			$operadorGrupo   = $arrayParametrosJqGrid[self::JQGRID_CHAVE_FILTROS][self::JQGRID_VALOR_SEARCH_GROUP_OPERATOR];
			$regrasFiltragem = $arrayParametrosJqGrid[self::JQGRID_CHAVE_FILTROS][self::JQGRID_VALOR_SEARCH_RULES];
			
			// inicializando variaveis
			$i = 0;
			
			// loop para montar instrucoes da condicao sql
			foreach ($regrasFiltragem as $regra) {
				$campoBusca      = $regra[self::JQGRID_VALOR_SEARCH_FIELD];
				$stringBusca     = $regra[self::JQGRID_VALOR_SEARCH_DATA];
				$operadorBusca   = self::retornaOperadorSQLViaOperadorJQGrid($regra[self::JQGRID_VALOR_SEARCH_OPERATOR], $stringBusca);
				
				// verificando se a condicao sql esta completa
				if ($campoBusca != '' && $operadorBusca != '') {
					// setando condição SQL
					if ($i === 0)	
						$arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD] = "{$campoBusca} {$operadorBusca} {$stringBusca}";
					else
						$arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD] .= " {$operadorGrupo} {$campoBusca} {$operadorBusca} {$stringBusca}";
					
					$i++;
				}
				
			}
		}
				
		// removendo parametros jqgrid do array de parametros do crud
		unset($arrayParametrosCrud[$stringJsonParametrosJqGrid]);

		return true;
	}

	/**
	 * Retorna o operador SQL através do operador do JQGrid
	 * 
	 * @param String $operadorJQGrid
	 * @param String $valor
	 * 
	 * @return String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 16/04/2012
	 */
	private static function retornaOperadorSQLViaOperadorJQGrid($operadorJQGrid, &$valor)
	{
		// descobrindo o operador
		switch ($operadorJQGrid) {
			case self::JQGRID_VALOR_SEARCH_OPERADOR_EQ:
				if (is_string($valor))
					$valor = Basico_OPController_UtilOPController::retornaStringEntreCaracter($valor, "'");
				return ' = ';
				break;
			case self::JQGRID_VALOR_SEARCH_OPERADOR_NOT_EQ:
				return ' <> ';
				break;
			case self::JQGRID_VALOR_SEARCH_OPERADOR_BEGIN_WITH:
				// adicionando wildcard ao valor
				$valor = Basico_OPController_UtilOPController::retornaStringEntreCaracter($valor . '%', "'");
				return ' LIKE ';
				break;
			case self::JQGRID_VALOR_SEARCH_OPERADOR_NOT_BEGIN_WITH:
				// adicionando wildcard ao valor
				$valor = Basico_OPController_UtilOPController::retornaStringEntreCaracter($valor . '%', "'");
				return ' NOT LIKE ';
				break;
			case self::JQGRID_VALOR_SEARCH_OPERADOR_END_WITH:
				// adicionando wildcard ao valor
				$valor = Basico_OPController_UtilOPController::retornaStringEntreCaracter('%' . $valor, "'");
				return ' LIKE ';
				break;
			case self::JQGRID_VALOR_SEARCH_OPERADOR_NOT_END_WITH:
				// adicionando wildcard ao valor
				$valor = Basico_OPController_UtilOPController::retornaStringEntreCaracter('%' . $valor, "'");
				return ' NOT LIKE ';
				break;
			case self::JQGRID_VALOR_SEARCH_OPERADOR_CONTAINS:
				// adicionando wildcard ao valor
				$valor = Basico_OPController_UtilOPController::retornaStringEntreCaracter('%' . $valor . '%', "'");
				return ' LIKE ';
				break;
			case self::JQGRID_VALOR_SEARCH_OPERADOR_NOT_CONTAINS:
				// adicionando wildcard ao valor
				$valor = Basico_OPController_UtilOPController::retornaStringEntreCaracter('%' . $valor . '%', "'");
				return ' NOT LIKE ';
				break;
			case self::JQGRID_VALOR_SEARCH_OPERADOR_IS_NULL:
				// limpando o valor
				$valor = '';
				return ' IS NULL';
				break;
			case self::JQGRID_VALOR_SEARCH_OPERADOR_IS_NOT_NULL:
				// limpando o valor
				$valor = '';
				return ' IS NOT NULL';
				break;
			case self::JQGRID_VALOR_SEARCH_OPERADOR_IS_IN:
				// modificando o valor
				$valor = '(' . $valor . ')';
				return ' IN ';
				break;
			case self::JQGRID_VALOR_SEARCH_OPERADOR_IS_NOT_IN:
				// modificando o valor
				$valor = '(' . $valor . ')';
				return ' NOT IN ';
				break;
		}
	}

	/**
	 * Processa o crud via parametros
	 * 
	 * @param Array $arrayParametrosCrud
	 * 
	 * @return mixed
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 11/04/2012
	 */
	public static function processaCrudModelo(array $arrayParametrosCrud)
	{	
		// inicializando variáveis
		$nomeModeloCrud = null;

		// verificando se foi passado o tipo de operação
		if (isset($arrayParametrosCrud[self::ATRIBUTO_TIPO_CRUD])) {
			// recuperando tipo de operação
			$tipoOperacaoCrud = $arrayParametrosCrud[self::ATRIBUTO_TIPO_CRUD]; 
		} else {
			// setando para o tipo "listar"
			$tipoOperacaoCrud = self::TIPO_LISTAR;
		}

		// processando os parametros
		if ((self::TIPO_DADOS !== $tipoOperacaoCrud) and (!self::processaArrayParametrosCrud($arrayParametrosCrud))) {
			// retornando falso
			return false;
		}

		// verificando o tipo de operação
		switch ($tipoOperacaoCrud) {
			// crud inserção
			case self::TIPO_INSERIR:
			;
			break;
			// crud edição
			case self::TIPO_EDITAR:
			;
			break;
			// crud salvar
			case self::TIPO_SALVAR:
			;
			break;
			// crud excluir
			case self::TIPO_EXCLUIR:
			;
			break;
			// recuperar dados de um objeto
			case self::TIPO_DADOS:
				// processando os parametros vindos do jqgrid
				self::processaArrayParametrosJQGrid($arrayParametrosCrud);
				self::processaArrayParametrosCrud($arrayParametrosCrud);

				// retornando dados
				return self::retornaDados($arrayParametrosCrud, $arrayParametrosCrud[self::ATRIBUTO_FORMATO_DADOS]);
			break;
			// crud listar (default)
			case self::TIPO_LISTAR:
			default:
				// chamando método que monta o grid de listagem
				return self::listar($arrayParametrosCrud);
			break;
		}
	}

	/**
	 * Retorna os dados em um formato especificado
	 * 
	 * @param Array $arrayParametrosCrud
	 * @param String $formato
	 * 
	 * @return String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 11/04/2012
	 */
	private static function retornaDados($arrayParametrosCrud, $formato = self::FORMATO_DADOS_JSON)
	{
		// recuperando nome do controlador do modelo
		$instanciaModelo = new $arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]();

		// recuperando objetos
		$arrayObjetos = Basico_OPController_PersistenceOPController::bdObjectFetchList($instanciaModelo, 
																					   $arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD], 
		                                                                               $arrayParametrosCrud[self::ATRIBUTO_ORDENACAO_CRUD], 
		                                                                               $arrayParametrosCrud[self::ATRIBUTO_LIMITE_CRUD], 
		                                                                               $arrayParametrosCrud[self::ATRIBUTO_OFFSET_CRUD]);

		// recuperando atributos dos campos da tabela relacionada ao objeto
		$arrayAtributosCamposTabelaDBObjeto = Basico_OPController_DBUtilOPController::retornaArrayAtributosTabelaBDObjeto($instanciaModelo);

		// verificando se o resultado da recuperação é um array json vindo do jqgrid
		if ((isset($arrayParametrosCrud[self::ATRIBUTO_TIPO_GRID])) and ($arrayParametrosCrud[self::ATRIBUTO_TIPO_GRID] === self::TIPO_GRID_JQGRID)) {
			// processando dados para exibição
			self::processaDadosParaJQGrid($arrayObjetos, $arrayAtributosCamposTabelaDBObjeto);
		}
		
		// recuperando atributos timestamp para transformação
		$arrayAtributosTimestamp = self::retornaAtributosTimestamp($arrayAtributosCamposTabelaDBObjeto);

		// loop para adicionar elementos ao array de atributos timestamp para transformação
		foreach ($arrayAtributosTimestamp as $chave => $valor) {
			// transformando valor
			$arrayAtributosTimestamp[$chave] = array('tipo_dado' => $valor, 'formato_saida' => DEFAULT_DATETIME_FORMAT_PT_BR);
		}

		// recuperando a quantidade de registros retornados pela condição SQL, sem "limit"
		$quantidadeRegistros = Basico_OPController_DBUtilOPController::retornaQuantidadeLinhasModeloCondicaoSQLViaSQL($instanciaModelo, $arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD]);

		// verificando o formato
		switch ($formato) {
			case self::FORMATO_DADOS_JSON:
				// loop para transformar os objetos
				foreach ($arrayObjetos as $objeto) {
					// transformando objeto
					$arrayObjetoJson[] = Basico_OPController_UtilOPController::codificar($objeto, CODIFICAR_OBJETO_TO_ENCODED_STRING, $arrayAtributosTimestamp);
				}

				// verificando o retorno do array json
				if (!isset($arrayObjetoJson)) {
					// setando um array vazio
					$arrayObjetoJson = array();
				}

				// processando array de resultados para retornar no formato esperado pelo JqGrid
				$arrayObjetoJson = self::retornaArrayDadosJqGrid($arrayObjetoJson, $arrayParametrosCrud, $quantidadeRegistros);

				// transformando array em uma string json
				$resultado = Basico_OPController_UtilOPController::limpaArrayJson(Basico_OPController_UtilOPController::codificaArrayJson($arrayObjetoJson));
			break;
			case self::FORMATO_DADOS_XML:
				// loop para transformar os objetos
				foreach ($arrayObjetos as $objeto) {
					// transformando objeto
					$arrayObjetoArray[] = Basico_OPController_UtilOPController::codificar($objeto, CODIFICAR_OBJETO_TO_ARRAY);
				}

				// verificando o retorno do array de objetos
				if (!isset($arrayObjetoArray)) {
					// setando um array vazio
					$arrayObjetoArray = array();
				}

				// processando array de resultados para retornar no formato esperado pelo JqGrid
				$arrayObjetoArray = self::retornaArrayDadosJqGrid($arrayObjetoArray, $arrayParametrosCrud, $quantidadeRegistros);

				// transformando array em xml
				$resultado = Basico_OPController_UtilOPController::codificar($arrayObjetoArray, CODIFICAR_ARRAY_TO_XML);
			break;
			default:
				// retornando vazio
				return "";
			break;
		}

		// recuperando resultado
		$arrayResultado['content'] = array($resultado);
		
		// retornando resultado
		return $arrayResultado;
	}

	/**
	 * Processa os objetos para exibição do jqgrid
	 * 
	 * @param array $arrayObjetos
	 * @param array $arrayAtributosCamposTabelaDBObjeto
	 * 
	 * @return void
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 16/04/2012
	 */
	private static function processaDadosParaJQGrid(array &$arrayObjetos, array $arrayAtributosCamposTabelaDBObjeto)
	{
		// recuperando atributos transformáveis
		$arrayAtributosTransformaveis = self::retornaAtributosTransformaveis($arrayAtributosCamposTabelaDBObjeto);

		// loop para processar os objetos
		foreach ($arrayObjetos as $chave => $objeto) {
			// loop nos atributos transformáveis
			foreach ($arrayAtributosTransformaveis as $chaveAtributo => $arrayTipoAtributo) {
				// recuperando o nome do atributo
				$nomeAtributo = Basico_OPController_DBUtilOPController::retornaNomeAtributoCampo($chaveAtributo);

				// verificando se trata-se do rowinfo
				if ('rowinfo' !== $nomeAtributo) {
					// escapando aspas
					$objeto->$nomeAtributo = Basico_OPController_UtilOPController::trocaAspasDuplasPorAspasSimples($objeto->$nomeAtributo);

					// verificando o tipo de transformação
					if (('varchar' === $arrayTipoAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_DATATYPE]) and (self::JQGRID_MAX_STRING < $arrayTipoAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_LENGTH])) {
						// transformando o valor do varchar
						$objeto->$nomeAtributo = substr($objeto->$nomeAtributo, 0, self::JQGRID_MAX_STRING_TRUNCATE) . '...';
					}
				} else {
					// removendo o valor
					$objeto->$nomeAtributo = '...';
				}
			}
		}
	}

	/**
	 * Retorna um array com as atributos transformáveis (varchar)
	 * 
	 * @param array $arrayAtributosCamposTabelaDBObjeto
	 * 
	 * @return array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 16/04/2012
	 */
	private static function retornaAtributosTransformaveis(array $arrayAtributosCamposTabelaDBObjeto)
	{
		// inicializando variáveis
		$arrayRetorno = array();

		// loop para verificar se o atributo é transformável
		foreach ($arrayAtributosCamposTabelaDBObjeto as $chave => $arrayValores) {
			// verificando o tipo do campo
			switch ($arrayValores[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_DATATYPE]) {
				case 'varchar':
					// adicionando atributo que deve ser modificado
					$arrayRetorno[$chave] = array(Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_DATATYPE => $arrayValores[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_DATATYPE],
												  Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_LENGTH => $arrayValores[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_LENGTH]);
				break;
			}
		}

		// retornando resultado
		return $arrayRetorno;
	}

	/**
	 * Retorna um array com as atributos transformáveis (varchar)
	 * 
	 * @param array $arrayAtributosCamposTabelaDBObjeto
	 * 
	 * @return array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 16/04/2012
	 */
	private static function retornaAtributosTimestamp(array $arrayAtributosCamposTabelaDBObjeto)
	{
		// inicializando variáveis
		$arrayRetorno = array();

		// loop para verificar se o atributo é transformável
		foreach ($arrayAtributosCamposTabelaDBObjeto as $chave => $arrayValores) {
			// transformando o nome do atributo do banco de dados para atributo do objeto
			$chave = Basico_OPController_DBUtilOPController::retornaNomeAtributoCampo($chave);

			// verificando o tipo do campo
			switch ($arrayValores[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_DATATYPE]) {
				case 'timestamp':
					$arrayRetorno[$chave] = $arrayValores[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_DATATYPE];
				break;
			}
		}

		// retornando resultado
		return $arrayRetorno;
	}

	/**
	 * Retorna o array no formato de dados para o JQuery JqGrid
	 * 
	 * @param array $arrayDados
	 * @param array $arrayParametrosCrud
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 12/04/2012
	 */
	private static function retornaArrayDadosJqGrid(array $arrayDados, array $arrayParametrosCrud, $totalRegistros)
	{
		// inicializando variáveis
		$paginaAtual = 1;
		$limit = self::JQGRID_DEFAULT_LIMITE_POR_PAGINA;

		// verificando e recuperando página atual vinda do grid
		if (isset($arrayParametrosCrud[self::JQGRID_VALOR_PAGE])) {
			// setando a página atual
			$paginaAtual = $arrayParametrosCrud[self::JQGRID_VALOR_PAGE];
		}

		// verificando e recuperando limite de linhas por página
		if (isset($arrayParametrosCrud[self::JQGRID_VALOR_ROWS])) {
			// setando a página atual
			$limit = $arrayParametrosCrud[self::JQGRID_VALOR_ROWS];
		}

		// recuperando total de linhas
		$totalLinhas = $totalRegistros;

		// verificando o total de linhas para calcular paginação
		if ($totalLinhas) {
			// calculando o total de páginas
			$totalPaginas = ceil($totalLinhas / $limit);
		} else {
			// setando o total de páginas
			$totalPaginas = 0;
		}

		// verificando se a página atual é maior que o total de páginas
		if ($paginaAtual > $totalPaginas) {
			// setando a página atual para a última página
			$paginaAtual = $totalPaginas;
		}

		// motando o array de resposta
		$arrayResultado[self::JQGRID_VALOR_PAGE] = $paginaAtual;
		$arrayResultado[self::JQGRID_VALOR_TOTAL_PAGES] = $totalPaginas;
		$arrayResultado[self::JQGRID_VALOR_TOTAL_RECS] = $totalLinhas;
		$arrayResultado[self::JQGRID_VALOR_ROWS] = $arrayDados;

		// retornando o array
		return $arrayResultado;
	}

	/**
	 * Retorna a url de recuperação de dados
	 * 
	 * @param array $arrayParametrosCrud
	 * 
	 * @return String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 11/04/2012
	 */
	private static function retornaUrlRecuperacaoDados(array $arrayParametrosCrud)
	{
		// montando a url
		$urlRetorno = Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_UtilOPController::retornaBaseUrl() . "/basico/administrador/crud/tipo/dados/modelo/{$arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]}/condicaoSql/{$arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD]}";

		// retornando a url
		return $urlRetorno;
	}

	/**
	 * Lista os dados de um modelo
	 * 
	 * @param Array $arrayParametrosCrud
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 11/04/2012
	 */
	private static function listar(array $arrayParametrosCrud)
	{
		// inicializando variáveis
		$arrayRetornoContent = array();
		$arrayRetornoScripts = array();

		// recuperando retorno
		$arrayRetornoContent[] = self::retornaHTMLCrud($arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]);
		$arrayRetornoScripts[] = self::retornaJavaScriptCrud();
		$arrayRetornoScripts[] = self::retornaJavaScriptInicalizacaoGridCrud($arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD], self::retornaUrlRecuperacaoDados($arrayParametrosCrud), 'id');

		// inicializando array de resultados
		$arrayResultado['content'] = $arrayRetornoContent;
		$arrayResultado['scripts'] = $arrayRetornoScripts;
		
		return $arrayResultado;
	}

	/**
	 * Retorna o HTML para montagem do grid do crud
	 * 
	 * @param String $nomeModelo
	 * 
	 * @return String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 11/04/2012
	 */
	private static function retornaHTMLCrud($nomeModelo)
	{
		// retornando o HTML
		return "<br><table id='listagem-{$nomeModelo}'></table><div id='paginacao-{$nomeModelo}'></div></br>";
	}

	/**
	 * Retorna o include javascript para montagem do grid
	 * 
	 * @return String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 11/04/2012
	 */
	private static function retornaJavaScriptCrud()
	{
		// adicionando arquivo de linguagem do jgGrid 
		$scriptRetorno = Basico_OPController_UtilOPController::retornaJavaScriptSourceEntreTagsScriptHtml(Basico_OPController_UtilOPController::retornaBaseUrl() . JQGRID_JAVASCRIPT_LANGUAGE_FILE_PATH);
		
		// adicionando arquivo js do jqGrid
		$scriptRetorno .= Basico_OPController_UtilOPController::retornaJavaScriptSourceEntreTagsScriptHtml(Basico_OPController_UtilOPController::retornaBaseUrl() . JQGRID_JAVASCRIPT_FILE_PATH);
		
		// adicionando arquivo js do debug do jqGrid
		$scriptRetorno .= Basico_OPController_UtilOPController::retornaJavaScriptSourceEntreTagsScriptHtml(Basico_OPController_UtilOPController::retornaBaseUrl() . JQGRID_JAVASCRIPT_DEBUG_FILE_PATH);
		
		return $scriptRetorno;
	}

	/**
	 * Retorna a inicialização do grid do crud
	 * 
	 * @param String $nomeModelo
	 * @param String $urlRecuperacaoDados
	 * @param String $campoOrdenadorInicial 
	 * @param String $tipoDados
	 * @param Integer $alturaGrid
	 * @param Integer $larguraGrid 
	 * @param Integer $linhasPorPagina
	 * @param Array $opcoesLinhasPorPagina
	 * @param Array $arrayOperacoesPermitidas
	 * 
	 * @return String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 */
	private static function retornaJavaScriptInicalizacaoGridCrud($nomeModelo, $urlRecuperacaoDados, $campoOrdenadorInicial, $tipoDados = 'json', $alturaGrid = 330, $larguraGrid = 1000, $linhasPorPagina = self::JQGRID_DEFAULT_LIMITE_POR_PAGINA, $opcoesLinhasPorPagina = self::JQGRID_DEFAULT_OPCOES_LIMITE_POR_PAGINA, $arrayOperacoesPermitidas = array('add' => false, 'edit' => false, 'del' => false))
	{
		// recuperando o nome da listagem e nome paginação
		$nomeListagem  = "listagem-{$nomeModelo}";
		$nomePaginacao = "paginacao-{$nomeModelo}";

		// recuperando nome do controlador do modelo
		$instanciaModelo = new $nomeModelo();

		// recuperando atributos do modelo
		$arrayAtributosModelo = $instanciaModelo->retornaAtributos();

		// inicializando variáveis
		$stringColNames = '';
		$stringColModel = '';
		$larguraGrid    = 0;

		// recuperando atributos dos campos da tabela relacionada ao objeto
		$arrayAtributosCamposTabelaDBObjeto = Basico_OPController_DBUtilOPController::retornaArrayAtributosTabelaBDObjeto($instanciaModelo);

		// recuperando as larguras das colunas
		$arrayLarguraColunas = self::retornaArrayLarguraColunasJQGridViaArrayAtributosCamposTabela($arrayAtributosCamposTabelaDBObjeto);
		
		// montando string serializada
		foreach ($arrayAtributosModelo as $chave => $atributoModelo) {
			// setando string colNames
			$stringColNames .= Basico_OPController_UtilOPController::retornaStringEntreCaracter($atributoModelo, "'");

			// recuperando o nome do atributo no banco de dados
			$nomeAtributoBD = Basico_OPController_DBUtilOPController::retornaNomeCampoAtributo($atributoModelo);

			// recuperando a largura da coluna
			$larguraColuna = $arrayLarguraColunas[$nomeAtributoBD];

			// somando a largura do grid
			$larguraGrid += $larguraColuna;

			// setando string colModel
			$stringColModel .= "{name: '{$atributoModelo}', index: '{$nomeAtributoBD}', width:{$larguraColuna}, editable:true, editoptions:{size:10, type:'select'}}";

			// verificando se não trata-se do último elemento
			if ($chave !== Basico_OPController_UtilOPController::retornaChaveUltimoElementoArray($arrayAtributosModelo)) {
				$stringColNames .= ', ';
				$stringColModel .= ',';
			}
		}

		// montando resposta
		$retorno = "$(function(){
					
						$('#{$nomeListagem}').jqGrid({
						   	url: '{$urlRecuperacaoDados}',
							datatype: '{$tipoDados}',
							height: {$alturaGrid},
							width: {$larguraGrid},
						   	colNames: [{$stringColNames}],
						   	colModel: [
						   		{$stringColModel}
						   	],
						   	rowNum: {$linhasPorPagina},
						   	rowList: {$opcoesLinhasPorPagina},
						   	pager: '#{$nomePaginacao}',
						   	sortname: '{$campoOrdenadorInicial}',
						    viewrecords: true,
						    sortorder: 'asc',
							multiselect: false,
						    mtype: 'GET',
							gridview: true,
							editurl:'/',
							caption: 'CRUD {$nomeModelo}',
						    serializeGridData: function (dados) {
												return JSON.stringify(dados)

												},

							jsonReader: {repeatitems: false, id: 'id'}
						})
						
				});
				
				$(function(){
				
					$('#{$nomeListagem}').jqGrid('navGrid','#{$nomePaginacao}',{view: true},{height:'auto', width:'auto',reloadAfterSubmit:false},{height:'auto',reloadAfterSubmit:false},{reloadAfterSubmit:false},{multipleSearch:true});
				});";
		
		// retornando script
		return Basico_OPController_UtilOPController::retornaJavaScriptEntreTagsScriptHtml($retorno);
	}

	/**
	 * Retorna um array contendo as larguras para as colunas do jqgrid através do array de atributos de campos de uma tabela
	 * 
	 * @param Array $arrayAtributosCamposTabela
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 16/04/2012
	 */
	private static function retornaArrayLarguraColunasJQGridViaArrayAtributosCamposTabela(array $arrayAtributosCamposTabela)
	{
		// loop para montar a resposta
		foreach ($arrayAtributosCamposTabela as $chave => $arrayValores) {
			// verificando o tipo do dado
			switch ($arrayValores[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_DATATYPE]) {
				case 'varchar':
					if ('rowinfo' === $chave) {
						// setando a larguda da coluna para o caso do rowinfo
						$arrayResultado[$chave] = 20;
					} else if ($arrayValores[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_LENGTH] >= self::JQGRID_MAX_STRING) {
						// setando a largura da coluna para o caso do dado que será truncado por ser muito grande para ser exibido no grid
						$arrayResultado[$chave] = 90;
					} else {
						// setando a largara da coluna para o caso do dado que será exibido integralmente
						$arrayResultado[$chave] = 200;
					}
				break;
				case 'timestamp':
					// setando a largura para colunas tipo data/hora
					$arrayResultado[$chave] = 120;
				break;
				default:
					// setando a largura para o valor default
					$arrayResultado[$chave] = 40;
				break;
			}
		}

		// retornando array de resultados
		return $arrayResultado;
	}
}