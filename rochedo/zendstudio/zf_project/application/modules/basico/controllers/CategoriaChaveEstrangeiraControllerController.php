<?php

/**
 * Controlador Categoria Chave Estrangeira
 *
 */

class Basico_CategoriaChaveEstrangeiraControllerController
{
	/**
	 * @var Basico_CategoriaChaveEstrangeira
	 */
	static private $singleton;
	
	/**
	 * @var Basico_Model_CategoriaChaveEstrangeira
	 */
	private $categoriaChaveEstrangeira;
	
    /**
     * Construtor do Controller
     * 
     * @return void
     */
	private function __construct()
	{
		$this->categoriaChaveEstrangeira = new Basico_Model_CategoriaChaveEstrangeira();
	}
	
	/**
	 * Inicializa o controlador Basico_CategoriaChaveEstrangeira
	 * 
	 * @return Basico_CategoriaChaveEstrangeiraController
	 */
	public function init()
	{
		// verificando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_CategoriaChaveEstrangeiraControllerController();
		}
		return self::$singleton;
	}

	/**
	 * Retorna um array contendo todas as tabelas relacionadas com categoria chave estrangeira.
	 * A chave do array contem o nome da tabela e o valor contem o nome do campo
	 * 
	 * @param Array $arrayIdsCategoriasExclusao
	 * 
	 * @return Array
	 */
	public static function retornaArrayNomeCampoTabelasCategoriaChaveEstrangeira(array $arrayIdsCategoriasExclusao)
	{
		// inicializando variaveis
		$arrayNomeCampoTabelasCategoriaChaveEstrangeira = array();
		$stringImplodidaArrayIdsCategoriasExclusao = implode(',', $arrayIdsCategoriasExclusao);

		// instanciando modelo categoria chave estrangeira
		$modelCategoriaChaveEstrangeira = new Basico_Model_CategoriaChaveEstrangeira();

		// recuperando todas as tuplas
		$objsCategoriaChaveEstrangeira = $modelCategoriaChaveEstrangeira->fetchList("id_categoria not in ({$stringImplodidaArrayIdsCategoriasExclusao})");
		
		// loop para recuperar o nome das tabelas
		foreach($objsCategoriaChaveEstrangeira as $objCategoriaChaveEstrangeira) {
			// recupernado o nome das tabelas e colocando no array de resultados 
			$arrayNomeCampoTabelasCategoriaChaveEstrangeira[$objCategoriaChaveEstrangeira->tabelaEstrangeira] = $objCategoriaChaveEstrangeira->campoEstrangeiro;
		}

		// retornando o array de resultados
		return $arrayNomeCampoTabelasCategoriaChaveEstrangeira;
	}
}
