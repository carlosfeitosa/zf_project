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

	/*
	 * Checa se existem registros filhos vinculados ao objeto atraves da classe categoriaChaveEstrangeira
	 * 
	 * @param Mixed $objeto
	 * 
	 * @return Boolean
	 */
	public static function checaRegistrosFilhosCategoriaChaveEstrangeira($objeto) 
	{
		// verificando se o parametro informado eh um objeto
		if (!is_object($objeto))
			throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO);

		// inicianlizando variaveis
		$arrayIdsCategoriaValorChaveEstrangeiraObjeto = array();
		
		// instanciando modelo de categoria chave estrangeira
		$modelCategoriaChaveEstrangeira = new Basico_Model_CategoriaChaveEstrangeira();
		
		// recuperando o nome da tabela relacionada ao objeto
		$nomeTabelaObjeto = Basico_PersistenceControllerController::bdRetornaTableNameObjeto($objeto);

		// recuperando array de objetos categoria chave estrangeira relacionados com a tabela do objeto
		$arrayObjsCategoriaChaveEstrangeiraObjeto = $modelCategoriaChaveEstrangeira->fetchList("tabela_estrangeira = '{$nomeTabelaObjeto}'");

		// recuperando ids de categoria chave estrangeira
		foreach ($arrayObjsCategoriaChaveEstrangeiraObjeto as $objCategoriaChaveEsrtrangeiraObjeto) {
			// verificando se o tipo de categoria do objeto e o tipo da categoria da categoria pai nao eh do tipo SISTEMA
			if (($objCategoriaChaveEsrtrangeiraObjeto->getCategoriaObject()->getTipoCategoriaObject()->nome != APPLICATION_SYSTEM_PERFIL) and ($objCategoriaChaveEsrtrangeiraObjeto->getCategoriaObject()->getTipoCategoriaRootCategoriaPaiObject()->nome != APPLICATION_SYSTEM_PERFIL))
				// carregando ids de categoria chave estrangeira e valor do id do objeto
				$arrayIdsCategoriaValorChaveEstrangeiraObjeto[$objCategoriaChaveEsrtrangeiraObjeto->categoria] = Basico_PersistenceControllerController::bdRetornaValorIdGenericoObjeto($objeto);
		}

		// retornando resultado da verificacao
		return self::checaArrayIdsCategoriaValorCategoriaChaveEstrangeiraExisteRelacao($arrayIdsCategoriaValorChaveEstrangeiraObjeto);
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

		// recuperando instancia do banco de dados
		$bd = Basico_PersistenceControllerController::bdRecuperaBDSessao();
		
		// loop para verificar se alguma categoria/valor de um objeto existe em uma tabela relacionada em categoria chave estrangeira
		foreach ($arrayNomeCampoTabelasRelacionadasCategoriaChaveEstrangeira as $nomeTabelaOrigem => $campoTabelaOrigem) {
			foreach ($arrayIdsCategoriaValorChaveEstrangeiraObjeto as $idCategoriaCategoriaChaveEstrangeira => $valorObjetoOrigem) {
				// verificando se existe o valor do objeto na tabela relacionada
				$arrayResultado = $bd->fetchAll("SELECT {$campoTabelaOrigem} FROM {$nomeTabelaOrigem} WHERE {$campoTabelaOrigem} = ? AND ID_CATEGORIA = ?", array($valorObjetoOrigem, $idCategoriaCategoriaChaveEstrangeira));

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
}