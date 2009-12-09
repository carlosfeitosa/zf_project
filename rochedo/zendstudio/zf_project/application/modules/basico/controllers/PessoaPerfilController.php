<?php
class Basico_PessoaPerfilController 
{
	static private $singleton;
	private $pessoaPerfil;
	
	private function __construct()
	{
		$this->pessoaPerfil = new Basico_Model_PessoaPerfil();
	}
	
	public static function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PessoaPerfilController();
		}
		return self::$singleton;
	}
	
	
	public function salvarPessoaPerfil($novaPessoaPerfil, $idPessoaPerfilCriador = null)
	{
	    try {
	    	// VERIFICA SE A OPERACAO ESTA SENDO REALIZADA POR UM USUARIO OU PELO SISTEMA
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();

    		$this->pessoaPerfil = $novaPessoaPerfil;
			$this->pessoaPerfil->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaController::init();
			$controladorLog       = Basico_LogController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovaPessoaPerfil();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = $idPessoaPerfilCriador;
            $novoLog->categoria      = $categoriaLog->id;
            $novoLog->dataHoraEvento = Zend_Date::now();
            $novoLog->descricao      = LOG_MSG_NOVA_PESSOA_PERFIL;
            $controladorLog->salvarLog($novoLog);
			
    	} catch (Exception $e) {
    		throw new Exception($e);
    	}
	}
	
	public function retornaIdPessoaPerfilPessoa($idPessoa) {
		
		$idPessoaPerfil = self::$singleton->pessoaPerfil->fetchList("id_pessoa = '{$idPessoa}'", null, 1, 0);
		if (isset($idPessoaPerfil[0]))
    	    return $idPessoaPerfil[0];
    	else
    	    return NULL;
	}
}