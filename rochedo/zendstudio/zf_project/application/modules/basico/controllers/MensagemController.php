<?php

class Basico_MensagemController
{
	static private $singleton;
	private $mensagem;
	
	public function __construct()
	{
    	$this->mensagem = new Basico_Model_Mensagem();
	}
	
	static public function init() {
		if(self::$singleton == NULL){
			self::$singleton = new Basico_MensagemController();
		}
		return self::$singleton;
	}
    
    public function salvarMensagem($novaMensagem) 
    {
      try {
	    	$auxDb = Zend_Registry::get('db');
	    	$auxDb->beginTransaction();
	    	try{
	    		$this->mensagem = $novaMensagem;
				$this->mensagem->save();
			    $auxDb->commit();
	    	} catch (Exception $e) {
	    		$auxDb->rollback();
	    	}
	    } catch (Exception $e) {
	    	$this->mensagem = $novaMensagem;
			$this->mensagem->save();
	    }
	}
	
	public function retornaTemplateMensagemValidacaoUsuarioPlainText($idCategoria) {
		
		
		$mensagemTemplate = self::$singleton->mensagem->fetchList("id_categoria = {$idCategoria}", null, 1, 0);
		$this->mensagem->setAssunto($mensagemTemplate[0]->assunto);
		$this->mensagem->setRemetente($mensagemTemplate[0]->remetente);
		$this->mensagem->setMensagem($mensagemTemplate[0]->mensagem);
		
		return $this->mensagem;
		
	}
//#BlockStart number=138 id=_kDO0oMIwEd6r_uu4CwoKLQ_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=138

}
