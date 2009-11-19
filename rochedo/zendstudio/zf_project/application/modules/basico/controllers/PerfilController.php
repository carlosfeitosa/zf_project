<?php

class Basico_PerfilController 
{
	static private $singleton;
	private $perfil;
	
	private function __construct()
	{
		$this->perfil = new Basico_Model_Perfil();
	}
	
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PerfilController();
		}
		return self::$singleton;
	}
	
	public function retornaPerfil($nomePerfil)
	{
		$auxPerfil = self::$singleton->perfil->fetchList("nome = '{$nomePerfil}'", null, 1, 0);
		if (isset($auxPerfil[0]))
    	    return $auxPerfil[0];
    	return NULL;
	}
	
	public function retornaPerfilUsuarioNaoValidado()
	{
	    $perfilUsuarioNaoValidado = $this->retornaPerfil(PERFIL_USUARIO_NAO_VALIDADO);
	    if (isset($perfilUsuarioNaoValidado))
    	    return $perfilUsuarioNaoValidado;
    	throw new Exception(MSG_ERROR_PERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO);
	}
}