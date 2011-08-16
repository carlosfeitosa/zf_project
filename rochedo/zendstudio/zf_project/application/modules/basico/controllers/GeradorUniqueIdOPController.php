<?php
/**
 * Controlador Gerador
 */

class Basico_OPController_GeradorUniqueIdOPController
{
	/**
	 * Gera e retorna um uniqueId.
	 * 
	 * @param Basico_Model $modelo
	 * @param String $nomeDoCampoBancoDeDados
	 * 
	 * @return String
	 */
	public static function gerar($modelo, $nomeDoCampoBancoDeDados)
	{
		// carrega um id randomico
	    $uniqueId = md5(uniqid(rand(), true));
	    
	    // buscando pelo id no banco de dados
	    $buscaUniqueId = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelo, "{$nomeDoCampoBancoDeDados} = '{$uniqueId}'", null, 1, 0);

	    // certificando-se que o id nao existe no banco de dados
	    while (isset($buscaUniqueId[0]->id))
	    {
            $uniqueId = md5(uniqid(rand(), true));
	        $buscaUniqueId = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelo, "{$nomeDoCampoBancoDeDados} = '{$uniqueId}'", null, 1, 0);
	    }
	    
	    // retorna o id unico
	    return $uniqueId;
	}
}