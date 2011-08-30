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
	 * @deprecated utilize retornaTraducaoViaSQL para maior performance
	 * 
	 * @param String $constanteTextual
	 * @param String $linguaDestino
	 * 
	 * @return String
	 */
	public function retornaTraducao($constanteTextual, $linguaDestino = DEFAULT_SYSTEM_LANGUAGE)
	{
		// instanciando controlador de categorias
        $categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();

        // recuperando o id da categoria da lingua
        $idCategoriaLinguagem = $categoriaOPController->retornaIdCategoriaLinguagem($linguaDestino);

        // recuperando traducao
        $objTradutor = Basico_OPController_PersistenceOPController::bdObjectFetchList($this->_tradutor, "id_categoria = {$idCategoriaLinguagem} AND constante_textual = '{$constanteTextual}'", null, 1, 0);

        // verificando a traducao existe no banco de dados para a lingua passada por parametro
        if (isset($objTradutor[0])) {
        	// retornando traducao na lingua passada por parametro
            return $objTradutor[0]->traducao;
        } else if ($linguaDestino !== DEFAULT_SYSTEM_LANGUAGE){
        	// recuperando objeto categoria de lingua padrao do sistema
            $objCategoriaLinguagem = $categoriaOPController->retornaObjetoCategoriaLinguagem(DEFAULT_SYSTEM_LANGUAGE);

            // recuperando o id da categoria de lingua padrao do sistema
            $idCategoriaLinguagem = $objCategoriaLinguagem->id;

            // recuperando traducao
            $objTradutor = Basico_OPController_PersistenceOPController::bdObjectFetchList($this->_tradutor, "id_categoria = {$idCategoriaLinguagem} AND constante_textual = '{$constanteTextual}'", null, 1, 0);

            // verificando a traducao existe no banco de dados para a lingua padrao do sistema
            if (isset($objTradutor[0]))
            	// retornando traducao na lingua padrao do sistema
                return $objTradutor[0]->traducao . MSG_ERRO_UTILIZANDO_LINGUA_PADRAO_TRADUCAO_NAO_ENCONTRADA;

            throw new Exception(MSG_ERRO_TRADUCAO_NAO_ENCONTRADA . " | Expressão: '{$constanteTextual}' para a língua: '" . DEFAULT_SYSTEM_LANGUAGE . "'");
        }

        throw new Exception(MSG_ERRO_TRADUCAO_NAO_ENCONTRADA . " | Expressão: '{$constanteTextual}' para a língua: '{$linguaDestino}'.");
	}

	/**
	 * Retorna uma tradução de uma expressão, através de uma constante
	 * e língua de destino, via SQL.
	 * 
	 * @param String $constanteTextual
	 * @param String $linguaDestino
	 * @param Boolean $excessao
	 * 
	 * @return String
	 */
	public static function retornaTraducaoViaSQL($constanteTextual, $linguaDestino = DEFAULT_SYSTEM_LANGUAGE, $excessao = true)
	{
		// montando query para recuperacao da traducao na lingua passada pelo usuario
		$consultaSQL = "SELECT d.traducao
						FROM dicionario_expressao d
						INNER JOIN categoria c ON (d.id_categoria = c.id)
						WHERE c.nome = '{$linguaDestino}'
						AND d.constante_textual = '{$constanteTextual}'";

		// recuperando array com o resultado
		$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($consultaSQL);

		// verificando o resultado da recuperacao
		if (count($arrayResultado) > 0) {
			// retornando a traducao
			return $arrayResultado[0]['traducao'];
		} else {
			// recuperando a categoria da lingua padrao do sistema
			$linguaDestinoPadraoSistema = DEFAULT_SYSTEM_LANGUAGE;
			// montando query para recuperacao da traducao na lingua passada pelo usuario
			$consultaSQL = "SELECT d.traducao
							FROM dicionario_expressao d
							INNER JOIN categoria c ON (d.id_categoria = c.id)
							WHERE c.nome = '{$linguaDestinoPadraoSistema}'
							AND d.constante_textual = '{$constanteTextual}'";

			// recuperando array com o resultado
			$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($consultaSQL);

			// verificando o resultado da recuperacao
			if (count($arrayResultado) > 0) {
				// retornando a traducao
				return $arrayResultado[0]['traducao'];
			} else {
				
				if ($excessao)
					throw new Exception(MSG_ERRO_TRADUCAO_NAO_ENCONTRADA . " | Expressão: '{$constanteTextual}' para a língua: '" . $linguaDestinoPadraoSistema . "'");
				else{
					return MSG_ERRO_TRADUCAO_NAO_ENCONTRADA;
				}
			}
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
		$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();

		// retornando resultado da chamada ao metodo "retornaCategoriasLinguasAtivas" do controlador "CategoriaOPController"
		return $categoriaOPController->retornaCategoriasLinguasAtivas();
	}
}
