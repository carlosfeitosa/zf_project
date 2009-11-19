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
	
	
	public function salvarPessoaPerfil($novaPessoaPerfil)
	{
	    try {
	    	$auxDb = Zend_Registry::get('db');
	    	$auxDb->beginTransaction();
	    	
	    	try{
	    		$this->pessoaPerfil = $novaPessoaPerfil;
				$this->pessoaPerfil->save();
				$auxDb->commit();
				
	    	} catch (Exception $e) {
	    		$auxDb->rollback();
	    	}
	    } catch (Exception $e) {
	    	$this->pessoaPerfil = $novaPessoaPerfil;
			$this->pessoaPerfil->save();
	    }
	}
}