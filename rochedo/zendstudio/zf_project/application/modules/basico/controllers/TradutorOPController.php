<?php

/**
 * Controlador Tradutor
 *
 */

class Basico_OPController_TradutorOPController
{
	/**
	 * @var Basico_OPController_TradutorOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_Tradutor
	 */
	private $_tradutor;
	
    /**
     * Construtor do controlador Basico_OPController_TradutorOPController
     * 
     * @return void
     */
	private function __construct()
	{
		// instanciando o modelo
		$this->_tradutor = $this->retornaNovoObjetoTradutor();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_TradutorOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}
	
	/**
	 * Inicializa o controlador Basico_OPController_TradutorOPController
	 * 
	 * @return Basico_OPController_TradutorOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_TradutorOPController();
		}
		// retornando a instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um modelo de tradutor vazio
	 * 
	 * @return Basico_Model_Tradutor
	 */
	public function retornaNovoObjetoTradutor()
	{
		// retornando um modelo vazio
		return new Basico_Model_Tradutor();
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
        $categoriaControllerController = Basico_OPController_CategoriaOPController::getInstance();

        // recuperando o id da categoria da lingua
        $idCategoriaLinguagem = $categoriaControllerController->retornaIdCategoriaLinguagem($linguaDestino);

        // recuperando traducao
        $objTradutor = $this->_tradutor->fetchList("id_categoria = {$idCategoriaLinguagem} AND constante_textual = '{$constanteTextual}'", null, 1, 0);

        // verificando a traducao existe no banco de dados para a lingua passada por parametro
        if (isset($objTradutor[0]))
        	// retornando traducao na lingua passada por parametro
            return $objTradutor[0]->traducao;
        else if ($linguaDestino !== DEFAULT_SYSTEM_LANGUAGE){
        	// recuperando objeto categoria de lingua padrao do sistema
            $objCategoriaLinguagem = $categoriaControllerController->retornaObjetoCategoriaLinguagem(DEFAULT_SYSTEM_LANGUAGE);

            // recuperando o id da categoria de lingua padrao do sistema
            $idCategoriaLinguagem = $objCategoriaLinguagem->id;

            // recuperando traducao
            $objTradutor = $this->_tradutor->fetchList("id_categoria = {$idCategoriaLinguagem} AND constante_textual = '{$constanteTextual}'", null, 1, 0);

            // verificando a traducao existe no banco de dados para a lingua padrao do sistema
            if (isset($objTradutor[0]))
            	// retornando traducao na lingua padrao do sistema
                return $objTradutor[0]->traducao . MSG_ERRO_UTILIZANDO_LINGUA_PADRAO_TRADUCAO_NAO_ENCONTRADA;

            throw new Exception(MSG_ERRO_TRADUCAO_NAO_ENCONTRADA . " | Expressão: '{$constanteTextual}' para a língua: '" . DEFAULT_SYSTEM_LANGUAGE . "'");
        }

        throw new Exception(MSG_ERRO_TRADUCAO_NAO_ENCONTRADA . " | Expressão: '{$constanteTextual}' para a língua: '{$linguaDestino}'.");
	}
	
	/**
	 * Retorna um array de objetos Basico_Model_Categoria contendo as linguas ativas no sistema
	 * 
	 * @return null|Array
	 */
	public function retornaCategoriasLinguasAtivas()
	{
		// instanciando controladores
		$categoriaControllerController = Basico_OPController_CategoriaOPController::getInstance();

		// retornando resultado da chamada ao metodo "retornaCategoriasLinguasAtivas" do controlador "CategoriaControllerController"
		return $categoriaControllerController->retornaCategoriasLinguasAtivas();
	}
}
