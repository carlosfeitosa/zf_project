<?php
/**
 * Controlador Gerador Token
 */
class Basico_GeradorTokenControllerController
{
	/**
	 * Gera e retorna um uniqueId.
	 * 
	 * @param Array $blacklist
	 * 
	 * @return String
	 */
	public static function gerarToken($blacklist)
	{
		// gera o token inicial
	    $token = md5(uniqid(rand(), true));

	    // verifica se o token esta dentro do array de tokens em blacklist
	    while (array_search($token, $blacklist) !== false)
	    	// gerando token
            $token = md5(uniqid(rand(), true));
	    
        // retorna o token
	    return $token;
	}
}