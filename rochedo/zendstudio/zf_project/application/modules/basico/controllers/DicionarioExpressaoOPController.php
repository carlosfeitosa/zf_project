<?php

/**
 * Controlador Tradutor
 *
 */

class Basico_OPController_DicionarioExpressaoOPController
{
	/**
	 * @var Basico_OPController_TradutorOPController
	 */
	protected static $_singleton;
	
	/**
	 * @var Basico_Model_DicionarioExpressao
	 */
	protected $_tradutor;
	
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
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DicionarioExpressaoOPController();
		}
		// retornando a instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um modelo de tradutor vazio
	 * 
	 * @return Basico_Model_DicionarioExpressao
	 */
	public function retornaNovoObjetoTradutor()
	{
		// retornando um modelo vazio
		return new Basico_Model_DicionarioExpressao();
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
	 * @param Boolean $estourarExcessao
	 * 
	 * @return String
	 */
	public static function retornaTraducaoViaSQL($constanteTextual, $linguaDestino = DEFAULT_SYSTEM_LANGUAGE, $estourarExcessao = true)
	{
		// verificando se foi passado a string contendo a constanteTextual
		if (!$constanteTextual) {
			// retornando nulo
			return null;
		}

		// montando query para recuperacao da traducao na lingua passada pelo usuario
		$consultaSQL = "SELECT d.traducao
						FROM basico.dicionario_expressao d
						INNER JOIN basico.categoria c ON (d.id_categoria = c.id)
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
							FROM basico.dicionario_expressao d
							INNER JOIN basico.categoria c ON (d.id_categoria = c.id)
							WHERE c.nome = '{$linguaDestinoPadraoSistema}'
							AND d.constante_textual = '{$constanteTextual}'";

			// recuperando array com o resultado
			$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($consultaSQL);

			// verificando o resultado da recuperacao
			if (count($arrayResultado) > 0) {
				// retornando a traducao
				return $arrayResultado[0]['traducao'];
			} else {
				
				if ($estourarExcessao)
					throw new Exception(MSG_ERRO_TRADUCAO_NAO_ENCONTRADA . " | Expressão: '{$constanteTextual}' para a língua: '" . $linguaDestinoPadraoSistema . "'");
				else{
					return MSG_ERRO_TRADUCAO_NAO_ENCONTRADA;
				}
			}
		}

		throw new Exception(MSG_ERRO_TRADUCAO_NAO_ENCONTRADA . " | Expressão: '{$constanteTextual}' para a língua: '{$linguaDestino}'.");
	}

	/**
	 * Verifica se uma expressão existe no banco de dados
	 * 
	 * @param String $constanteTextual
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 27/05/2012
	 */
	public static function verificaTraducaoExiste($constanteTextual)
	{
		// recuperando informação
		$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL('basico.dicionario_expressao', array('id'), "constante_textual = '{$constanteTextual}'");

		// retornando resultado da verificação
		return (count($arrayResultado) > 0);
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
	
	/**
	 * Retorna um array de traducoes preservando as chaves do array passado 
	 * 
	 * @param array $arrayConstantesTextuais - array de chaves e valores (constantes textuais)
	 * 
	 * @return Array|null - array de chaves preservadas e valores traduzidos
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * 
	 * @since 31/05/2012
	 */
	public static function retornaArrayTraducoesViaSql(array $arrayConstantesTextuais)
	{
		// verificando se existem constantes para traducao
		if (count($arrayConstantesTextuais)) {
			
			// inicializando variaveis
			$arrayRetorno = $arrayConstantesTextuais;
			
			// loop para transformar valores do array
			foreach ($arrayRetorno as $chave => $constanteTextual) {
				// setando valor do elemento do array entre aspas
				$arrayRetorno[$chave] = Basico_OPController_UtilOPController::retornaStringEntreCaracter($constanteTextual, "'");
				
				// limpando memoria
				unset($chave, $constanteTextual);
			}
			
			// transformando valores do array em string
			$stringConstantesTextuais = implode(',', $arrayRetorno);
			
			// recuperando a lingua do sistema
			$linguaSistema = DEFAULT_SYSTEM_LANGUAGE;
			
			// montando query pra recuperar traducoes
			$queryTraducoes = "SELECT de.constante_textual, de.traducao
							   FROM basico.dicionario_expressao de
							   LEFT JOIN basico.categoria c ON (de.id_categoria = c.id)
							   LEFT JOIN basico.tipo_categoria tc ON (c.id_tipo_categoria = tc.id)
							   WHERE de.constante_textual IN ({$stringConstantesTextuais})
							   AND c.nome = '{$linguaSistema}'
							   AND tc.nome = 'LINGUAGEM'";
			
			// recuperando resultado da query
			$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryTraducoes);
			
			// limpando memoria
			unset($stringConstantesTextuais, $queryTraducoes);
			
			// verificando resultado da query
			if (count($arrayResultado)) {
				// loop para setar traducoes no array de chaves preservadas
				foreach ($arrayResultado as $arrayTraducoes) {
	
					// recuperando elementos para a traducao atual
					$chavesElementosParaTraduzir = array_keys($arrayConstantesTextuais, $arrayTraducoes['constante_textual']);
					
					// percorrendo elementos para traduzir constantes textuais
					foreach ($chavesElementosParaTraduzir as $chaveElemento) {
						// setando traducao no array preservado
						$arrayRetorno[$chaveElemento] = $arrayTraducoes['traducao'];
					}
					// limpando memoria
					unset($arrayTraducoes);
				}
				
				// retornando array de resultados
				return $arrayRetorno; 
			}
		}
		return null;
	}
}
