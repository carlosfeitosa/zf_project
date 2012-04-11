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
	const TIPO_LISTAR = "listar";
	const TIPO_INSERIR = "inserir";
	const TIPO_EDITAR = "editar";
	const TIPO_SALVAR = "salvar";
	const TIPO_EXCLUIR = "excluir";
	const TIPO_DADOS = "dados";

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
			// recuperando o nome do objeto modelo
			$arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD] = null;
		}

		// verificando se foi passado a ordenação
		if (!isset($arrayParametrosCrud[self::ATRIBUTO_ORDENACAO_CRUD])) {
			// recuperando o nome do objeto modelo
			$arrayParametrosCrud[self::ATRIBUTO_ORDENACAO_CRUD] = null;
		}

		// verificando se foi passado o limite do crud
		if (!isset($arrayParametrosCrud[self::ATRIBUTO_LIMITE_CRUD])) {
			// recuperando o nome do objeto modelo
			$arrayParametrosCrud[self::ATRIBUTO_LIMITE_CRUD] = null;
		}

		// verificando se foi passado o offset do crud
		if (!isset($arrayParametrosCrud[self::ATRIBUTO_OFFSET_CRUD])) {
			// recuperando o nome do objeto modelo
			$arrayParametrosCrud[self::ATRIBUTO_OFFSET_CRUD] = null;
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
				return self::retornaDados($arrayParametrosCrud);
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
	private static function retornaDados($arrayParametrosCrud, $formato = 'json')
	{
		// recuperando nome do controlador do modelo
		$instanciaModelo = new $arrayParametrosCrud[self::ATRIBUTO_MODELO_CRUD]();

		// recuperando objetos
		$arrayObjetos = Basico_OPController_PersistenceOPController::bdObjectFetchList($instanciaModelo, 
																					   $arrayParametrosCrud[self::ATRIBUTO_CONDICAOSQL_CRUD], 
		                                                                               $arrayParametrosCrud[self::ATRIBUTO_ORDENACAO_CRUD], 
		                                                                               $arrayParametrosCrud[self::ATRIBUTO_LIMITE_CRUD], 
		                                                                               $arrayParametrosCrud[self::ATRIBUTO_OFFSET_CRUD]);

		// loop para transformar os objetos
		foreach ($arrayObjetos as $objeto) {
			// transformando objeto
			$arrayObjetoJson[] = Basico_OPController_UtilOPController::codificar($objeto);
		}

		// transformando array em uma string json
		$resultado = str_replace('"]', ']', str_replace('["', '[', str_replace(',"mapper":null', '', str_replace('\\', '', str_replace('\u0000_' , '', str_replace('\u0000*', '', Basico_OPController_UtilOPController::codificaArrayJson($arrayObjetoJson)))))));

		// recuperando resultado
		$arrayResultado['content'] = array($resultado);

		// retornando resultado
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
		return "<table id='listagem-{$nomeModelo}'></table><div id='paginacao-{$nomeModelo}'></div>";
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
		// retornando o javascript
		return Basico_OPController_UtilOPController::retornaJavaScriptSourceEntreTagsScriptHtml(Basico_OPController_UtilOPController::retornaBaseUrl() . JQGRID_JAVASCRIPT_FILE_PATH);
	}

	/**
	 * Retorna o include do css para montagem do grid
	 * 
	 * @return String
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 11/04/2012
	 */
	private static function retornaCssCrud()
	{
		// retornando o javascript
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
	private static function retornaJavaScriptInicalizacaoGridCrud($nomeModelo, $urlRecuperacaoDados, $campoOrdenadorInicial, $tipoDados = 'json', $alturaGrid = 400, $larguraGrid = 600, $linhasPorPagina = 10, $arrayOpcoesLinhasPorPagina = array(10, 20, 30), $arrayOperacoesPermitidas = array('add' => false, 'edit' => false, 'del' => false))
	{
		// recuperando o nome da listagem e nome paginação
		$nomeListagem  = "listagem-{$nomeModelo}";
		$nomePaginacao = "paginacao-{$nomeModelo}";

		// recuperando nome do controlador do modelo
		$instanciaModelo = new $nomeModelo();

		// recuperando atributos do modelo
		$arrayAtributosModelo = $instanciaModelo->retornaAtributos();

		// inicializando variáveis
		$stringAtributosModelo = '';

		// montando string serializada
		foreach ($arrayAtributosModelo as $chave => $atributoModelo) {
			// setando string
			$stringAtributosModelo .= Basico_OPController_UtilOPController::retornaStringEntreCaracter($atributoModelo, "'");

			// verificando se não trata-se do último elemento
			if (count($arrayAtributosModelo) !== $chave) {
				$stringAtributosModelo .= ', ';
			}
		}

		// montando resposta
		$retorno = "jQuery('#{$nomeListagem}').jqGrid({
					   	url:'{$urlRecuperacaoDados}',
						datatype: '{$tipoDados}',
						height: {$alturaGrid},
						width: {$larguraGrid},
					   	colNames:[{$stringAtributosModelo}],
					   	colModel:[
					   		{name:'idPerfilPadrao',index:'idPerfilPadrao', width:55},
					   		{name:'idTelefoneDefault',index:'idTelefoneDefault', width:55},
					   		{name:'idEmailDefault',index:'idEmailDefault', width:55},
					   		{name:'idEnderecoDefault',index:'idEnderecoDefault', width:55},
					   		{name:'idEnderecoCorrespondenciaDefault',index:'idEnderecoCorrespondenciaDefault', width:55},
					   		{name:'idLinkDefault',index:'idLinkDefault', width:55},
					   		{name:'dataHoraUltimaAtualizacao',index:'dataHoraUltimaAtualizacao', width:55},
					   		{name:'id',index:'id', width:55},
					   		{name:'datahoraCriacao',index:'datahoraCriacao', width:55},
					   		{name:'rowinfo',index:'rowinfo', width:55}		
					   	],
					   	rowNum:10,
					   	rowList:[10,20,30],
					   	pager: '#{$nomePaginacao}',
					   	sortname: '{$campoOrdenadorInicial}',
					    viewrecords: true,
					    sortorder: 'asc',
						multiselect: false,
					    caption: 'CRUD {$nomeModelo}'
						
					});
					jQuery('#{$nomeListagem}').jqGrid('navGrid','#{$nomePaginacao}',{add:false,edit:false,del:false});";
		
		// retornando script
		return Basico_OPController_UtilOPController::retornaJavaScriptEntreTagsScriptHtml($retorno);
	}
}