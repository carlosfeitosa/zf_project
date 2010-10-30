<?php
/**
 * Controlador de Modulo
 */

class Basico_ModuloControllerController
{
	/**
	 * Retorna o objeto modulo do modulo nomeado pelo parametro passado
	 * 
	 * @param String $nomeModulo
	 * 
	 * @return null|Basico_Model_Modulo
	 */
	public static function retornaObjetoModuloNome($nomeModulo)
	{
		// instanciando o modelo de modulo
		$modeloModulo = new Basico_Model_Modulo();

		// transformando a string contendo o nome do modulo em UPPERCASE
		$nomeModulo = strtoupper($nomeModulo);

		// recuperando objeto
		$objModulo = $modeloModulo->fetchList("nome = '{$nomeModulo}'", null, 1, 0);

		// verificando resultado da recuperacao
		if (isset($objModulo[0]))
			return $objModulo[0];

		return null;
	}
}