<?php
/**
 * Controlador DB Delete
 * 
 */

class Basico_DBDeleteControllerController
{
	/**
	 * Deleta uma tupla de um objeto, mantendo as versoes existentes no CVC
	 * 
	 * @param Object $objeto
	 * @param Boolean $forceCascade
	 * 
	 * @return Boolean
	 */
	static public function delete($objeto, $forceCascade = false)
	{
		// verificando se deve deletar em cascata
		if ($forceCascade)
			return self::deleteCascata();
		else {
			
		}
	}

	/**
	 * Deleta uma tupla de um objeto e deleta as tuplas relacionadas a este objeto, em cascata, 
	 * mantendo as versoes existentes no CVC
	 * 
	 * @param Object $objeto
	 * 
	 * @return Boolean
	 */
	private function deleteCascata($objeto)
	{
		
	}
}