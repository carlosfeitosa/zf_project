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

	/**
	 * Apaga um objeto utilizando o save do mapper (DbTable)
	 * 
	 * @param Object $objeto
	 * 
	 * @return true
	 */
	private function deleteObjectDbTable($objeto)
	{
		// verificando se foi passado um objeto, por parametro
		if (!is_object($objeto))
			throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO);

		// verificando se objeto possui o metodo getMapper()->delete()
		if ((method_exists($objeto, 'getMapper')) and (method_exists($objeto->getMapper(), 'delete'))) {
			
			// apagando o objeto
			$objeto->getMapper()->delete($objeto);

			return true;
		} else

			throw new Exception(MSG_ERRO_DELETE_METODO_NAO_ENCONTRADO);
	}
}