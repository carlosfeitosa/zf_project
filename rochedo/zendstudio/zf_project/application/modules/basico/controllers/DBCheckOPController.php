<?php
/**
 * Controlador DB Check
 * 
 */

class Basico_OPController_DBCheckOPController
{
	/**
	 * Instância do controlador Basico_OPController_DBCheckOPController.
	 * @var Basico_OPController_DBCheckOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_OPController_CategoriaAssocChaveEstrangeiraOPController
	 */
	private $_categoriaAssocChaveEstrangeiraOPController;
	/**
	 * @var Basico_OPController_AssocChaveEstrangeiraRelacaoOPController
	 */
	private $_assocChaveEstrangeiraRelacao;
	
	/**
	 * Construtor do controlador Basico_OPController_DBCheckOPController
	 * 
	 */
	protected function __construct()
	{
		$this->init();
	}
	
	/**
	 *  Inicializa o controlador Basico_OPController_DBCheckOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{
		// inicializando controladores auxiliares
		$this->initControllers();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/05/2012
	 */
	private function _initControllers()
	{
		// instanciando controlador de categoria chave estrangeira
		$this->_categoriaAssocChaveEstrangeiraOPController = Basico_OPController_CategoriaAssocChaveEstrangeiraOPController::getInstance();
		// instanciando controlador de assoc chave estrangeira relacao
		$this->_assocChaveEstrangeiraRelacao               = Basico_OPController_AssocChaveEstrangeiraRelacaoOPController::getInstance();
		
	}
	
	/**
	 * Inicializa Controlador DbCheck.
	 * 
	 * @return Basico_OPController_DBCheckOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DBCheckOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
    /**
     * Checa a existencia da relacao categoria chave estrangeira
     * 
     * @param Integer $idCategoria
     * 
     * @return Boolean
     */
    public function checaExistenciaRelacaoCategoriaChaveEstrangeiraPorIdCategoria($idCategoria)
    {
    	return $this->_categoriaAssocChaveEstrangeiraOPController->checaExistenciaRelacaoCategoriaChaveEstrangeiraPorIdCategoria($idCategoria);
    }

    /**
     * Checa a existencia de um valor em tabela estrangeira atraves da categoria
     * 
     * @param Integer $idCategoria
     * @param Mixed $valor
     * @param String $nomeTabelaOrigem
     * @param String $nomeCampoOrigem
     * @param Boolean $forceCreateRelationship
     * 
     * @return Boolean
     */
    public function checaExistenciaValorCategoriaChaveEstrangeira($idCategoria, $valor, $nomeTabelaOrigem = null, $nomeCampoOrigem = null, $forceCreateRelationship = false)
    {
    	// recuperando array com nome da tabela estrangeira e do campo estrangeiro
    	$arrayTabelaCampoEstrangeiro = $this->_categoriaAssocChaveEstrangeiraOPController->retornaArrayTabelaEstrangeiraCampoEnstrangeiroPorIdCategoriaChaveEstrangeira($idCategoria);

		// recuperando o nome da tabela estrangeira
		$nomeTabelaEstrangeira  = $arrayTabelaCampoEstrangeiro['tabelaEstrangeira'];
		// recuperando o nome do campo da tabela estrangeira
		$campoTabelaEstrangeira = $arrayTabelaCampoEstrangeiro['campoEstrangeiro'];

		// verificando a existencia do valor passado por parametro na tabela estrangeira recuperada
		$checkConstraint = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery("SELECT {$campoTabelaEstrangeira} FROM {$nomeTabelaEstrangeira} WHERE {$campoTabelaEstrangeira} = {$valor}");

		// checando verificacao obteve sucesso
		if ((isset($checkConstraint)) and ($checkConstraint != false)) {

			// verificando se a tabela/campo esta relacionada em relacao categoria chave estrangeira e se o sistema deve guardar a tabela origem
			if (($nomeCampoOrigem) and ($nomeCampoOrigem))
				return $this->_assocChaveEstrangeiraRelacao->checaRelacaoCategoriaChaveEstrangeira($nomeTabelaOrigem, $nomeCampoOrigem, $forceCreateRelationship);
			else
				return true;

		} else {

			return false;
		}	
    }

    /**
     * Checa se existem registros filhos vinculados ao objeto
     * 
     * @param Object $objeto
     */
	public static function checaRegistrosFilhosObjeto($objeto)
	{
		// checando se existem registros filhos relacionados a FK (banco de dados)
		$existemRegistrosFilhos = self::checaRegistrosFilhosFKObjeto($objeto);

		// verificando o resultado da verificacao sobre registos filhos relacionados a FK
		if ($existemRegistrosFilhos)		
			return true;

		// checando se existem registros filhos relacionados atraves de categoria chave estrangeira
		$existemRegistrosFilhos = self::checaRegistrosFilhosCategoriaChaveEstrangeiraPorObjeto($objeto);

		// verificando o resultado da verificacao sobre registos filhos relacionados a FK
		return $existemRegistrosFilhos;
	}

    /**
     * Checa se existem registros filhos vinculados ao objeto atraves de chave estrangeira (banco de dados)
     * 
     * @param Object $objeto
     * 
     * @return Boolean
     */
	public static function checaRegistrosFilhosFKObjeto($objeto)
	{
		// verificando se o parametro informado eh um objeto
		if (!is_object($objeto))
			throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO);

		// recuperando o nome da tabela relacionada ao objeto
		$nomeTabelaObjeto = Basico_OPController_PersistenceOPController::bdRetornaTableNameObjeto($objeto);

		// retornando resultado
		return self::checaRegistrosFilhosFKPorTabelaId($nomeTabelaObjeto, $objeto->id);
	}

	/**
	 * Checa se existem registros filhos vinculado a tabela atraves de chave estrangeira (banco de dados)
	 * 
	 * @param String $nomeTabela
	 * @param Integer $idPK
	 * 
	 * @return Boolean
	 */
	public static function checaRegistrosFilhosFKPorTabelaId($nomeTabela, $idPK)
	{
		// recuperando array contendo as dependencias do objeto
		$arrayDependencias = self::retornaArrayDependenciasTabelaFKPorNomeTabela($nomeTabela);

		// loop para verificar dependencia
		foreach ($arrayDependencias as $dependencia) {
			// carregando variaveis
			$tabelaDependente      = $dependencia[ARRAY_TABLE_DEPENDENCIES_FK_TABLE];
			$campoTabelaDependente = $dependencia[ARRAY_TABLE_DEPENDENCIES_FK_COLUMN];

			// query para localizar registros filhos
			$queryLocalizaRegistrosFilhos = "SELECT {$campoTabelaDependente} FROM {$tabelaDependente} WHERE $campoTabelaDependente = {$idPK}";

			// recuperando array de resultados
			$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryLocalizaRegistrosFilhos);

			// verificando se houve resultado (dependencia)
			if (count($arrayResultados) > 0)
				return true;
		}

		return false;
	}

	/**
	 * Retorna um array contendo as relacoes de dependencia
	 * 
	 * @param String $nomeTabela
	 */
	public static function retornaArrayDependenciasTabelaFKPorNomeTabela($nomeTabela)
	{
		// inicializando variaveis
		$fkTableColumnName        = ARRAY_TABLE_DEPENDENCIES_FK_TABLE;
		$fkColumnColumnName       = ARRAY_TABLE_DEPENDENCIES_FK_COLUMN;
		$pkTableColumnName        = ARRAY_TABLE_DEPENDENCIES_PK_TABLE;
		$pkColumnColumnName       = ARRAY_TABLE_DEPENDENCIES_PK_COLUMN;
		$constraintNameColumnName = ARRAY_TABLE_DEPENDENCIES_CONSTRAINT_NAME;

		// recuperando concatenador do banco de dados
		$concatenadorDB = Basico_OPController_DBUtilOPController::retornaConcatenadorDB();

		// query que verifica as dependencias de uma tabela
		$queryDependenciasTabela = 
		"
			SELECT fk.CONSTRAINT_SCHEMA {$concatenadorDB}'.'{$concatenadorDB} fk.TABLE_NAME AS {$fkTableColumnName},
			       cu.COLUMN_NAME AS {$fkColumnColumnName},
			       pk.CONSTRAINT_SCHEMA {$concatenadorDB}'.'{$concatenadorDB} pk.TABLE_NAME AS {$pkTableColumnName},
			       pt.COLUMN_NAME AS {$pkColumnColumnName},
			       c.CONSTRAINT_NAME AS {$constraintNameColumnName}
			
			FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS c      
			INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS fk ON (c.CONSTRAINT_NAME = fk.CONSTRAINT_NAME)
			INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS pk ON (c.UNIQUE_CONSTRAINT_NAME = pk.CONSTRAINT_NAME)
			INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE  cu ON (c.CONSTRAINT_NAME = cu.CONSTRAINT_NAME)
			INNER JOIN (SELECT i1.TABLE_NAME, i2.COLUMN_NAME
			            FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS i1
			            INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE i2 ON (i1.CONSTRAINT_NAME = i2.CONSTRAINT_NAME)
			            WHERE i1.CONSTRAINT_TYPE = 'PRIMARY KEY') pt ON (pt.TABLE_NAME = pk.TABLE_NAME)
			
			WHERE pk.TABLE_SCHEMA {$concatenadorDB}'.'{$concatenadorDB} pk.TABLE_NAME = '{$nomeTabela}'";

		// retornando array contendo as tabelas que possuem dependencia com o objeto
		return Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryDependenciasTabela);
	}

	/**
	 * Retorna um array com as chaves estrangeira de uma tabela
	 * 
	 * @param String $nomeTabela
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 30/05/2012
	 */
	public static function retornaArrayChavesEstrangeirasPorNomeTabela($nomeTabela)
	{
		// inicializando variáveis
		$arrayResultado = array();

		// recuperando concatenador do banco de dados
		$concatenadorDB = Basico_OPController_DBUtilOPController::retornaConcatenadorDB();

		// query para recuperar as fks
		$queryFKsTabela = "SELECT k.column_name, k.constraint_name, c.unique_constraint_name,
							      fk.table_schema as fk_schema, fk.table_name as fk_table_name, fk.column_name as fk_column_name
							
						   FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS c
						   INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE k ON (k.constraint_name = c.constraint_name)
						   INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE fk ON (c.unique_constraint_name = fk.constraint_name)

						   WHERE k.table_schema {$concatenadorDB} '.' {$concatenadorDB} k.table_name = '{$nomeTabela}'";


		// recuperando FKs
		$arrayResultadoFKs = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryFKsTabela);

		// verificando o resultado da recuperação
		if (count($arrayResultadoFKs)) {
			// loop para correção das chaves
			foreach ($arrayResultadoFKs as $chave => $arrayValores) {
				// criando nova chave
				$arrayResultado[$arrayValores['column_name']] = $arrayValores;
			}
		}

		// retornando array contendo as fks da tabela
		return $arrayResultado;
	}

	/**
	 * Retorna um array contendo a relação entre os campos fk 
	 * 
	 * @param String $schemaname
	 * @param String $tablename
	 * @param String $fieldname
	 * 
	 * @return Array|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 30/05/2012
	 */
	public static function retornaArrayRelacaoCampo($schemaname, $tablename, $fieldname)
	{
		// recuperando concatenador do banco de dados
		$concatenadorDB = Basico_OPController_DBUtilOPController::retornaConcatenadorDB();

		// query para recuperar relacao de chave estrangeira relacionada ao campo/tabela/schema
		$queryRelacaoFKCampo = "SELECT fk.table_schema AS fk_schema, fk.table_name AS fk_table, fk.column_name AS fk_field

								FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS c
								INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE k ON (k.constraint_name = c.constraint_name)
								INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE fk ON (c.unique_constraint_name = fk.constraint_name)
								
								WHERE k.table_schema = '{$schemaname}'
								AND k.table_name = '{$tablename}'
								AND k.column_name = '{$fieldname}'";

		// recuperando relacao
		$arrayResultadoRelacao = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryRelacaoFKCampo);

		// verificando o resultado da recuperação
		if (count($arrayResultadoRelacao)) {
			// retornando array de resultados
			return $arrayResultadoRelacao[0];
		}

		// retornando nulo
		return null;
	}

	/**
	 * Retorna um array contendo os ids das categorias e valores do objeto relacionados a categoria chave estrangeira
	 * 
	 * @param Object $objeto
	 * 
	 * @return Array
	 */
	private static function retornaArrayIdsCategoriaValorChaveEstrangeiraPorObjeto($objeto)
	{
		// verificando se o parametro informado eh um objeto
		if (!is_object($objeto))
			throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO);

		// recuperando informacoes sobre o objeto
		$nomeTabelaObjeto = Basico_OPController_PersistenceOPController::bdRetornaTableNameObjeto($objeto);
		$idTabelaObjeto   = Basico_OPController_PersistenceOPController::bdRetornaValorIdGenericoObjeto($objeto);

		// retornando array de resultados
		return self::retornaArrayIdsCategoriaValorChaveEstrangeiraPorNomeTabelaId($nomeTabelaObjeto, $idTabelaObjeto);
	}

	/**
	 * Retorna um array contendo os ids das categorias e valores de uma tabela/id relacionados a categoria chave estrangeira
	 * 
	 * @param String $nomeTabela
	 * @param Integer $idTabela
	 * 
	 * @return Array
	 */
	public static function retornaArrayIdsCategoriaValorChaveEstrangeiraPorNomeTabelaId($nomeTabela, $idTabela)
	{
		// retornando array
		return Basico_OPController_CategoriaAssocChaveEstrangeiraOPController::getInstance()->retornaArrayIdsCategoriaValorChaveEstrangeiraPorNomeTabelaId($nomeTabela, $idTabela);
	}

	/**
	 * Checa se existem registros filhos vinculados ao objeto atraves da classe categoriaChaveEstrangeira
	 * 
	 * @param Mixed $objeto
	 * 
	 * @return Boolean
	 */
	public static function checaRegistrosFilhosCategoriaChaveEstrangeiraPorObjeto($objeto) 
	{
		// retornando resultado da verificacao
		return self::checaArrayIdsCategoriaValorCategoriaChaveEstrangeiraExisteRelacao(self::retornaArrayIdsCategoriaValorChaveEstrangeiraPorObjeto($objeto));
	}
	
	/**
	 * Checa se existem registros filhos vinculados a tabela/id atraves da classe categoriaChaveEstrangeira
	 * 
	 * @param String $nomeTabela
	 * @param Integer $valorId
	 * 
	 * @return Boolean
	 */
	public static function checaRegistrosFilhosCategoriaChaveEstrangeiraPorNomeTabelaId($nomeTabela, $valorId)
	{
		// retornando o resultado da verificacao
		return self::checaArrayIdsCategoriaValorCategoriaChaveEstrangeiraExisteRelacao(self::retornaArrayIdsCategoriaValorChaveEstrangeiraPorNomeTabelaId($nomeTabela, $valorId));
	}

	/**
	 * Checa se o conjunto id categoria / valor de um objeto existe relacao com outro objeto,
	 * atraves de uma categoria chave estrangeira
	 * 
	 * @param Array $arrayIdsCategoriaValorChaveEstrangeiraObjeto
	 * 
	 * @return Boolean
	 */
	private static function checaArrayIdsCategoriaValorCategoriaChaveEstrangeiraExisteRelacao(array $arrayIdsCategoriaValorChaveEstrangeiraObjeto)
	{
		// inicializando variaveis
		$tempReturn = false;

		// recuperando array contendo o nome e campo das tabelas relacionadas em categoria chave estrangeira
		$arrayNomeCampoTabelasRelacionadasCategoriaChaveEstrangeira = Basico_OPController_AssocChaveEstrangeiraRelacaoOPController::getInstance()->retornaArrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira();

		// loop para verificar se alguma categoria/valor de um objeto existe em uma tabela relacionada em categoria chave estrangeira
		foreach ($arrayNomeCampoTabelasRelacionadasCategoriaChaveEstrangeira as $nomeTabelaOrigem => $campoTabelaOrigem) {
			foreach ($arrayIdsCategoriaValorChaveEstrangeiraObjeto as $idCategoriaCategoriaChaveEstrangeira => $valorObjetoOrigem) {

				// carregando query para verificar se existe o valor do objeto na tabela relacionada
				$queryLocalizaValorObjetoTabelaRelacionada = "SELECT {$campoTabelaOrigem} FROM {$nomeTabelaOrigem} WHERE {$campoTabelaOrigem} = {$valorObjetoOrigem} AND ID_CATEGORIA = {$idCategoriaCategoriaChaveEstrangeira}";

				// verificando se existe o valor do objeto na tabela relacionada
				$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryLocalizaValorObjetoTabelaRelacionada);

				// verificando se existe registro na tabela estrangeira
				$tempReturn = (count($arrayResultado) > 0);

				// verificando se houve localizacao de relacao
				if ($tempReturn)
					break;
			}
			// verificando se houve localizacao de relacao
			if ($tempReturn)
				break;
		}

		// retornando resultado
		return $tempReturn;
	}
	
	/**
	 * Retorna um array contendo os ids das categorias que nao devem checar por relacao
	 * 
	 * @return Array
	 */
	public static function retornaArrayIdsCategoriasNaoChecarRelacao()
	{
		// inicializando variaveis
		$arrayIdsCategoriasNaoChecarRelacao = array();
		
		// recuperando ids das categorias que devem ser excluidas de verificacao de relacao
		$arrayIdsCategoriasNaoChecarRelacao[] = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaCVC();
		
		// retornando array
		return $arrayIdsCategoriasNaoChecarRelacao;
	}
	
	/**
	 * Retorna uma string no formato Json com o resultado da consulta de disponibilidade.
	 * 
	 * @param String $nomeTabela
	 * @param String $nomeCampo
	 * @param String $stringPesquisa
	 * 
	 * @return Boolean
	 */
	public static function checaDisponibilidadeString($nomeTabela, $nomeCampo, $stringPesquisa = null)
	{
		// query que verifica disponibilidade
		$queryDisponibilidade = "SELECT {$nomeCampo} FROM {$nomeTabela} WHERE {$nomeCampo} = '{$stringPesquisa}'";

		// recuperando resultados
		$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryDisponibilidade);

		// verificandp resultado
		if (count($arrayResultado) > 0)
			$disponivel = false;
		else
		    $disponivel = true;

		// retornando resultado
		return $disponivel;
	}
}