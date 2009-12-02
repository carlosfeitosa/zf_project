<?php
class Basico_PessoaPerfilMensagemCategoriaController 
{
	static private $singleton;
	private $pessoaPerfilMensagemCategoria;
	
	public function __construct() {
	    $this->pessoaPerfilMensagemCategoria = new Basico_Model_PessoaPerfilMensagemCategoria();	
	}
	
	public function init() {
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PessoaPerfilMensagemCategoriaController();
		}
		return self::$singleton;
	}
	
	public function salvarPessoaPerfilMensagemCategoria($novaPessoaPerfilMensagemCategoria) {
	
	try {
	    	$auxDb = Zend_Registry::get('db');
	    	$auxDb->beginTransaction();
	    	try{
	    		$this->pessoaPerfilMensagemCategoria = $novaPessoaPerfilMensagemCategoria;
				$this->pessoaPerfilMensagemCategoria->save();
			    $auxDb->commit();
	    	} catch (Exception $e) {
	    		$auxDb->rollback();
	    	}
	    } catch (Exception $e) {
	    	$this->pessoaPerfilMensagemCategoria = $novaMensagem;
			$this->pessoaPerfilMensagemCategoria->save();
	    }
		
	}
}