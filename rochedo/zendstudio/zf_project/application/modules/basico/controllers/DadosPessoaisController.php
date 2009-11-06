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
	public function salvarDadosPessoais($novoDadosPessoais)
	{
	    $dadosPessoais = $novoDadosPessoais;
		$dadosPessoais->save();
	}
}