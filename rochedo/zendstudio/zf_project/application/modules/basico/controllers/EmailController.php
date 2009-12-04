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
	
	public function salvarEmail($novoEmail)
	{
		try {
	    	$auxDb = Zend_Registry::get('db');
	    	$auxDb->beginTransaction();
	    	try{
	    		$this->email = $novoEmail;
				$this->email->save();
				$auxDb->commit();
	    	} catch (Exception $e) {
	    		$auxDb->rollback();
	    	}
	    } catch (Exception $e) {
	    	$this->email = $novoEmail;
			$this->email->save();
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