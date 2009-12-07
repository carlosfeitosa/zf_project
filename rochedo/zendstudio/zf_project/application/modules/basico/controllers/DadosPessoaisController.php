<?php
class Basico_DadosPessoaisController
{
	static private $singleton;
	private $dadosPessoais;
	
	private function __construct()
	{
		$this->dadosPessoais = new Basico_Model_DadosPessoais();
	}
	
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_DadosPessoaisController();
		}
		return self::$singleton;
	}
	public function salvarDadosPessoais($novoDadosPessoais, $idPessoaPerfilCriador = null)
	{
		// VERIFICA SE A OPERACAO ESTA SENDO REALIZADA POR UM USUARIO OU PELO SISTEMA
    	if (!isset($idPessoaPerfilCriador))
    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();
	    		
	    $dadosPessoais = $novoDadosPessoais;
		$dadosPessoais->save();
		
		// INICIALIZACAO DOS CONTROLLERS
		$controladorCategoria = Basico_CategoriaController::init();
		$controladorLog       = Basico_LogController::init();
		
        // CATEGORIA DO LOG VALIDACAO USUARIO
        $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovoDadosPessoais();

        $novoLog = new Basico_Model_Log();
        $novoLog->pessoaperfil   = $idPessoaPerfilCriador;
        $novoLog->categoria      = $categoriaLog->id;
        $novoLog->dataHoraEvento = Zend_Date::now();
        $novoLog->descricao      = LOG_MSG_NOVO_DADOS_PESSOAIS;
        $controladorLog->salvarLog($novoLog);
	}
	
}