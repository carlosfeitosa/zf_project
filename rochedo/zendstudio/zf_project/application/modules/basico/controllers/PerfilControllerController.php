<?php
/**
 * Controlador dos perfis do sistema.
 */
class Basico_PerfilControllerController
{
	/**
	 * Instância do Controlador Perfil.
	 * @var Basico_PerfilControllerController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo Perfil.
	 * @var Basico_Model_Perfil
	 */
	private $_perfil;

	/**
	 * Construtor do Controlador Basico_PerfilControllerController
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_perfil = $this->retornaNovoObjetoPerfil();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_PerfilControllerController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Retorna a instância do controlador perfil
	 * 
	 * @return Basico_PerfilControllerController $singleton
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_PerfilControllerController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto perfil vazio
	 * 
	 * @return Basico_Model_Perfil
	 */
	public function retornaNovoObjetoPerfil()
	{
		// retornando um modelo vazio
		return new Basico_Model_Perfil();
	}

	/**
	 * Retorna um perfil utilizando o nome do perfil como parametro de busca.
	 * 
	 * @param String $nomePerfil
	 * 
	 * @return Basico_Model_Perfil|null
	 */
	public function retornaObjetoPerfilPorNome($nomePerfil)
	{
		// recuperando array de perfis
		$objPerfil = $this->_perfil->fetchList("nome = '{$nomePerfil}'", null, 1, 0);
		
		// verificando se existe o objeto
		if (isset($objPerfil[0]))
			// retornando o objeto
    	    return $objPerfil[0];
    	    
    	return null;
	}
	
	/**
	 * Retorna o objeto perfil pelo id passado.
	 * 
	 * @param Int $idPerfil
	 * 
	 * @return Basico_Model_Perfil|null
	 */
	public function retornaObjetoPerfilPorIdPerfil($idPerfil)
	{
		// verificando se o id do perfil foi passado
		if ($idPerfil > 0) {
			// recuperando o objeto
			return $this->_perfil->find($idPerfil);			
		}
	}
	
	/**
	 * Retorna o perfil de usuário não validado.
	 * 
	 * @return Basico_Model_Perfil
	 */
	public function retornaObjetoPerfilUsuarioNaoValidado()
	{
		// recuperando o objeto perfil
	    $perfilUsuarioNaoValidado = $this->retornaObjetoPerfilPorNome(PERFIL_USUARIO_NAO_VALIDADO);

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
	    $perfilUsuarioValidado = $this->retornaObjetoPerfilPorNome(PERFIL_USUARIO_VALIDADO);

	    // verificando se o objeto existe
	    if (isset($perfilUsuarioValidado))
	    	// retornando o objeto
    	    return $perfilUsuarioValidado;

    	throw new Exception(MSG_ERROR_PERFIL_USUARIO_VALIDADO_NAO_ENCONTRADO);
	}
}