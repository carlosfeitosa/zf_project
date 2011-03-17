<?php
/**
 * Controlador PessoaPerfil
 *
 */

class Basico_OPController_PessoaPerfilOPController
{
	/**
	 * Instância do Controlador PessoaPerfil
	 * @var Basico_OPController_PessoaPerfilOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo PessoaPerfil
	 * @var Basico_Model_PessoaPerfil
	 */
	private $_pessoaPerfil;
	
	/**
	 * Construtor do controlador PessoaPerfil
	 * @return Basico_Model_PessoaPerfil
	 */
	private function __construct()
	{
		// instanciando modelo
		$this->_pessoaPerfil = $this->retornaNovoObjetoPessoaPerfil();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_PessoaPerfilOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador PessoaPerfil
	 * 
	 * @return Basico_OPController_PessoaPerfilOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_PessoaPerfilOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto pessoa perfil vazio
	 * 
	 * @return Basico_Model_PessoaPerfil
	 */
	public function retornaNovoObjetoPessoaPerfil()
	{
		// retornando um modelo vazio
		return new Basico_Model_PessoaPerfil();
	}

	/**
	 * Salva pessoaPefil no banco de dados.
	 * 
	 * @param Basico_Model_PessoaPerfil $novaPessoaPerfil
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarPessoaPerfil(Basico_Model_PessoaPerfil $objPessoaPerfil, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
	    try {
	    	// instanciando controladores
	    	$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();

	    	// verifica se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $this->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objPessoaPerfil->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogUpdatePessoaPerfil();
	    		$mensagemLog    = LOG_MSG_UPDATE_PESSOA_PERFIL;
	    	} else {
	    		// carregando informacoes de log de novo de registro
	    		$idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogNovaPessoaPerfil();
	    		$mensagemLog    = LOG_MSG_NOVA_PESSOA_PERFIL;
	    	}

			// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objPessoaPerfil, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
    		$this->_pessoaPerfil = $objPessoaPerfil;

    	} catch (Exception $e) {
    		throw new Exception($e);
    	}
	}

    /**
     * Retorna o objeto da PessoaPefil do sistema.
     * 
     * @return Basico_Model_PessoaPerfil
     */
	public function retornaObjetoPessoaPerfilSistema()
	{
		// instanciando modelos
		$perfilOPController = Basico_OPController_PerfilOPController::getInstance();
		$pessoaOPController = Basico_OPController_PessoaOPController::getInstance();
		
	    // recuperando o perfil do sistema
	    $applicationSystemPerfil = APPLICATION_SYSTEM_PERFIL;
	   
		// recuperando informacoes do sistema
        $objPerfilSistema = $perfilOPController->retornaObjetoPerfilPorNome($applicationSystemPerfil);
        $idPessoaSistema  = $pessoaOPController->retornaIdPessoaSistema();
        
        // verificando se o objeto perfil do sistema foi recuperao/existe
        if (count($objPerfilSistema) === 0)
	        throw new Exception(MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO);

	    // recuperando o objeto pessoa perfil do sistema
        $objPessoaPerfilSistema = $this->_pessoaPerfil->fetchList("id_perfil = {$objPerfilSistema->id} and id_pessoa = {$idPessoaSistema}", null, 1, 0);
        
        // verificando se o objeto pessoa perfil do sistema foi recuperado/existe
        if (!$objPessoaPerfilSistema[0]->id)
            throw new Exception(MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO);

        // retornando o id do objeto pessoa perfil do sistema
        return $objPessoaPerfilSistema[0];
	}

    /**
     * Retorna o id da PessoaPefil do sistema.
     * 
     * @return Int
     */
	public function retornaIdPessoaPerfilSistema()
	{
		// recuperando objeto pessoa perfil sistema
		$objPessoaPerfilSistema = $this->retornaObjetoPessoaPerfilSistema();

		// verificando se o objeto foi carregado
		if (isset($objPessoaPerfilSistema))
			// retornando o id de pessoa perfil
			return $objPessoaPerfilSistema->id;

		return null;
	}
	
	/**
	 * Retorna as pessoasPerfis da pessoa passada.
	 * 
	 * @param int $idPessoa
	 * 
	 * @return Array
	 */
	public function retornaObjetosPessoasPerfisPorIdPessoa($idPessoa)
	{
		// recuperando array de objetos Basico_Model_PessoaPefil
		$objsPessoasPerfis = $this->_pessoaPerfil->fetchList("id_pessoa = '{$idPessoa}'", null, 1, 0);
		
		// verificando se o objeto existe
		if (count($objsPessoasPerfis) > 0)
			// retornando o objeto
    	    return $objsPessoasPerfis;
    	else
    	    return null;
	}
	
	/**
	 * Retorna o objeto pessoaPerfil do perfil USUARIO_NAO_VALIDADO da pessoa passada por parametro
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return Basico_Model_PessoaPerfil
	 */
	public function retornaObjetosPessoaPerfilUsuarioNaoValidadoPorIdPessoa($idPessoa)
	{
		// verificando se foi passado o id da pessoa
		if (!$idPessoa)
			return null;

		// instanciando controladores
		$perfilOPController = Basico_OPController_PerfilOPController::getInstance();

		// recuperando o perfil de usuario nao validado
		$perfilUsuarioNaoValidado = $perfilOPController->retornaObjetoPerfilUsuarioNaoValidado();

		// recuperando o objeto pessoa perfil de usuario nao validado
    	$objPessoaPerfilPessoa = $this->_pessoaPerfil->fetchList("id_pessoa = {$idPessoa} and id_perfil = {$perfilUsuarioNaoValidado->id}");

    	// verificando se o objeto foi recuperado
    	if (isset($objPessoaPerfilPessoa[0])) {
    		return $objPessoaPerfilPessoa[0];
    	}

    	throw new Exception(MSG_ERROR_PESSOAPERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO);
	}

	/**
	 * Retorna o objeto pessoaPerfil do perfil USUARIO_VALIDADO da pessoa passada por parametro
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return Basico_Model_PessoaPerfil
	 */
	public function retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoa)
	{
		// verificando se foi passado o id da pessoa
		if (!$idPessoa)
			return null;

		// instanciando controladores
		$perfilOPController = Basico_OPController_PerfilOPController::getInstance();

		// recuperando o objeto perfil de usuario validado
		$objPerfilUsuarioValidado = $perfilOPController->retornaObjetoPerfilUsuarioValidado();

		// recuperando o objeto pessoa pefil
    	$objPessoaPerfil = $this->_pessoaPerfil->fetchList("id_pessoa = {$idPessoa} and id_perfil = {$objPerfilUsuarioValidado->id}");

    	// verificando se o objeto foi recuperado
    	if (isset($objPessoaPerfil[0])) {
    		// retornando o objeto
    		return $objPessoaPerfil[0];
    	}
    	
    	return NULL;
	}
	
    /**
	 * Retorna o objeto pessoaPerfil da pessoa e do perfil passado.
	 * 
	 * @param Int $idPessoa
	 * @param Int $idPerfil
	 * 
	 * @return Basico_Model_PessoaPerfil
	 */
	public function retornaObjetoPessoaPerfilPorIdPessoaIdPerfil($idPessoa, $idPerfil)
	{		
		// verificando se foi passado o id da pessoa e do perfil
		if ((!$idPessoa) or (!$idPerfil))
			return null;

		// instanciando controladores
		$perfilOPController = Basico_OPController_PerfilOPController::getInstance();

		// recuperanado o objeto perfil
		$objPerfil = $perfilOPController->retornaObjetoPerfilPorIdPerfil($idPerfil);

		// recuperando o objeto pessoa perfil
    	$objPessoaPerfilPessoa = $this->_pessoaPerfil->fetchList("id_pessoa = {$idPessoa} and id_perfil = {$objPerfil->id}");

    	// verificando se o objeto foi recuperado
    	if (isset($objPessoaPerfilPessoa[0])) {
    		return $objPessoaPerfilPessoa[0];
    	}

    	throw new Exception(MSG_ERROR_PESSOAPERFIL_NAO_ENCONTRADO);
	}
	
	/**
	 * Edita a pessoaPerfil da pessoa passada por parametro
	 * 
	 * @param Int $idPessoa
	 * @param Int $idPerfilAntigo
	 * @param Int $idPerfilNovo
	 * @param Int $idPessoaPerfilCriador
	 * 
	 * @return Boolean
	 */
	public function editarPessoaPerfil($idPessoa, $idPerfilAntigo, $idPerfilNovo, $idPessoaPerfilCriador = null)
	{
		// verificando se foi passado o id da pessoa, do perfil antigo e do novo perfil
		if (((Int) $idPessoa > 0) and ((Int) $idPerfilAntigo > 0) and ((Int) $idPerfilNovo > 0)) {
			// recuperando o objeto pessoa perfil
		    $objPessoaPerfil = $this->retornaObjetoPessoaPerfilPorIdPessoaIdPerfil($idPessoa, $idPerfilAntigo);

			// recuperando a versao de pessoa perfil
			$versaoUpdate = Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($objPessoaPerfil);

		    // atualizando o perfil
			$objPessoaPerfil->perfil = $idPerfilNovo;

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
			if (!isset($idPessoaPerfilCriador))
				// carregando o id do perfil criador do sistema
				$idPessoaPerfilCriador = $this->retornaIdPessoaPerfilSistema();
			else if ($idPessoaPerfilCriador <= 0)
				throw new Exception(MSG_ERROR_PESSOAPERFIL_NAO_ENCONTRADO);

			// salvando o objeto
			$this->salvarPessoaPerfil($objPessoaPerfil, $versaoUpdate, $idPessoaPerfilCriador);

			return true;
		}
		return false;
	}
	
	/**
	 * Retorna se existe o perfil de UsuarioValidado para a pessoa dona do email passado
	 * @param Basico_Model_Email $email
	 * @return Boolean
	 */
	public function possuiPerfilUsuarioValidadoPorEmail(Basico_Model_Email $email)
	{
    	// recuperando o id do proprietario do email
		$idProprietarioEmail = Basico_OPController_EmailOPController::getInstance()->retornaIdProprietarioEmailPorIdEmail($email->id);
	
		// recuperando o perfil de usuario validado
		$perfilUsuarioValidado = $this->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idProprietarioEmail);


		// retornando se o perfil de usuario validado existe para esta pessoa
		if (isset($perfilUsuarioValidado)) {

			return true;

        }else{
		    return false;

		}
	}
}