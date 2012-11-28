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
	 * Constantes para utilização via parametros do crud
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
	const TIPO_MODIFICAR = 'modificar';
	const TIPO_INSERIR = "inserir";
	const TIPO_EDITAR = "editar";
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
	const JQGRID_ATRIBUTO_TIPO_OPERACAO_MODIFICAR = 'oper';
	const JQGRID_ATRIBUTO_ID_TIPO_OPERADOR_MODIFICAR = 'id';
	const JQGRID_VALOR_OPERACAO_MODIFICAR_UPDATE = 'edit';
	const JQGRID_VALOR_OPERACAO_MODIFICAR_INSERT = 'add';
	const JQGRID_VALOR_OPERACAO_MODIFICAR_DELETE = 'del';

	/**
	 * Processa o array de parametros do crud para listar dados
	 * 
	 * @param Array $arrayParametrosCrud
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 11/04/2012
	 */
	private static function processaArrayParametrosCrudListarDados(array &$arrayParametrosCrud)
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
			// setando o valor json como formato padrao
			$arrayParametrosCrud[self::ATRIBUTO_FORMATO_DADOS] = self::FORMATO_DADOS_JSON;
		}

		// retornando sucesso
		return true;
	}

	/**
	 * Processa o array de parametros do crud para modificar dados, via JqGrid
	 * 
	 * @param Array $arrayParametrosCrud
	 * @param String $tipoOperacaoCrud
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/05/2012
	 */
	private static function processaArrayParametrosCrudModificarDadosJqGrid(array &$arrayParametrosCrud, &$tipoOperacaoCrud)
	{
		// verificando se foi passado o modelo do crud
		if (!isset($arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD])) {
			// retornando fracasso
			return false;
		}

		// verificando se foi passado o tipo de operação
		if ((!isset($arrayParametrosCrud[self::JQGRID_ATRIBUTO_TIPO_OPERACAO_MODIFICAR])) and (!isset($arrayParametrosCrud[self::JQGRID_ATRIBUTO_ID_TIPO_OPERADOR_MODIFICAR]))) {
			// retornando fracasso
			return false;
		}

		// switch para transformar os parametros de acordo com o tipo de operaçao de modificação enviado pelo jqgrid
		switch ($arrayParametrosCrud[self::JQGRID_ATRIBUTO_TIPO_OPERACAO_MODIFICAR]) {
			case self::JQGRID_VALOR_OPERACAO_MODIFICAR_UPDATE:
				// transformando o array de parametros
				$arrayParametrosCrud[self::ATRIBUTO_TIPO_CRUD] = self::TIPO_EDITAR;
				$arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD] = self::JQGRID_ATRIBUTO_ID_TIPO_OPERADOR_MODIFICAR . '=' . $arrayParametrosCrud[self::JQGRID_ATRIBUTO_ID_TIPO_OPERADOR_MODIFICAR];
			break;
			case self::JQGRID_VALOR_OPERACAO_MODIFICAR_INSERT:
				// transformando o array de parametros
				$arrayParametrosCrud[self::ATRIBUTO_TIPO_CRUD] = self::TIPO_INSERIR;
			break;
			case self::JQGRID_VALOR_OPERACAO_MODIFICAR_DELETE:
				// transformando o array de parametros
				$arrayParametrosCrud[self::ATRIBUTO_TIPO_CRUD] = self::TIPO_EXCLUIR;
				$arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD] = self::JQGRID_ATRIBUTO_ID_TIPO_OPERADOR_MODIFICAR . '=' . $arrayParametrosCrud[self::JQGRID_ATRIBUTO_ID_TIPO_OPERADOR_MODIFICAR];
			break;
		}

		// limpando parametros
		unset($arrayParametrosCrud[self::JQGRID_ATRIBUTO_TIPO_OPERACAO_MODIFICAR]);
		unset($arrayParametrosCrud[self::JQGRID_ATRIBUTO_ID_TIPO_OPERADOR_MODIFICAR]);

		// setando o tipo de operação crud
		$tipoOperacaoCrud = $arrayParametrosCrud[self::ATRIBUTO_TIPO_CRUD];

		// retornando sucesso
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
	private static function processaArrayParametrosJQGridListarDados(array &$arrayParametrosCrud)
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

		// retornando sucesso
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

		// retornando vazio
		return '';
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
		if (((self::TIPO_DADOS !== $tipoOperacaoCrud) and (self::TIPO_MODIFICAR !== $tipoOperacaoCrud)) and (!self::processaArrayParametrosCrudListarDados($arrayParametrosCrud))) {
			// retornando falso
			return false;
		} else if ((self::TIPO_MODIFICAR === $tipoOperacaoCrud) and (((array_key_exists(self::ATRIBUTO_TIPO_GRID, $arrayParametrosCrud) and (self::TIPO_GRID_JQGRID === $arrayParametrosCrud[self::ATRIBUTO_TIPO_GRID]))) and 
																	 (!self::processaArrayParametrosCrudModificarDadosJqGrid($arrayParametrosCrud, $tipoOperacaoCrud)))) {
			// retornando falso
			return false;
		}

		// verificando o tipo de operação
		switch ($tipoOperacaoCrud) {
			// crud inserção
			case self::TIPO_INSERIR:
				// retornando o resultado do método de inserir o objeto
			  return self::inserirDados($arrayParametrosCrud);
			break;
			// crud edição
			case self::TIPO_EDITAR:
				// retornando o resultado do método de editar o objeto
				return self::editarDados($arrayParametrosCrud);
			break;
			// crud excluir
			case self::TIPO_EXCLUIR:
				// retornando o resultado do método de excluir o objeto
				return self::apagarDados($arrayParametrosCrud);
			break;
			// recuperar dados de um objeto
			case self::TIPO_DADOS:
				// verificando o formato do grid
				if ((isset($arrayParametrosCrud[self::ATRIBUTO_TIPO_GRID])) and (self::TIPO_GRID_JQGRID === $arrayParametrosCrud[self::ATRIBUTO_TIPO_GRID])) {
					// processando os parametros vindos do jqgrid
					self::processaArrayParametrosJQGridListarDados($arrayParametrosCrud);
				}

				// processando array de parametros do crud
				self::processaArrayParametrosCrudListarDados($arrayParametrosCrud);

				// retornando dados
				return self::retornaDados($arrayParametrosCrud, $arrayParametrosCrud[self::ATRIBUTO_FORMATO_DADOS]);
			break;
			// crud listar (default)
			case self::TIPO_LISTAR:
			default:
				// chamando método que monta o grid de listagem
				return self::listarDados($arrayParametrosCrud);
			break;
		}

		// retornando fracasso
		return false;
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
	private static function retornaDados(array $arrayParametrosCrud, $formato = self::FORMATO_DADOS_JSON)
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

				// verificando se o resultado da recuperação é um array json vindo do jqgrid
				if ((isset($arrayParametrosCrud[self::ATRIBUTO_TIPO_GRID])) and ($arrayParametrosCrud[self::ATRIBUTO_TIPO_GRID] === self::TIPO_GRID_JQGRID)) {
					// processando array de resultados para retornar no formato esperado pelo JqGrid
					$arrayObjetoJson = self::retornaArrayDadosJqGrid($arrayObjetoJson, $arrayParametrosCrud, $quantidadeRegistros);
				} else {
					// colocando o array de resultados dentro de outro array
					$arrayObjetoJson = array($arrayObjetoJson);
				}

				// transformando array em uma string json
				$resultado = Basico_OPController_UtilOPController::limpaArrayJson(Basico_OPController_UtilOPController::codificaArrayJson($arrayObjetoJson));
			break;
			case self::FORMATO_DADOS_XML:
				// loop para transformar os objetos
				foreach ($arrayObjetos as $objeto) {
					// transformando objeto
					$arrayObjetoArray[] = Basico_OPController_UtilOPController::codificar($objeto, CODIFICAR_OBJETO_TO_ARRAY, $arrayAtributosTimestamp);
				}

				// verificando o retorno do array de objetos
				if (!isset($arrayObjetoArray)) {
					// setando um array vazio
					$arrayObjetoArray = array();
				}
								// verificando se o resultado da recuperação é um array json vindo do jqgrid
				if ((isset($arrayParametrosCrud[self::ATRIBUTO_TIPO_GRID])) and ($arrayParametrosCrud[self::ATRIBUTO_TIPO_GRID] === self::TIPO_GRID_JQGRID)) {
					// processando array de resultados para retornar no formato esperado pelo JqGrid
					$arrayObjetoArray = self::retornaArrayDadosJqGrid($arrayObjetoArray, $arrayParametrosCrud, $quantidadeRegistros);
				}

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
					if (('varchar' === $arrayTipoAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_DATATYPE]) and 
						(self::JQGRID_MAX_STRING < $arrayTipoAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_LENGTH]) and 
						(null != $objeto->$nomeAtributo) and
						(strlen($objeto->$nomeAtributo) > self::JQGRID_MAX_STRING_TRUNCATE)) {

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
		// inicializando variaveis
		$condicaoSQL = "";
		
		// verificando se foi passado uma condição SQL
		if (isset($arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD])) {
			// motando condicação SQL
			$condicaoSQL = "/condicaoSql/{$arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD]}";
		}
		// montando a url
		$urlRetorno = Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl("/basico/administrador/crud/tipo/dados/tipoGrid/jqgrid/modelo/{$arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]}{$condicaoSQL}");

		// retornando a url
		return $urlRetorno;
	}

	
	/**
	 * Retorna a url de recuperação de dados para edição
	 * 
	 * @param array $arrayParametrosCrud
	 * 
	 * @return String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 18/04/2012
	 */
	private static function retornaUrlRecuperacaoDadosFormEdicaoJqGrid(array $arrayParametrosCrud)
	{
		// motando condicação SQL
		$condicaoSQL = "/condicaoSql/id=";
		
		// retornando a url
		return Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl("/basico/administrador/crud/tipo/dados/modelo/{$arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]}") . $condicaoSQL;
	}

	/**
	 * Retorna a url de modificação de dados
	 * 
	 * @param array $arrayParametrosCrud
	 * 
	 * @return String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 24/05/2012
	 */
	private static function retornaUrlModificacaoDadosFormEdicaoJqGrid(array $arrayParametrosCrud)
	{
		// recuperando atributos do grid jqgrid
		$parametroTipoGridJqGrid = '/' . self::ATRIBUTO_TIPO_GRID . '/' . self::TIPO_GRID_JQGRID;

		// retornando a url
		return Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl("/basico/administrador/crud/tipo/modificar/modelo/{$arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]}{$parametroTipoGridJqGrid}");
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
	private static function listarDados(array $arrayParametrosCrud)
	{
		// inicializando variáveis
		$arrayRetornoContent = array();
		$arrayRetornoScripts = array();

		// recuperando retorno
		$arrayRetornoContent[] = self::retornaHTMLCrud($arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]);
		$arrayRetornoScripts[] = self::retornaJavaScriptCrud();
		$arrayRetornoScripts[] = self::retornaJavaScriptInicalizacaoGridCrud($arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD], self::retornaUrlRecuperacaoDados($arrayParametrosCrud), self::retornaUrlRecuperacaoDadosFormEdicaoJqGrid($arrayParametrosCrud), self::retornaUrlModificacaoDadosFormEdicaoJqGrid($arrayParametrosCrud), 'id');

		// inicializando array de resultados
		$arrayResultado['content'] = $arrayRetornoContent;
		$arrayResultado['scripts'] = $arrayRetornoScripts;
		
		return $arrayResultado;
	}

	/**
	 * Retorna um objeto através dos parametros do crud
	 * 
	 * @param Array $arrayParametrosCrud
	 * 
	 * @return Object|false
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/05/2012
	 */
	private static function retornaObjetoViaParametrosCrud(array $arrayParametrosCrud)
	{
		// instanciando o modelo
		$modelo = self::retornaModeloViaParametrosCrud($arrayParametrosCrud);

		// recuperando array objeto
		$arrayObjeto = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelo, $arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD], null, 1, 0);

		// limpando memória
		unset($modelo);

		// verificando o resultado da recuperação
		if (count($arrayObjeto)) {
			// recuperando objeto
			$objeto = $arrayObjeto[0];
			
			// limpando memória
			unset($arrayObjeto);

			// retornando o objeto
			return $objeto;
		}

		// limpando memória
		unset($arrayObjeto);

		// retornando fracasso
		return false;
	}

	/**
	 * Retorna um modelo através dos parametros do crud
	 * 
	 * @param array $arrayParametrosCrud
	 * 
	 * @return Object|false
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 28/05/2012
	 */
	private static function retornaModeloViaParametrosCrud(array $arrayParametrosCrud)
	{
		// retornando o modelo do crud
		return new $arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]();
	}

	/**
	 * Edita os dados de um objeto
	 * 
	 * @param array $arrayParametrosCrud
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/05/2012
	 */
	private static function editarDados(array $arrayParametrosCrud)
	{
		// recuperando objeto
		$objeto = self::retornaObjetoViaParametrosCrud($arrayParametrosCrud);

		// verificando o resultado da recuperação do objeto
		if (!is_object($objeto)) {
			// retornando fracasso
			return false;
		}

		// recuperando a versão do objeto
		$versaoObjeto = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objeto);

		// recuperando atributos do objeto
		$arrayAtributosObjeto = Basico_OPController_UtilOPController::retornaArrayAtributosGetObjeto($objeto);

		// loop para atualizar os atributos do objeto
		foreach ($arrayAtributosObjeto as $atributo) {
			// verificando se o atributo existe no array de parametros do crud
			if ((isset($arrayParametrosCrud[$atributo])) and ($objeto->$atributo != $arrayParametrosCrud[$atributo])) {
				// setando valor no objeto
				$objeto->$atributo = $arrayParametrosCrud[$atributo];
			}
		}

		// recuperando o id da pessoa logada perfil por request
		$idPessoaPerfilUpdate = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest(Basico_OPController_PessoaLoginOPController::retornaIdPessoaPorIdLoginViaSQL(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao()), Basico_OPController_UtilOPController::retornaUserRequest());

		// limpando pool de sqls
		Basico_OPController_SessionOPController::limpaSqlPool();

		// salvando o objeto
		$resultadoSalvarObjeto = Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoObjeto, $idPessoaPerfilUpdate, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_VIA_CRUD, true), LOG_MSG_UPDATE_CRUD . " ({$arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]})");

		// verificando o resultado do método de salvar
		if ($resultadoSalvarObjeto) {
			// recuperando querys executadas e limpando o pool de sqls
			$sqlsExecutados = Basico_OPController_UtilOPController::escapaAspasSimplesPHP(Basico_OPController_UtilOPController::processaStringParaJson(implode(';' . QUEBRA_DE_LINHA_HTML, Basico_OPController_SessionOPController::recuperaPoolSql(true))));

			// montando scripts de resultado
			$arrayScripts[] = Basico_OPController_UtilOPController::retornaJavaScriptDojoPopMessage(Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('VIEW_TITULO_MESSAGEM_SUCESSO') . " {$arrayParametrosCrud[self::ATRIBUTO_TIPO_CRUD]} ({$arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]})");
			$arrayScripts[] = Basico_OPController_UtilOPController::retornaJavascriptAdicionarTextoTextArea('sqlCrud', $sqlsExecutados);
			// retornando sucesso
			return array('scripts' => $arrayScripts);
		}

		// retornando fracasso
		return false;
	}

	/**
	 * Cria um novo objeto
	 * 
	 * @param array $arrayParametrosCrud
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/05/2012
	 */
	private static function inserirDados(array $arrayParametrosCrud)
	{
		// recuperando o modelo
		$modelo = self::retornaModeloViaParametrosCrud($arrayParametrosCrud);

		// recuperando atributos do objeto
		$arrayAtributosObjeto = Basico_OPController_UtilOPController::retornaArrayAtributosGetObjeto($modelo);

		// loop para atualizar os atributos do objeto
		foreach ($arrayAtributosObjeto as $atributo) {
			// verificando se o atributo existe no array de parametros do crud
			if ((isset($arrayParametrosCrud[$atributo])) and ($modelo->$atributo != $arrayParametrosCrud[$atributo])) {
				// setando valor no objeto
				$modelo->$atributo = $arrayParametrosCrud[$atributo];
			}
		}

		// recuperando o id da pessoa logada perfil por request
		$idPessoaPerfilInsert = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest(Basico_OPController_PessoaLoginOPController::retornaIdPessoaPorIdLoginViaSQL(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao()), Basico_OPController_UtilOPController::retornaUserRequest());

		// limpando pool de sqls
		Basico_OPController_SessionOPController::limpaSqlPool();

		// salvando o objeto
		$resultadoSalvarObjeto = Basico_OPController_PersistenceOPController::bdSave($modelo, null, $idPessoaPerfilInsert, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_INSERT_VIA_CRUD, true), LOG_MSG_INSERT_CRUD . " ({$arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]})");

		// verificando o resultado do método de salvar
		if ($resultadoSalvarObjeto) {
			// recuperando querys executadas e limpando o pool de sqls
			$sqlsExecutados = Basico_OPController_UtilOPController::escapaAspasSimplesPHP(Basico_OPController_UtilOPController::processaStringParaJson(implode(';' . QUEBRA_DE_LINHA_HTML, Basico_OPController_SessionOPController::recuperaPoolSql(true))));

			// montando scripts de resultado
			$arrayScripts[] = Basico_OPController_UtilOPController::retornaJavaScriptDojoPopMessage(Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('VIEW_TITULO_MESSAGEM_SUCESSO') . " {$arrayParametrosCrud[self::ATRIBUTO_TIPO_CRUD]} ({$arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]})");
			$arrayScripts[] = Basico_OPController_UtilOPController::retornaJavascriptAdicionarTextoTextArea('sqlCrud', $sqlsExecutados);
			// retornando sucesso
			return array('scripts' => $arrayScripts);
		}

		// retornando fracasso
		return false;
	}

	/**
	 * Apaga um objeto
	 * 
	 * @param array $arrayParametrosCrud
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/05/2012
	 */
	private static function apagarDados(array $arrayParametrosCrud)
	{
		// recuperando objeto
		$objeto = self::retornaObjetoViaParametrosCrud($arrayParametrosCrud);

		// verificando o resultado da recuperação do objeto
		if (!is_object($objeto)) {
			// retornando fracasso
			return false;
		}

		// recuperando o id da pessoa logada perfil por request
		$idPessoaPerfilDelete = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilMaiorPerfilPorIdPessoaRequest(Basico_OPController_PessoaLoginOPController::retornaIdPessoaPorIdLoginViaSQL(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao()), Basico_OPController_UtilOPController::retornaUserRequest());

		// limpando pool de sqls
		Basico_OPController_SessionOPController::limpaSqlPool();

		// salvando o objeto
		$resultadoSalvarObjeto = Basico_OPController_PersistenceOPController::bdDelete($objeto, false, $idPessoaPerfilDelete, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_VIA_CRUD, true), LOG_MSG_DELETE_CRUD . " ({$arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]})");

		// verificando o resultado do método de excluir
		if ($resultadoSalvarObjeto) {
			// recuperando querys executadas e limpando o pool de sqls
			$sqlsExecutados = Basico_OPController_UtilOPController::escapaAspasSimplesPHP(Basico_OPController_UtilOPController::processaStringParaJson(implode(';' . QUEBRA_DE_LINHA_HTML, Basico_OPController_SessionOPController::recuperaPoolSql(true))));

			// montando scripts de resultado
			$arrayScripts[] = Basico_OPController_UtilOPController::retornaJavaScriptDojoPopMessage(Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('VIEW_TITULO_MESSAGEM_SUCESSO') . " {$arrayParametrosCrud[self::ATRIBUTO_TIPO_CRUD]} ({$arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]})");
			$arrayScripts[] = Basico_OPController_UtilOPController::retornaJavascriptAdicionarTextoTextArea('sqlCrud', $sqlsExecutados);
			// retornando sucesso
			return array('scripts' => $arrayScripts);
		}

		// retornando fracasso
		return false;
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
		$scriptRetorno = Basico_OPController_UtilOPController::retornaJavaScriptSourceEntreTagsScriptHtml(Basico_OPController_UtilOPController::retornaBaseUrl() . UI_JQUERY_PLUGIN_JQGRID_JAVASCRIPT_LANGUAGE_FILE_PATH);
		
		// adicionando arquivo js do jqGrid
		$scriptRetorno .= Basico_OPController_UtilOPController::retornaJavaScriptSourceEntreTagsScriptHtml(Basico_OPController_UtilOPController::retornaBaseUrl() . UI_JQUERY_PLUGIN_JQGRID_JAVASCRIPT_FILE_PATH);
		
		// adicionando arquivo js do debug do jqGrid
		$scriptRetorno .= Basico_OPController_UtilOPController::retornaJavaScriptSourceEntreTagsScriptHtml(Basico_OPController_UtilOPController::retornaBaseUrl() . UI_JQUERY_PLUGIN_JQGRID_JAVASCRIPT_DEBUG_FILE_PATH);
		
		// adicionando arquivo js do rochedo customizado para jqGrid
		$scriptRetorno .= Basico_OPController_UtilOPController::retornaJavaScriptSourceEntreTagsScriptHtml(Basico_OPController_UtilOPController::retornaBaseUrl() . UI_JQUERY_PLUGIN_JQGRID_ROCHEDO_CUSTOM_JAVASCRIPT_FILE_PATH);
		
		return $scriptRetorno;
	}

	/**
	 * Retorna a inicialização do grid do crud
	 * 
	 * @param String $nomeModelo
	 * @param String $urlRecuperacaoDados
	 * @param String $urlRecuperacaoDadosFormEdicao
	 * @param String $urlModificarDados
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
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 24/05/2012
	 */
	private static function retornaJavaScriptInicalizacaoGridCrud($nomeModelo, $urlRecuperacaoDados, $urlRecuperacaoDadosFormEdicao, $urlModificarDados, $campoOrdenadorInicial, $tipoDados = 'json', $alturaGrid = 330, $larguraGrid = 1000, $linhasPorPagina = self::JQGRID_DEFAULT_LIMITE_POR_PAGINA, $opcoesLinhasPorPagina = self::JQGRID_DEFAULT_OPCOES_LIMITE_POR_PAGINA, $arrayOperacoesPermitidas = array('add' => false, 'edit' => false, 'del' => false))
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

		// recuperando o nome do schema que o modelo ta relacionado
		$nomeSchema = Basico_OPController_DBUtilOPController::retornaSchemaNameObjeto($instanciaModelo);
		
		// recuperando o nome da tabela que o modelo ta relacionado
		$nomeTabela = Basico_OPController_DBUtilOPController::retornaTableNameObjeto($instanciaModelo, false);
		
		// recuperando a constante textual que representa a tabela
		$constanteTextualTabela = Basico_OPController_DicionarioDadosAssocTableOPController::getInstance()->retornaConstanteTextualTraduzidaTabelaPorNomeSchemaNomeTabela($nomeSchema, $nomeTabela);
		
		// recuperando titulos traduzidos das colunas
		$arrayTitulosColunas = Basico_OPController_DicionarioDadosAssocFieldOPController::getInstance()->retornaTraducoesFieldsPorNomeSchemaNomeTabela($nomeSchema, $nomeTabela);
		
		//Basico_OPController_UtilOPController::print_debug($arrayTitulosColunas, true, false, true);
		
		// recuperando as larguras das colunas
		$arrayLarguraColunas = self::retornaArrayLarguraColunasJQGridViaArrayAtributosCamposTabela($arrayAtributosCamposTabelaDBObjeto);

		// recuperando array de detalhes do atributo
		$arrayDetalhesAtributos = Basico_OPController_DBUtilOPController::retornaArrayAtributosTabelaBDObjeto($instanciaModelo);

		// recuperando array de atributos nao editaveis
		$arrayAtributosNaoEditaveis = self::retornaArrayAtributosNaoEditaveis();

		// montando string serializada
		foreach ($arrayAtributosModelo as $chave => $atributoModelo) {

			// recuperando o nome do atributo no banco de dados
			$nomeAtributoBD = Basico_OPController_DBUtilOPController::retornaNomeCampoAtributo($atributoModelo);
			
			// verificando se existe traducao para o titulo da coluna
			// setando titulo da coluna
			if (isset($arrayTitulosColunas[$nomeAtributoBD])) {
				// setando traducao no titulo da coluna
				$tituloColuna = $arrayTitulosColunas[$nomeAtributoBD];
			}else{
				// setando nome do campo no titulo da coluna
				$tituloColuna = $atributoModelo;
			}
			
			// setando string colNames
			$stringColNames .= Basico_OPController_UtilOPController::retornaStringEntreCaracter($tituloColuna, '"');

			// recuperando a largura da coluna
			$larguraColuna = $arrayLarguraColunas[$nomeAtributoBD];

			// somando a largura do grid
			$larguraGrid += $larguraColuna;
			
			// recuperando o modelo da coluna do atributo
			$stringColModel .= self::retornaModeloColunaJqGrid($atributoModelo, $nomeAtributoBD, $larguraColuna, $arrayAtributosNaoEditaveis, $arrayDetalhesAtributos);

			// verificando se não trata-se do último elemento
			if ($chave !== Basico_OPController_UtilOPController::retornaChaveUltimoElementoArray($arrayAtributosModelo)) {
				$stringColNames .= ', ';
				$stringColModel .= ',';
			}
		}

		// montando resposta
		$retorno = "$(document).ready (function(){
									    if ($.datepicker != null) {
									    	$.datepicker.setDefaults({dateFormat: 'dd/mm/yy',
									    		dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'],
									    		dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
									    		dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
									    		monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro', 'Outubro','Novembro','Dezembro'],
									    		monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set', 'Out','Nov','Dez'],
									    		nextText: 'Próximo',
									    		prevText: 'Anterior',
									    		changeMonth: true,
									    		changeYear: true,
									    		yearRange: '-100:+10',
									    		minuteText: 'Minutos'
									    	});
									    	        
									    }	
									});
									
					$.timepicker.regional['br'] = {
						timeText: 'Tempo',
						hourText: 'Hora',
						minuteText: 'Minuto',
						secondText: 'Segundo',
						millisecText: 'Milisegundo',
						currentText: 'Agora',
						closeText: 'Fechar',
						ampm: false
					};
					$.timepicker.setDefaults($.timepicker.regional['br']);
		
					$(function(){
						$('#{$nomeListagem}').jqGrid({
						   	url: '{$urlRecuperacaoDados}',
							datatype: '{$tipoDados}',
							height: {$alturaGrid},
							width: {$larguraGrid},
						   	colNames: [{$stringColNames}],
						   	colModel: [{$stringColModel}],
						   	rowNum: {$linhasPorPagina},
						   	rowList: {$opcoesLinhasPorPagina},
						   	pager: '#{$nomePaginacao}',
						   	sortname: '{$campoOrdenadorInicial}',
						    viewrecords: true,
						    sortorder: 'asc',
							multiselect: false,
						    mtype: 'GET',
							gridview: true,
							editurl: '{$urlModificarDados}',
							caption: 'CRUD {$constanteTextualTabela} ($nomeModelo)',
							beforeProcessing: verificaDadosAntesProcessamento,
						    serializeGridData: function (dados) {
												return JSON.stringify(dados)
												},
							jsonReader: {repeatitems: false, id: 'id'}
						})
				});

				$(function(){
					$('#{$nomeListagem}').jqGrid('navGrid','#{$nomePaginacao}',{edit:true,add:true,del:true,search:true,view:true},
												 {height:'auto', width:'auto', beforeShowForm: function(formObject) { carregaDadosFormEdicaoJqGrid(formObject, '{$urlRecuperacaoDadosFormEdicao}');}, afterclickPgButtons: function(wichbutton, formid, formObject) { carregaDadosFormEdicaoJqGridPaginator(wichbutton, formid, formObject, '{$urlRecuperacaoDadosFormEdicao}');}, reloadAfterSubmit:false, closeOnEscape:true, closeAfterEdit:true, afterSubmit: processaRetornoJqGrid}, // edit options
												 {height:'auto', width:'auto', closeOnEscape:true, reloadAfterSubmit:true, closeAfterAdd:true, afterSubmit: processaRetornoJqGrid}, // add options
												 {reloadAfterSubmit:false, closeAfterEdit:true, afterSubmit: processaRetornoJqGrid}, // delete options
												 {multipleSearch:true}, // adicionando multiple search
												 {closeOnEscape:true, width:550, beforeShowForm: function(formObject) { carregaDadosDialogViewJqGrid(formObject, '{$urlRecuperacaoDadosFormEdicao}');}, afterclickPgButtons: function(wichbutton, formid, formObject) {carregaDadosDialogViewJqGridPaginator(wichbutton, formid, formObject, '{$urlRecuperacaoDadosFormEdicao}');}} // view options
												 ); 
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
	
	/**
	 * Retorna um array (Black List) com os atributos nao editaveis
	 * 
 	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 	 * @since 18/04/2012
	 */
	private static function retornaArrayAtributosNaoEditaveis()
	{
		// montando array de atributos não editavéis
		$arrayResultado = array('id', 'datahoraCriacao', 'datahoraUltimaAtualizacao', 'rowinfo');
		
		// retornando arra
		return $arrayResultado;
	}
	
	/**
	 * Retorna a string de modelo de coluna do atributo para montagem do jqGrid
	 * 
	 * @param String $nomeAtributo
	 * @param String $nomeAtributoBD
	 * @param int $larguraColuna
	 * @param Array $arrayAtributosNaoEditaveis
	 * @param Array $arrayDetalhesAtributos
	 * 
 	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 	 * @since 19/04/2012
 	 */
	public static function retornaModeloColunaJqGrid($nomeAtributo, $nomeAtributoBD, $larguraColuna, array $arrayAtributosNaoEditaveis, array $arrayDetalhesAtributos)
	{
		// inicializando variaveis
		$optionEditable         = '"editable": false';
		$optionElementRequired  = '"required": false';
		$optionElementType      = "text";
		$optionElementSize      = '"size": "4",';
		$elementSelectOptions   = "";
		$optionElementMaxLength = "";
		$optionRowsCols         = "";
		$optionDataInit         = "";
		
		// recuperando array de detalhes do atributo
		$arrayDetalhesAtributo = $arrayDetalhesAtributos[$nomeAtributoBD];
		
		// verificando se o atributo é editavel
		if (array_search($nomeAtributo, $arrayAtributosNaoEditaveis) === false) {
			// setando atributo para nao editavel
			$optionEditable = '"editable": true';
			
			// se o atributo aceitar nulo
			if (isset($arrayDetalhesAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_NULLABLE]) && $arrayDetalhesAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_NULLABLE] == true) {
				// recuperando tamanho do elemento
				$optionElementRequired = '"required": false';
			}
		
			// determinando o tipo de elemento HTML a ser criado no form de edição
			switch ($arrayDetalhesAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_DATATYPE]) {
				case 'int4':
				case 'int8':
				case 'varchar':
					// verificando se o atributo é uma chave estrangeira
					if (isset($arrayDetalhesAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_FK])) {
						// se for chave estrangeira seta o tipo do elemento para select
						$optionElementType = 'select';
						
						// recuperando array de options do campo fk
						$optionsCampoFk = Basico_OPController_DicionarioDadosAssocclFkOPController::getInstance()->retornaOptionsCampoFkPorNomeSchemaNomeTabelaNomeCampo($arrayDetalhesAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_FK]['fk_schema'], $arrayDetalhesAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_FK]['fk_table_name'], $arrayDetalhesAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_FK]['fk_column_name']);
						
						// iniciando montagem da string com os options
						$elementSelectOptions = '"value": ';
						$existemOptions = false;
						
						// loop para criar string com options do campo fk
						foreach ($optionsCampoFk as $chave => $valor) {
							// montando option com separador
							$elementSelectOptions .= '"{$chave}":"{$valor}";';
							$existemOptions = true;
						}
						
						// removendo ultimo separador da string de options
						$elementSelectOptions = substr_replace($elementSelectOptions, '', -1, 1);						
						
						// finalizando string de options
						$elementSelectOptions .= "',";
						
						if (!$existemOptions) {
							$elementSelectOptions = '';
						}
					}
					break;
				case 'timestamp':
				case 'datetime':
						// setando a funcao de inicializacao dos campos do tipo data
						$optionDataInit = "dataInit:function (elem) { $(elem).datetimepicker({timeFormat: 'hh:mm:ss', 
																							  showSecond: true, 
																							  addSliderAccess: true, 
																							  sliderAccessArgs: { touchonly: false }}); },";
					break;
				case 'bool':
				case 'boolean':
					$optionElementType = "checkbox";
					break;
				case 'text' :
					$optionElementType = "textarea";
					$optionRowsCols    = 'rows: 3, cols: 50,';
					break;
				default:
					$optionElementType = "text";
				break;
			}
			
			// se o atributo tiver tamanho definido
			if (isset($arrayDetalhesAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_LENGTH])) {
				// recuperando o tamanho do campo
				$tamanhoCampo = (int) $arrayDetalhesAtributo[Basico_OPController_DBUtilOPController::ATRIBUTO_CAMPO_TABELA_LENGTH];
				
				// recuperando tamanho do elemento se o elemento nao for do tipo select
				if ($elementSelectOptions == "") {
					$optionElementSize      = '"size": "' . $tamanhoCampo . '",';
					$optionElementMaxLength = '"maxlength": "' . $tamanhoCampo . '",';
				}else{
					$optionElementSize      = '';
				}
				
				// se tamanho do campo maior que 50
				if ($tamanhoCampo > 50) {
					$optionElementSize = '"size": "50",';
						
					if ($tamanhoCampo > 200) {
						$optionElementType = 'textarea';
						$optionRowsCols    = '"rows": "3", "cols": "50",';
					}
				}
			}
		}
		
		// montando e retornando array json com as propriedades da coluna e do campo para edicao do atributo do modelo para o jqGrid
		return "{\"name\": \"{$nomeAtributo}\", \"index\": \"{$nomeAtributoBD}\", \"width\":{$larguraColuna}, {$optionEditable}, {$optionElementRequired}, \"edittype\": \"{$optionElementType}\", \"editoptions\":{{$optionRowsCols} {$optionDataInit} {$elementSelectOptions} {$optionElementSize} {$optionElementMaxLength}}}";
	}
}