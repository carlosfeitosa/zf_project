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
	const TIPO_LISTAR = "listar";
	const TIPO_INSERIR = "inserir";
	const TIPO_EDITAR = "editar";
	const TIPO_SALVAR = "salvar";
	const TIPO_EXCLUIR = "excluir";
	const TIPO_DADOS = "dados";
	const FORMATO_DADOS_JSON = 'json';
	const FORMATO_DADOS_XML = 'xml';
	const JQGRID_VALOR_PAGE = 'page';
	const JQGRID_VALOR_ROWS = 'rows';
	const JQGRID_VALOR_SIDX = 'sidx';
	const JQGRID_VALOR_SORD = 'sord';
	const JQGRID_VALOR_TOTAL_PAGES = 'total';
	const JQGRID_VALOR_TOTAL_RECS = 'records';

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
		if (!self::processaArrayParametrosCrud($arrayParametrosCrud)) {
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
		                                                                               
		// removendo aspas duplas dos atributos rowinfo dos objetos
		foreach ($arrayObjetos as $chave => $objeto) {
			$arrayObjetos[$chave]->rowinfo = str_replace('"', "'", $objeto->rowinfo);
		}		                                                                              

		// verificando o formato
		switch ($formato) {
			case self::FORMATO_DADOS_JSON:
				// loop para transformar os objetos
				foreach ($arrayObjetos as $objeto) {
					// transformando objeto
					$arrayObjetoJson[] = Basico_OPController_UtilOPController::codificar($objeto);
				}

				// processando array de resultados para retornar no formato esperado pelo JqGrid
				$arrayObjetoJson = self::retornaArrayDadosJqGrid($arrayObjetoJson, $arrayParametrosCrud);

				// transformando array em uma string json
				$resultado = Basico_OPController_UtilOPController::limpaArrayJson(Basico_OPController_UtilOPController::codificaArrayJson($arrayObjetoJson));
			break;
			case self::FORMATO_DADOS_XML:
				// loop para transformar os objetos
				foreach ($arrayObjetos as $objeto) {
					// transformando objeto
					$arrayObjetoArray[] = Basico_OPController_UtilOPController::codificar($objeto, CODIFICAR_OBJETO_TO_ARRAY);
				}

				// processando array de resultados para retornar no formato esperado pelo JqGrid
				$arrayObjetoArray = self::retornaArrayDadosJqGrid($arrayObjetoArray, $arrayParametrosCrud);

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
	private static function retornaArrayDadosJqGrid(array $arrayDados, array $arrayParametrosCrud)
	{
		// inicializando variáveis
		$paginaAtual = 1;
		$limit = 10;

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
		$totalLinhas = count($arrayDados);

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
		$urlRetorno = Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_UtilOPController::retornaBaseUrl() . "/basico/administrador/crud/tipo/dados/modelo/{$arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]}/limite/10/condicaoSql/{$arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD]}";

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
	 * @param Array $arrayOpcoesLinhasPorPagina
	 * @param Array $arrayOperacoesPermitidas
	 * 
	 * @return String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 */
	private static function retornaJavaScriptInicalizacaoGridCrud($nomeModelo, $urlRecuperacaoDados, $campoOrdenadorInicial, $tipoDados = 'json', $alturaGrid = 400, $larguraGrid = 1000, $linhasPorPagina = 10, $arrayOpcoesLinhasPorPagina = array(10, 20, 30), $arrayOperacoesPermitidas = array('add' => false, 'edit' => false, 'del' => false))
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

		// montando string serializada
		foreach ($arrayAtributosModelo as $chave => $atributoModelo) {
			// setando string colNames
			$stringColNames .= Basico_OPController_UtilOPController::retornaStringEntreCaracter($atributoModelo, "'");
			
			// recuperando tamanho do nome do atributo
			$tamanhoNomeAtributo = strlen($atributoModelo) * 8;
			
			// somando a largura do grid
			$larguraGrid += $tamanhoNomeAtributo;
			
			// setando string colModel
			$stringColModel .= "{name: '{$atributoModelo}', index: '{$atributoModelo}', width:{$tamanhoNomeAtributo}}";
			
			// verificando se não trata-se do último elemento
			if (count($arrayAtributosModelo) !== $chave) {
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
						   	rowNum: 10,
						   	rowList: [10,20,30],
						   	pager: '#{$nomePaginacao}',
						   	sortname: '{$campoOrdenadorInicial}',
						    viewrecords: true,
						    sortorder: 'asc',
							multiselect: false,
						    caption: 'CRUD {$nomeModelo}',
						    serializeGridData: function (dados) {
												return JSON.stringify(dados)

												},

							jsonReader: { repeatitems: false, id: 'id' }
						})
						
				});
				
				$(function(){
				
					$('#{$nomeListagem}').jqGrid('navGrid','#{$nomePaginacao}',{add:false,edit:false,del:false})
				});";
		
		// retornando script
		return Basico_OPController_UtilOPController::retornaJavaScriptEntreTagsScriptHtml($retorno);
	}
}