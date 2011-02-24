<?php
/**
 * Controlador de Modulo
 */

class Basico_ModuloControllerController
{
	/**
	 * @var Basico_ModuloControllerController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_Modulo
	 */
	private $_modulo;

	/**
	 * Construtor do controlador Basico_ModuloControllerController
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_modulo = $this->retornaNovoObjetoModulo();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_ModuloControllerController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_ModuloControllerController
	 * 
	 * @return Basico_ModuloControllerController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL) {
			// instanciando pela primeira vez
			self::$_singleton = new Basico_ModuloControllerController;
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto modulo vazio
	 * 
	 * @return Basico_Model_Modulo
	 */
	public function retornaNovoObjetoModulo()
	{
		// retornando um modelo vazio
		return new Basico_Model_Modulo();
	}

	/**
	 * Retorna o objeto modulo do modulo nomeado pelo parametro passado
	 * 
	 * @param String $nomeModulo
	 * 
	 * @return null|Basico_Model_Modulo
	 */
	public function retornaObjetoModuloPorNome($nomeModulo)
	{
		// transformando a string contendo o nome do modulo em UPPERCASE
		$nomeModulo = strtoupper($nomeModulo);

		// recuperando objeto
		$objModulo = $this->_modulo->fetchList("nome = '{$nomeModulo}'", null, 1, 0);

		// verificando resultado da recuperacao
		if (isset($objModulo[0]))
			return $objModulo[0];

		return null;
	}
}