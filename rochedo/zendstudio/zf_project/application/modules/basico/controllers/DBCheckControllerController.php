<?php
/**
 * Controlador DB Check
 * 
 */

class Basico_DBCheckControllerController
{
    /**
     * Checa a existencia da relacao categoria chave estrangeira
     * 
     * @param Integer $idCategoria
     * 
     * @return Boolean
     */
    public static function checaExistenciaRelacaoCategoriaChaveEstrangeira($idCategoria)
    {
        // instanciando modelo de categoria chave estrangeira
		$modelCategoriaChaveEstrangeira = new Basico_Model_CategoriaChaveEstrangeira();
		// recuperando a tupla referente a categoria passada por parametro
		$arrayCategoriaChaveEstrangeira = $modelCategoriaChaveEstrangeira->fetchList("id_categoria = {$idCategoria}", null, 1, 0);

		// verificando se existe a relacao da categoria com uma chave estrangeira
		if (isset($arrayCategoriaChaveEstrangeira[0]))
			return true;
		else
			return false;
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
    public static function checaExistenciaValorCategoriaChaveEstrangeira($idCategoria, $valor, $nomeTabelaOrigem = null, $nomeCampoOrigem = null, $forceCreateRelationship = false)
    {
    	// instanciando modelo de categoria chave estrangeira
		$modelCategoriaChaveEstrangeira = new Basico_Model_CategoriaChaveEstrangeira();
		// recuperando a tupla referente a categoria passada por parametro
		$arrayCategoriaChaveEstrangeira = $modelCategoriaChaveEstrangeira->fetchList("id_categoria = {$idCategoria}", null, 1, 0);

		// verificando se existe a relacao da categoria com uma chave estrangeira
		if (!isset($arrayCategoriaChaveEstrangeira[0])){
			
			return false;
		}
		
		// recuperando o nome da tabela estrangeira
		$nomeTabelaEstrangeira  = $arrayCategoriaChaveEstrangeira[0]->tabelaEstrangeira;
		// recuperando o nome do campo da tabela estrangeira
		$campoTabelaEstrangeira = $arrayCategoriaChaveEstrangeira[0]->campoEstrangeiro;

		// recuperando o banco de dados da sessao
		$auxDb = Basico_PersistenceControllerController::bdRecuperaBDSessao();

		// verificando a existencia do valor passado por parametro na tabela estrangeira recuperada
		$checkConstraint = $auxDb->fetchAll("SELECT {$campoTabelaEstrangeira} FROM {$nomeTabelaEstrangeira} WHERE {$campoTabelaEstrangeira} = ?", array($valor));

		// checando verificacao obteve sucesso
		if ((isset($checkConstraint)) and ($checkConstraint != false)) {

			// instanciando controlador de relacao categoria chave estrangeira
			$controllerRelacaoCategoriaChaveEstrangeira = Basico_RelacaoCategoriaChaveEstrangeiraControllerController::init();

			// verificando se a tabela/campo esta relacionada em relacao categoria chave estrangeira e se o sistema deve guardar a tabela origem
			if (($nomeCampoOrigem) and ($nomeCampoOrigem))
				return $controllerRelacaoCategoriaChaveEstrangeira->checaRelacaoCategoriaChaveEstrangeira($nomeTabelaOrigem, $nomeCampoOrigem, $forceCreateRelationship);
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
	public static function checaRegistrosFilhos($objeto)
	{
		// checando se existem registros filhos relacionados a FK (banco de dados)
		$existemRegistrosFilhos = self::checaRegistrosFilhosFK($objeto);
		
		// verificando o resultado da verificacao sobre registos filhos relacionados a FK
		if ($existemRegistrosFilhos)		
			return true;

		// checando se existem registros filhos relacionados atraves de categoria chave estrangeira
		$existemRegistrosFilhos = self::checaRegistrosFilhosCategoriaChaveEstrangeira($objeto);

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
	public static function checaRegistrosFilhosFK($objeto)
	{
		// verificando se o parametro informado eh um objeto
		if (!is_object($objeto))
			throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO);

		// recuperando o nome da tabela relacionada ao objeto
		$nomeTabelaObjeto = Basico_PersistenceControllerController::bdRetornaTableNameObjeto($objeto);

		// retornando resultado
		return self::checaRegistrosFilhosFKTabelaId($nomeTabelaObjeto, $objeto->id);
	}

	/**
	 * Checa se existem registros filhos vinculado a tabela atraves de chave estrangeira (banco de dados)
	 * 
	 * @param String $nomeTabela
	 * @param Integer $idPK
	 * 
	 * @return Boolean
	 */
	public static function checaRegistrosFilhosFKTabelaId($nomeTabela, $idPK)
	{
		// recuperando array contendo as dependencias do objeto
		$arrayDependencias = self::retornaArrayDependenciasTabelaFK($nomeTabela);

		// loop para verificar dependencia
		foreach ($arrayDependencias as $dependencia) {
			// carregando variaveis
			$tabelaDependente      = $dependencia[ARRAY_TABLE_DEPENDENCIES_FK_TABLE];
			$campoTabelaDependente = $dependencia[ARRAY_TABLE_DEPENDENCIES_FK_COLUMN];
			
			// query para localizar registros filhos
			$queryLocalizaRegistrosFilhos = "SELECT {$campoTabelaDependente} FROM {$tabelaDependente} WHERE $campoTabelaDependente = {$idPK}";

			// recuperando array de resultados
			$arrayResultados = Basico_PersistenceControllerController::bdRetornaArraySQLQuery($queryLocalizaRegistrosFilhos);

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
	public static function retornaArrayDependenciasTabelaFK($nomeTabela)
	{
		// inicializando variaveis
		$fkTableColumnName        = ARRAY_TABLE_DEPENDENCIES_FK_TABLE;
		$fkColumnColumnName       = ARRAY_TABLE_DEPENDENCIES_FK_COLUMN;
		$pkTableColumnName        = ARRAY_TABLE_DEPENDENCIES_PK_TABLE;
		$pkColumnColumnName       = ARRAY_TABLE_DEPENDENCIES_PK_COLUMN;
		$constraintNameColumnName = ARRAY_TABLE_DEPENDENCIES_CONSTRAINT_NAME;
		
		// query que verifica as dependencias de uma tabela
		$queryDependenciasTabela = 
		"
			SELECT fk.TABLE_NAME AS {$fkTableColumnName},
			       cu.COLUMN_NAME AS {$fkColumnColumnName},
			       pk.TABLE_NAME AS {$pkTableColumnName},
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
			
			WHERE pk.TABLE_NAME = '{$nomeTabela}'
		";
		
		// retornando array contendo as tabelas que possuem dependencia com o objeto
		return Basico_PersistenceControllerController::bdRetornaArraySQLQuery($queryDependenciasTabela);
	}


	/**
	 * Retorna um array contendo os ids das categorias e valores do objeto relacionados a categoria chave estrangeira
	 * 
	 * @param Object $objeto
	 * 
	 * @return Array
	 */
	private function retornaArrayIdsCategoriaValorChaveEstrangeiraObjeto($objeto)
	{
		// verificando se o parametro informado eh um objeto
		if (!is_object($objeto))
			throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO);
		
		// recuperando informacoes sobre o objeto
		$nomeTabelaObjeto = Basico_PersistenceControllerController::bdRetornaTableNameObjeto($objeto);
		$idTabelaObjeto   = Basico_PersistenceControllerController::bdRetornaValorIdGenericoObjeto($objeto);

		// retornando array de resultados
		return self::retornaArrayIdsCategoriaValorChaveEstrangeiraNomeTabelaId($nomeTabelaObjeto, $idTabelaObjeto);
	}

	/**
	 * Retorna um array contendo os ids das categorias e valores de uma tabela/id relacionados a categoria chave estrangeira
	 * 
	 * @param String $nomeTabela
	 * @param Integer $idTabela
	 * 
	 * @return Array
	 */
	public static function retornaArrayIdsCategoriaValorChaveEstrangeiraNomeTabelaId($nomeTabela, $idTabela)
	{
		// inicianlizando variaveis
		$arrayIdsCategoriaValorChaveEstrangeiraObjeto = array();
		
		// instanciando modelo de categoria chave estrangeira
		$modelCategoriaChaveEstrangeira = new Basico_Model_CategoriaChaveEstrangeira();
		
		// recuperando array de categorias que nao devem ser relacionadas
		$arrayIdsCategoriasNaoChecarRelacao = self::retornaArrayIdsCategoriasNaoChecarRelacao();
		
		// transformando array em string
		$stringIdsCategoriasNaoChecarRelacao = implode(',', $arrayIdsCategoriasNaoChecarRelacao);
		
		// recuperando array de objetos categoria chave estrangeira relacionados com a tabela do objeto
		$arrayObjsCategoriaChaveEstrangeiraObjeto = $modelCategoriaChaveEstrangeira->fetchList("tabela_estrangeira = '{$nomeTabela}' and id_categoria not in ({$stringIdsCategoriasNaoChecarRelacao})");

		// recuperando ids de categoria chave estrangeira
		foreach ($arrayObjsCategoriaChaveEstrangeiraObjeto as $objCategoriaChaveEsrtrangeiraObjeto) {
			// verificando se o tipo de categoria do objeto e o tipo da categoria da categoria pai nao eh do tipo SISTEMA
			if (($objCategoriaChaveEsrtrangeiraObjeto->getCategoriaObject()->getTipoCategoriaObject()->nome != APPLICATION_SYSTEM_PERFIL) and ($objCategoriaChaveEsrtrangeiraObjeto->getCategoriaObject()->getTipoCategoriaRootCategoriaPaiObject()->nome != APPLICATION_SYSTEM_PERFIL))
				// carregando ids de categoria chave estrangeira e valor do id do objeto
				$arrayIdsCategoriaValorChaveEstrangeiraObjeto[$objCategoriaChaveEsrtrangeiraObjeto->categoria] = $idTabela;
		}

		// retornando o array contendo os ids das categorias e valores do objeto a partir de categoria chave estrangeira
		return $arrayIdsCategoriaValorChaveEstrangeiraObjeto;
	}

	/**
	 * Checa se existem registros filhos vinculados ao objeto atraves da classe categoriaChaveEstrangeira
	 * 
	 * @param Mixed $objeto
	 * 
	 * @return Boolean
	 */
	public static function checaRegistrosFilhosCategoriaChaveEstrangeira($objeto) 
	{
		// retornando resultado da verificacao
		return self::checaArrayIdsCategoriaValorCategoriaChaveEstrangeiraExisteRelacao(self::retornaArrayIdsCategoriaValorChaveEstrangeiraObjeto($objeto));
	}
	
	/**
	 * Checa se existem registros filhos vinculados a tabela/id atraves da classe categoriaChaveEstrangeira
	 * 
	 * @param String $nomeTabela
	 * @param Integer $valorId
	 * 
	 * @return Boolean
	 */
	public static function checaRegistrosFilhosCategoriaChaveEstrangeiraTabelaId($nomeTabela, $valorId)
	{
		// retornando o resultado da verificacao
		return self::checaArrayIdsCategoriaValorCategoriaChaveEstrangeiraExisteRelacao(self::retornaArrayIdsCategoriaValorChaveEstrangeiraNomeTabelaId($nomeTabela, $valorId));
	}

	/**
	 * Checa se o conjunto id categoria / valor de um objeto existe relacao com outro objeto,
	 * atraves de uma categoria chave estrangeira
	 * 
	 * @param Array $arrayIdsCategoriaValorChaveEstrangeiraObjeto
	 * 
	 * @return Boolean
	 */
	private function checaArrayIdsCategoriaValorCategoriaChaveEstrangeiraExisteRelacao(array $arrayIdsCategoriaValorChaveEstrangeiraObjeto)
	{
		// inicializando variaveis
		$tempReturn = false;

		// recuperando array contendo o nome e campo das tabelas relacionadas em categoria chave estrangeira
		$arrayNomeCampoTabelasRelacionadasCategoriaChaveEstrangeira = Basico_RelacaoCategoriaChaveEstrangeiraControllerController::retornaArrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira();

		// loop para verificar se alguma categoria/valor de um objeto existe em uma tabela relacionada em categoria chave estrangeira
		foreach ($arrayNomeCampoTabelasRelacionadasCategoriaChaveEstrangeira as $nomeTabelaOrigem => $campoTabelaOrigem) {
			foreach ($arrayIdsCategoriaValorChaveEstrangeiraObjeto as $idCategoriaCategoriaChaveEstrangeira => $valorObjetoOrigem) {

				// carregando query para verificar se existe o valor do objeto na tabela relacionada
				$queryLocalizaValorObjetoTabelaRelacionada = "SELECT {$campoTabelaOrigem} FROM {$nomeTabelaOrigem} WHERE {$campoTabelaOrigem} = {$valorObjetoOrigem} AND ID_CATEGORIA = {$idCategoriaCategoriaChaveEstrangeira}";
				
				// verificando se existe o valor do objeto na tabela relacionada
				$arrayResultado = Basico_PersistenceControllerController::bdRetornaArraySQLQuery($queryLocalizaValorObjetoTabelaRelacionada);

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
	private function retornaArrayIdsCategoriasNaoChecarRelacao()
	{
		// inicializando variaveis
		$arrayIdsCategoriasNaoChecarRelacao = array();
		
		// recuperando ids das categorias que devem ser excluidas de verificacao de relacao
		$arrayIdsCategoriasNaoChecarRelacao[] = Basico_CategoriaControllerController::retornaIdCategoriaCVC();
		
		// retornando array
		return $arrayIdsCategoriasNaoChecarRelacao;
	}
	
	/**
	 * Retorna uma string no formato Json com o resultado da consulta de disponibilidade.
	 * @param String $nomeTabela
	 * @param String $nomeCampo
	 * @param String $stringPesquisa
	 * @return Boolean
	 */
	public static function checaDisponibilidadeString($nomeTabela, $nomeCampo, $stringPesquisa = NULL)
	{
		
		$queryDisponibilidade = "SELECT {$nomeCampo} FROM {$nomeTabela} WHERE {$nomeCampo} = '{$stringPesquisa}'";
		
		$arrayResultado = Basico_PersistenceControllerController::bdRetornaArraySQLQuery($queryDisponibilidade);
		
		if (count($arrayResultado) > 0)
			$disponivel = false;
		else
		    $disponivel = true;
		
		return $disponivel;
		
	}
}