<?php
/**
 * Controlador dos perfis do sistema.
 */
class Basico_PerfilController 
{
	/**
	 * Instância do Controlador Perfil.
	 * @var Basico_PerfilController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo Perfil.
	 * @var Basico_Model_Perfil
	 */
	private $perfil;
	
	/**
	 * Construtor do Controlador Perfil
	 * @return void
	 */
	private function __construct()
	{
		$this->perfil = new Basico_Model_Perfil();
	}
	
	/**
	 * Retorna a instância do controlador perfil
	 * @return Basico_PerfilControler $singleton
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PerfilController();
		}
		return self::$singleton;
	}
	
	/**
	 * Retorna um perfil utilizando o nome do perfil como parametro de busca.
	 * @param String $nomePerfil
	 * @return Basico_Model_Perfil
	 */
	public function retornaPerfil($nomePerfil)
	{
		$auxPerfil = self::$singleton->perfil->fetchList("nome = '{$nomePerfil}'", null, 1, 0);
		if (isset($auxPerfil[0]))
    	    return $auxPerfil[0];
    	return NULL;
	}
	
	/**
	 * Retorna o perfil de usuário não validado.
	 * @return Basico_Model_Perfil
	 */
	public function retornaPerfilUsuarioNaoValidado()
	{
	    $perfilUsuarioNaoValidado = $this->retornaPerfil(PERFIL_USUARIO_NAO_VALIDADO);
	    if (isset($perfilUsuarioNaoValidado))
    	    return $perfilUsuarioNaoValidado;
    	throw new Exception(MSG_ERROR_PERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO);
	}
}