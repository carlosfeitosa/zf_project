<?php
/**
 * Controlador PessoaPerfil
 *
 */
class Basico_PessoaPerfilControllerController
{
	/**
	 * Instância do Controlador PessoaPerfil
	 * @var Basico_PessoaPerfilController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo PessoaPerfil
	 * @var Basico_Model_PessoaPerfil
	 */
	private $pessoaPerfil;
	
	/**
	 * Construtor do controlador PessoaPerfil
	 * @return Basico_Model_PessoaPerfil
	 */
	private function __construct()
	{
		$this->pessoaPerfil = new Basico_Model_PessoaPerfil();
	}
	
	/**
	 * Retorna instância do Controlador PessoaPerfil
	 * @return Basico_PessoaPerfilController
	 */
	public static function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PessoaPerfilControllerController();
		}
		
		return self::$singleton;
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
	public function salvarPessoaPerfil(Basico_Model_PessoaPerfil $novaPessoaPerfil, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
	    try {
	    	// verifica se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();

			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novaPessoaPerfil, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovaPessoaPerfil(), LOG_MSG_NOVA_PESSOA_PERFIL);

			// atualizando o objeto
    		$this->pessoaPerfil = $novaPessoaPerfil;
			
    	} catch (Exception $e) {
    		throw new Exception($e);
    	}
	}
	
    /**
     * Retorna o id da PessoaPefil do sistema.
     * 
     * @return Int
     */
	public static function retornaIdPessoaPerfilSistema()
	{
		// instanciando modelos
	    $modelLogin = new Basico_Model_Login();
	    $modelPerfil = new Basico_Model_Perfil();
	    $modelPessoaPerfil = new Basico_Model_PessoaPerfil();

	    // recuperando login do sistema
	    $applicationSystemLogin = APPLICATION_SYSTEM_LOGIN;
	    // recuperando o perfil do sistema
	    $applicationSystemPerfil = APPLICATION_SYSTEM_PERFIL;
	    
	    // recuperando o objeto login do sistema
	    $objLoginSistema = $modelLogin->fetchList("login = '{$applicationSystemLogin}'", null, 1, 0);

	    // verificando se o objeto login do sistema foi recuperado/existe
	    if (count($objLoginSistema) === 0)
	        throw new Exception(MSG_ERRO_USUARIO_MASTER_NAO_ENCONTRADO);

		// recuperando objeto perfil do sistema
        $objPerfilSistema = $modelPerfil->fetchList("nome = '{$applicationSystemPerfil}'", null, 1, 0);
        
        // verificando se o objeto perfil do sistema foi recuperao/existe
        if (count($objPerfilSistema) === 0)
	        throw new Exception(MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO);

	    // recuperando o objeto pessoa perfil do sistema
        $objPessoaPerfilSistema = $modelPessoaPerfil->fetchList("id_pessoa = {$objLoginSistema[0]->pessoa} and id_perfil = {$objPerfilSistema[0]->id}", null, 1, 0);
        
        // verificando se o objeto pessoa perfil do sistema foi recuperado/existe
        if (!$objPessoaPerfilSistema[0]->id)
            throw new Exception(MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO);

        // retornando o id do objeto pessoa perfil do sistema
        return $objPessoaPerfilSistema[0]->id;
	}
	
	/**
	 * Retorna as pessoasPerfis da pessoa passada.
	 * 
	 * @param int $idPessoa
	 * 
	 * @return Basico_Model_PessoaPefil
	 */
	public function retornaPessoasPerfisPessoa($idPessoa)
	{
		// recuperando array de objetos Basico_Model_PessoaPefil
		$pessoasPerfis = self::$singleton->pessoaPerfil->fetchList("id_pessoa = '{$idPessoa}'", null, 1, 0);
		
		// verificando se o objeto existe
		if (isset($pessoasPerfis))
			// retornando o objeto
    	    return $pessoasPerfis;
    	else
    	    return null;
	}
	
	/**
	 * Retorna o obj pessoaPerfil do perfil USUARIO_NAO_VALIDADO da pessoa passada por parametro
	 * @param Int $idPessoa
	 * @return Basico_Model_PessoaPerfil
	 */
	public function retornaPessoaPerfilUsuarioNaoValidadoPessoa($idPessoa)
	{
		// instanciando modelos
		$modeloPessoaPerfil = new Basico_Model_PessoaPerfil();
		
		// instanciando controladores
		$controladorPerfil = Basico_PerfilControllerController::init();
		
		$perfilUsuarioNaoValidado = $controladorPerfil->retornaObjetoPerfilUsuarioNaoValidado();
		
    	$objPessoaPerfilPessoa = $modeloPessoaPerfil->fetchList("id_pessoa = {$idPessoa} and id_perfil = {$perfilUsuarioNaoValidado->id}");
    	
    	if (count($objPessoaPerfilPessoa) > 0) {
    		return $objPessoaPerfilPessoa[0];
    	}
    	
    	throw new Exception(MSG_ERROR_PESSOAPERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO);
	}
	
    /**
	 * Retorna o obj pessoaPerfil da pessoa e do perfil passado. 
	 * @param Int $idPessoa
	 * @param Int $idPerfil
	 * @return Basico_Model_PessoaPerfil
	 */
	public function retornaPessoaPerfilPessoaPerfil($idPessoa, $idPerfil)
	{
		// instanciando modelos
		$modeloPessoaPerfil = new Basico_Model_PessoaPerfil();
		
		// instanciando controladores
		$controladorPerfil = Basico_PerfilControllerController::init();
		
		$perfil = $controladorPerfil->retornaObjetoPerfilId($idPerfil);
		
    	$objPessoaPerfilPessoa = $modeloPessoaPerfil->fetchList("id_pessoa = {$idPessoa} and id_perfil = {$perfil->id}");
    	
    	if (count($objPessoaPerfilPessoa) > 0) {
    		return $objPessoaPerfilPessoa[0];
    	}
    	
    	throw new Exception(MSG_ERROR_PESSOAPERFIL_NAO_ENCONTRADO);
	}
	
	/**
	 * Edita a pessoaPerfil da pessoa passada por parametro 
	 * @param Int $idPessoa
	 * @param Int $idAntigoPerfil
	 * @param Int $idNovoPerfil
	 * @return Boolean
	 */
	public function editarPessoaPerfil($idPessoa, $idAntigoPerfil, $idNovoPerfil)
	{
		if (((Int) $idPessoa > 0) and ((Int) $idAntigoPerfil > 0)) {
		    $objPessoaPerfil = self::retornaPessoaPerfilPessoaPerfil($idPessoa, $idAntigoPerfil);
		    
			if ($objPessoaPerfil instanceOf Basico_Model_PessoaPerfil) {
				$objPessoaPerfil->perfil = $idNovoPerfil;
				
				Basico_PessoaPerfilControllerController::salvarPessoaPerfil($objPessoaPerfil, Basico_PersistenceControllerController::bdRetornaUltimaVersaoCVC($objPessoaPerfil), Basico_PessoaPerfilControllerController::retornaIdPessoaPerfilSistema());
				
				return true;
			}
		}
		return false;
		
	}

}