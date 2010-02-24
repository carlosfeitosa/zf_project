<?php

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
	 * Inicializa o controlador Basico_Tradutor
	 * @return Basico_TradutorControllerController
	 */
	public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_TradutorControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Retorna uma tradução de uma expressão, através de uma constante 
	 * e língua de destino.
	 * @param String $constanteTextual
	 * @param String $linguaDestino
	 * @return String
	 */
	public function retornaTraducao($constanteTextual, $linguaDestino = DEFAULT_SYSTEM_LANGUAGE)
	{
        $categoriaControllerController = Basico_CategoriaControllerController::init();
        $categoriaLinguagem = $categoriaControllerController->retornaCategoriaLinguagem($linguaDestino);
        $idCategoriaLinguagem = $categoriaLinguagem->id;
        
        $traducao = $this->tradutor->fetchList("id_categoria = {$idCategoriaLinguagem} AND constante_textual = '{$constanteTextual}'", null, 1, 0);
        
        if (isset($traducao[0]))
            return $traducao[0]->traducao;
        else if ($linguaDestino !== DEFAULT_SYSTEM_LANGUAGE){
            $categoriaLinguagem = $categoriaControllerController->retornaCategoriaLinguagem(DEFAULT_SYSTEM_LANGUAGE);
            $idCategoriaLinguagem = $categoriaLinguagem->id;
            
            $traducao = $this->tradutor->fetchList("id_categoria = {$idCategoriaLinguagem} AND constante_textual = '{$constanteTextual}'", null, 1, 0);
            
            if (isset($traducao[0]))
                return $traducao[0]->traducao . MSG_ERRO_UTILIZANDO_LINGUA_PADRAO_TRADUCAO_NAO_ENCONTRADA;
            throw new Exception(MSG_ERRO_TRADUCAO_NAO_ENCONTRADA . " | Expressão: '{$constanteTextual}' para a língua: '" . DEFAULT_SYSTEM_LANGUAGE . "'");
        } 
        throw new Exception(MSG_ERRO_TRADUCAO_NAO_ENCONTRADA . " | Expressão: '{$constanteTextual}' para a língua: '{$linguaDestino}'.");
	}
}
