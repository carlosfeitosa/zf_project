<?php

/**
 * Controlador Tradutor
 *
 */

class Basico_TradutorControllerController
{
	/**
	 * @var Basico_Tradutor
	 */
	static private $singleton;
	
	/**
	 * @var Basico_TradutorControllerController
	 */
	private $tradutor;
	
    /**
     * Construtor do Controller
     * @return void
     */
	private function __construct()
	{
		$this->tradutor = new Basico_Model_Tradutor();
	}
	
	/**
	 * Inicializa o controlador Basico_TradutorControllerController
	 * 
	 * @return Basico_TradutorControllerController
	 */
	public static function init()
	{
		// checando singleton
		if (self::$singleton == NULL){
			self::$singleton = new Basico_TradutorControllerController();
		}
		
		return self::$singleton;
	}
	
	/**
	 * Retorna uma tradução de uma expressão, através de uma constante
	 * e língua de destino.
	 * 
	 * @param String $constanteTextual
	 * @param String $linguaDestino
	 * 
	 * @return String
	 */
	public function retornaTraducao($constanteTextual, $linguaDestino = DEFAULT_SYSTEM_LANGUAGE)
	{
		// instanciando controlador de categorias
        $categoriaControllerController = Basico_CategoriaControllerController::init();
        // recuperando o id da categoria da lingua
        $idCategoriaLinguagem = Basico_CategoriaControllerController::retornaIdCategoriaLinguagem($linguaDestino);

        // recuperando traducao
        $traducao = $this->tradutor->fetchList("id_categoria = {$idCategoriaLinguagem} AND constante_textual = '{$constanteTextual}'", null, 1, 0);

        // verificando a traducao existe no banco de dados para a lingua passada por parametro
        if (isset($traducao[0]))
        	// retornando traducao na lingua passada por parametro
            return $traducao[0]->traducao;
        else if ($linguaDestino !== DEFAULT_SYSTEM_LANGUAGE){
        	// recuperando objeto categoria de lingua padrao do sistema
            $objCategoriaLinguagem = $categoriaControllerController->retornaCategoriaLinguagem(DEFAULT_SYSTEM_LANGUAGE);
            // recuperando o id da categoria de lingua padrao do sistema
            $idCategoriaLinguagem = $objCategoriaLinguagem->id;

            // recuperando traducao
            $traducao = $this->tradutor->fetchList("id_categoria = {$idCategoriaLinguagem} AND constante_textual = '{$constanteTextual}'", null, 1, 0);

            // verificando a traducao existe no banco de dados para a lingua padrao do sistema
            if (isset($traducao[0]))
            	// retornando traducao na lingua padrao do sistema
                return $traducao[0]->traducao . MSG_ERRO_UTILIZANDO_LINGUA_PADRAO_TRADUCAO_NAO_ENCONTRADA;

            throw new Exception(MSG_ERRO_TRADUCAO_NAO_ENCONTRADA . " | Expressão: '{$constanteTextual}' para a língua: '" . DEFAULT_SYSTEM_LANGUAGE . "'");
        }

        throw new Exception(MSG_ERRO_TRADUCAO_NAO_ENCONTRADA . " | Expressão: '{$constanteTextual}' para a língua: '{$linguaDestino}'.");
	}
	
	/**
	 * Retorna um array de objetos Basico_Model_Categoria contendo as linguas ativas no sistema
	 * 
	 * @return null|Array
	 */
	public static function retornaCategoriasLinguasAtivas()
	{
		// retornando resultado da chamada ao metodo "retornaCategoriasLinguasAtivas" do controlador "CategoriaControllerController"
		return Basico_CategoriaControllerController::retornaCategoriasLinguasAtivas();
	}
}
