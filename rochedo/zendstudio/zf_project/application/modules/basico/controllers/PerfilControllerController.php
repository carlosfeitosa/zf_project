<?php
/**
 * Controlador dos perfis do sistema.
 */
class Basico_PerfilControllerController
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
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->perfil = new Basico_Model_Perfil();
	}
	
	/**
	 * Retorna a instância do controlador perfil
	 * 
	 * @return Basico_PerfilControler $singleton
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PerfilControllerController();
		}
		
		return self::$singleton;
	}
	
	/**
	 * Retorna um perfil utilizando o nome do perfil como parametro de busca.
	 * 
	 * @param String $nomePerfil
	 * 
	 * @return Basico_Model_Perfil|null
	 */
	public function retornaObjetoPerfil($nomePerfil)
	{
		// recuperando array de perfis
		$auxPerfil = self::$singleton->perfil->fetchList("nome = '{$nomePerfil}'", null, 1, 0);
		
		// verificando se existe o objeto
		if (isset($auxPerfil[0]))
			// retornando o objeto
    	    return $auxPerfil[0];
    	    
    	return null;
	}
	
	/**
	 * Retorna o objeto perfil pelo id passado.
	 * @param Int $idPerfil
	 * @return Basico_Model_Perfil|null
	 */
	public function retornaObjetoPerfilId($idPerfil)
	{
		$modeloPerfil = new Basico_Model_Perfil();

		if ((Int) $idPerfil > 0)
		    return $modeloPerfil->find($idPerfil);
		    
		return NULL;
	}
	
	/**
	 * Retorna o perfil de usuário não validado.
	 * 
	 * @return Basico_Model_Perfil
	 */
	public function retornaObjetoPerfilUsuarioNaoValidado()
	{
		// recuperando o objeto perfil
	    $perfilUsuarioNaoValidado = $this->retornaObjetoPerfil(PERFIL_USUARIO_NAO_VALIDADO);
	    
	    // verificando se o objeto existe
	    if (isset($perfilUsuarioNaoValidado))
	    	// retornando o objeto
    	    return $perfilUsuarioNaoValidado;
    	    
    	throw new Exception(MSG_ERROR_PERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO);
	}
	
    /**
	 * Retorna o perfil de usuário validado.
	 * 
	 * @return Basico_Model_Perfil
	 */
	public function retornaObjetoPerfilUsuarioValidado()
	{
		// recuperando o objeto perfil
	    $perfilUsuarioValidado = $this->retornaObjetoPerfil(PERFIL_USUARIO_VALIDADO);
	    
	    // verificando se o objeto existe
	    if (isset($perfilUsuarioValidado))
	    	// retornando o objeto
    	    return $perfilUsuarioValidado;
    	    
    	throw new Exception(MSG_ERROR_PERFIL_USUARIO_VALIDADO_NAO_ENCONTRADO);
	}
}