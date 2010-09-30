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
     * 
     * @return Boolean
     */
    public static function checaExistenciaValorCategoriaChaveEstrangeira($idCategoria, $valor)
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

			return true;
		} else {

			return true;
		}	
    }
}