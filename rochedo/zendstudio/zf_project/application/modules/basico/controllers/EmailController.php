<?php
require_once("CategoriaController.php");

class Basico_EmailController 
{
	static private $singleton;
	private $email;
	
	private function __construct()
	{
		$this->email = new Basico_Model_Email();
	}
	
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_EmailController();
		}
		return self::$singleton;
	}
	
	private function gerarUniqueIdEmail()
	{
		$uniqueId = new Basico_Model_Gerador();
		$unique = $uniqueId->getGeradorUniqueIdObject()->gerar($this->email, 'unique_id');
		return $unique;
	}
	
	public function retornaUniqueIdEmail()
	{
		return $this->gerarUniqueIdEmail();
	}
	
	private function retornaEmail($email)
	{
		$auxEmail = self::$singleton->email->fetchList("email = '{$email}'", null, 1, 0);
		if (isset($auxEmail[0]))
    	    return $auxEmail[0];
    	else
    	    return NULL;
	}
	
	public function verificaEmailExistente($email)
	{
		$auxEmail = $this->retornaEmail($email);
		if(isset($auxEmail))
			return $auxEmail->validado;
		else
		    return NULL;
	}
	
	public function salvarEmail($novoEmail, $idPessoaPerfilCriador = null)
	{
    	try{
    		// VERIFICA SE A OPERACAO ESTA SENDO REALIZADA POR UM USUARIO OU PELO SISTEMA
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();
	    		
    		$this->email = $novoEmail;
			$this->email->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaController::init();
			$controladorLog       = Basico_LogController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovoEmail();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = $idPessoaPerfilCriador;
            $novoLog->categoria      = $categoriaLog->id;
            $novoLog->dataHoraEvento = Zend_Date::now();
            $novoLog->descricao      = LOG_MSG_NOVO_EMAIL;
            $controladorLog->salvarLog($novoLog);
			
    	} catch (Exception $e) {
    		throw new Exception($e);
    	}
	}
	
	
	//FUNCAO QUE RETORNA O EMAIL DO SISTEMA
	public function retornaEmailSistema()
    {
    	//INICIALIZANDO CONTROLADOR CATEGORIA
		$controladorCategoria = Basico_CategoriaController::init();
		
		//BUSCANDO EMAIL DO SISTEMA
		$categoriaEmailSistema = $controladorCategoria->retornaCategoriaEmailSistema();
		$emailSistema = self::$singleton->email->fetchList("id_categoria = {$categoriaEmailSistema->id}", null, 1, 0);
		
		//RETORNADO EMAIL DO SISTEMA
		if (isset($emailSistema[0]))
    	    return $emailSistema[0];
    	else
    	    return NULL;
	}
}