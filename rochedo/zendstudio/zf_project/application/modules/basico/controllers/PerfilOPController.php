<?php
/**
 * Controlador dos perfis do sistema.
 */
class Basico_OPController_PerfilOPController
{
	/**
	 * Instância do Controlador Perfil.
	 * @var Basico_OPController_PerfilOPController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo Perfil.
	 * @var Basico_Model_Perfil
	 */
	private $_perfil;

	/**
	 * Construtor do Controlador Basico_OPController_PerfilOPController
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
	 * Inicializa o controlador Basico_OPController_PerfilOPController
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
	 * @return Basico_OPController_PerfilOPController $singleton
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_PerfilOPController();
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

    /**
	 * Retorna o perfil de usuário publico.
	 * 
	 * @return Basico_Model_Perfil
	 */
	public function retornaObjetoPerfilUsuarioPublico()
	{
		// recuperando o objeto perfil
	    $perfilUsuarioPublico = $this->retornaObjetoPerfilPorNome(PERFIL_USUARIO_PUBLICO);

	    // verificando se o objeto existe
	    if (isset($perfilUsuarioPublico))
	    	// retornando o objeto
    	    return $perfilUsuarioPublico;

    	throw new Exception(MSG_ERROR_PERFIL_USUARIO_VALIDADO_NAO_ENCONTRADO);
	}

	/**
	 * Retorna o id do perfil de usuario publico
	 * 
	 * @return Integer|null
	 */
	public function retornaIdPerfilUsuarioPublico()
	{
		// recuperanado o objeto perfil usuario publico
		$objPerfilUsuarioPublico = $this->retornaObjetoPerfilUsuarioPublico();

		// verificando se o objeto foi carregado
		if (isset($objPerfilUsuarioPublico))
			// retornando o id do objeto
			return $objPerfilUsuarioPublico->id;

		return null;
	}

	/**
	 * Retorna o nome do perfil de usuario publico
	 * 
	 * @return String|null
	 */
	public function retornaNomePerfilUsuarioPublico()
	{
		// recuperanado o objeto perfil usuario publico
		$objPerfilUsuarioPublico = $this->retornaObjetoPerfilUsuarioPublico();

		// verificando se o objeto foi carregado
		if (isset($objPerfilUsuarioPublico))
			// retornando o id do objeto
			return $objPerfilUsuarioPublico->nome;

		return null;
	}

	/**
	 * Retorna os objetos perfis associados a uma categoria (passada por id)
	 * 
	 * @param Integer $idCategoria
	 * 
	 * @return Array|null
	 */
	private function retornaObjetosPerfisPorIdCategoria($idCategoria)
	{
		// retornando objetos
		return $this->_perfil->fetchList("id_categoria = '{$idCategoria}'");
	}

	/**
	 * Retorna os objetos perfis de usuario
	 * 
	 * @return Array|null
	 */
	public function retornaObjetosPerfisUsuario()
	{
		// recuperando o id categoria PERFIL_USUARIO
		$idCategoriaPerfilUsuario = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaPerfilUsuario();

		// retornando os objetos perfis usuario
		return $this->retornaObjetosPerfisPorIdCategoria($idCategoriaPerfilUsuario);
	}
}