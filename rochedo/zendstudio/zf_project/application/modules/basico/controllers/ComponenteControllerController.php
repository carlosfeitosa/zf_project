<?php
/**
 * Controlador Componente
 * 
 * 
 * @uses Basico_Model_Componente
 */

class Basico_ComponenteControllerController
{
	/**
	 * Retorna array contendo os prefixos e paths dos componentes nao ZF que devem ser adicionados em forms (addPrefixpath)
	 * 
	 * @param Array $arrayNomesCategoriasComponentesNaoZF
	 * 
	 * @return Array|null
	 */
	public static function retornaArrayPrefixPathComponentesNaoZF(array $arrayNomesCategoriasComponentesNaoZF)
	{
		// inicializando variveis
		$arrayRetorno = array();

		// verificando se o array possui elementos
		if (count($arrayNomesCategoriasComponentesNaoZF) <= 0)
			return null;

		// loop para preencher array de resultados
		foreach ($arrayNomesCategoriasComponentesNaoZF as $nomeCategoriaComponenteNaoZF) {
			
			// manipulando string para recuperar o nome da biblioteca
			$nomeCategoriaComponenteNaoZF = ucfirst(strtolower(str_replace('COMPONENTE_', '', $nomeCategoriaComponenteNaoZF)));
			
			// preenchendo array de resultados
			$arrayRetorno[] = array(COMPONENTE_NAO_ZF_PREFIX => "{$nomeCategoriaComponenteNaoZF}_Form", COMPONENTE_NAO_ZF_PATH => "{$nomeCategoriaComponenteNaoZF}/Form");
		}

		// retornando array de resultados
		return $arrayRetorno;
	}
}