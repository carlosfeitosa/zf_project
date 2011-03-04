<?php
/**
 * Controlador Categoria
 * 
 * 
 * @uses Basico_Model_TipoCategoria
 */
class Basico_TipoCategoriaControllerController
{
	/**
	 * 
	 * @var Basico_TipoCategoriaControllerController
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_TipoCategoria
	 */
	private $_tipoCategoria;

	/**
	 * Carrega a variavel tipo categoria com um novo objeto Basico_Model_TipoCategoria
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_tipoCategoria = $this->retornaNovoObjetoTipoCategoria();
	}

	/**
	 * Inicializa o controlador Basico_TipoCategoriaControllerController 
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_TipoCategoriaControllerController
	 * 
	 * @return Basico_TipoCategoriaControllerController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_TipoCategoriaControllerController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto dados biometricos vazio
	 * 
	 * @return Basico_Model_TipoCategoria
	 */
	public function retornaNovoObjetoTipoCategoria()
	{
		// retornando um modelo vazio
		return new Basico_Model_TipoCategoria();
	}

	/**
	 * Retorna o id do tipo categoria LINGUAGEM
	 * 
	 * @return Integer|null
	 */
	public function retornaIdTipoCategoriaLinguagem()
	{
		// recuperando objeto tipo categoria
		$objsTipoCategoria = $this->_tipoCategoria->fetchList("nome = 'LINGUAGEM'", null, 1, 0);
		
		// verificando se o objeto foi recuperado
		if (isset($objsTipoCategoria[0]))
			// retornando o id do tipo categoria
			return $objsTipoCategoria[0]->id;

		return null;
	}

	/**
	 * Retorna o id do tipo categoria SISTEMA
	 * 
	 * @return Integer|null
	 */
	public function retornaIdTipoCategoriaSistema()
	{
		// reecuperando o objeto tipo categoria
		$objsTipoCategoria = $this->_tipoCategoria->fetchList("nome = 'SISTEMA'", null, 1, 0);

		// verificando se o objeto foi recuperado
		if (isset($objsTipoCategoria[0]))
			// retornando o id do tipo categoria
			return $objsTipoCategoria[0]->id;

		return null;
	}
}