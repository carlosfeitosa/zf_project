<?php
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
	    $email = $novoEmail;
		$email->save();
	}
}