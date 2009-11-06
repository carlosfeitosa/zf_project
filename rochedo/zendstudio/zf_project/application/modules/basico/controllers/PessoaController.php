<?php
class Basico_PessoaController
{
	static private $singleton;
	private $pessoa;
	
	private function __construct()
	{
		$this->pessoa = new Basico_Model_Pessoa();
	}
	
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PessoaController();
		}
		return self::$singleton;
	}
	
	public function salvarPessoa($novaPessoa)
	{
	    $this->pessoa = $novaPessoa;
		$this->pessoa->save();
	}
}