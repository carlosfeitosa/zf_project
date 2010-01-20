<?php
/**
 * Controlador PessoaPerfilMensagemCategoria
 *
 */
class Basico_PessoaPerfilMensagemCategoriaController 
{
	/**
	 * Instância do Controlador PessoaPerfilMensagemCategoria.
	 * @var Basico_PessoaPerfilMensagemCategoriaController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo Basico_Model_PessoaPerfilMensagemCategoria.
	 * @var Basico_Model_PessoaPerfilMensagemCategoria
	 */
	private $pessoaPerfilMensagemCategoria;
	
	/**
	 * Construtor.
	 * @return unknown_type
	 */
	public function __construct() {
	    $this->pessoaPerfilMensagemCategoria = new Basico_Model_PessoaPerfilMensagemCategoria();	
	}
	
	/**
	 * Retorna instância do controlador Basico_PessoaPerfilMensagemCategoriaController
	 * @return Basico_PessoaPerfilMensagemCategoriaController
	 */
	static public function init() {
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PessoaPerfilMensagemCategoriaController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva o objeto PessoaPerfilMensagemCategoria no banco de dados.
	 * @param Basico_Model_PessoaPerfilMensagemCategoria $novaPessoaPerfilMensagemCategoria
	 * @return void
	 */
	public function salvarPessoaPerfilMensagemCategoria($novaPessoaPerfilMensagemCategoria) {
	
	//try {
	    	//$auxDb = Zend_Registry::get('db');
	    	//$auxDb->beginTransaction();
	    	//try{
	    		$this->pessoaPerfilMensagemCategoria = $novaPessoaPerfilMensagemCategoria;
				$this->pessoaPerfilMensagemCategoria->save();
			    //$auxDb->commit();
	    	//} catch (Exception $e) {
	    		//$auxDb->rollback();
	    	//}
	   // } catch (Exception $e) {
	    //	$this->pessoaPerfilMensagemCategoria = $novaPessoaPerfilMensagemCategoria;
		//	$this->pessoaPerfilMensagemCategoria->save();
	    //}
		
	}
}