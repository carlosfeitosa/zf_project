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
     * @return void
     */
	private function __construct()
	{
		$this->categoriaChaveEstrangeira = new Basico_Model_CategoriaChaveEstrangeira();
	}
	
	/**
	 * Inicializa o controlador Basico_CategoriaChaveEstrangeira
	 * @return Basico_CategoriaChaveEstrangeiraController
	 */
	public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_CategoriaChaveEstrangeiraControllerController();
		}
		return self::$singleton;
	}
	
}
