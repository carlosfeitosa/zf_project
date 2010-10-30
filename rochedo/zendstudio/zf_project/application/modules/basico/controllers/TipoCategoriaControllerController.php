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
	 * Retorna o id do tipo categoria LINGUAGEM
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdTipoCategoriaLinguagem()
	{
		// instanciando o modelo de tipo categoria
		$modeloTipoCategoria = new Basico_Model_TipoCategoria();
		
		// recuperando objeto tipo categoria
		$objsTipoCategoria = $modeloTipoCategoria->fetchList("nome = 'LINGUAGEM'", null, 1, 0);
		
		// verificando se o objeto foi recuperado
		if (isset($objsTipoCategoria[0]))
			return $objsTipoCategoria[0]->id;

		return null;
	}
}