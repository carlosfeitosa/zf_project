<?php
/**
 * Controlador dos perfis do sistema.
 * 
 * @author João Henrique M.Bione (joao.henrique.bione@rochedoproject.com)
 * 
 * @uses Basico_Model_Perfil
 * 
 * @since 22/03/2011
 */
class Basico_OPController_PerfilOPController extends Basico_Abstract_RochedoPersistentOPController
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
	private $_model;

	/**
	 * Construtor do Controlador Basico_OPController_PerfilOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_PerfilOPController
	 * 
	 * @return void
	 */
	protected function init()
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
	 * Salva o objeto perfil no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Perfil $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Perfil', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogUpdatePerfil();
	    		$mensagemLog    = LOG_MSG_UPDATE_PERFIL;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogNovoPerfil();
	    		$mensagemLog    = LOG_MSG_NOVO_PERFIL;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}
	
    /**
	 * Apaga o objeto perfil do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Perfil $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Perfil', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogDeletePerfil();
	    	$mensagemLog    = LOG_MSG_DELETE_PERFIL;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
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
		$objPerfil = $this->_model->fetchList("nome = '{$nomePerfil}'", null, 1, 0);
		
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
			return $this->_model->find($idPerfil);			
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
		return $this->_model->fetchList("id_categoria = '{$idCategoria}'");
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