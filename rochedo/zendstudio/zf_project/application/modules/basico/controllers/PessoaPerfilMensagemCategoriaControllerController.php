<?php
/**
 * Controlador PessoaPerfilMensagemCategoria
 *
 */
class Basico_PessoaPerfilMensagemCategoriaControllerController
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
	 * 
	 * @return Basico_PessoaPerfilMensagemCategoriaControllerController
	 */
	static public function init() {
		// checando singleton
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PessoaPerfilMensagemCategoriaControllerController();
		}
		
		return self::$singleton;
	}
	
	/**
	 * Salva o objeto PessoaPerfilMensagemCategoria no banco de dados.
	 * 
	 * @param Basico_Model_PessoaPerfilMensagemCategoria $novaPessoaPerfilMensagemCategoria
	 * 
	 * @return void
	 */
	public function salvarPessoaPerfilMensagemCategoria(Basico_Model_PessoaPerfilMensagemCategoria $novaPessoaPerfilMensagemCategoria)
	{
		try {
			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novaPessoaPerfilMensagemCategoria, Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema(), Basico_CategoriaControllerController::retornaIdCategoriaLogNovaPessoaPerfilMensagemCategoria(), LOG_MSG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA);

			// atualizando o objeto
	    	$this->pessoaPerfilMensagemCategoria = $novaPessoaPerfilMensagemCategoria;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}