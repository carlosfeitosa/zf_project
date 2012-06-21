<?php
/**
 * Controlador Gerador Token
 */
class Basico_OPController_GeradorTokenOPController
{
	/**
	 * Gera e retorna um uniqueId.
	 * 
	 * @param Array $blacklist
	 * 
	 * @return String
	 */
	public static function gerarToken(array $blacklist = array())
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