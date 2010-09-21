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
	 * @return Basico_PessoaPerfilMensagemCategoriaController
	 */
	static public function init() {
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PessoaPerfilMensagemCategoriaControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva o objeto PessoaPerfilMensagemCategoria no banco de dados.
	 * @param Basico_Model_PessoaPerfilMensagemCategoria $novaPessoaPerfilMensagemCategoria
	 * @return void
	 */
	public function salvarPessoaPerfilMensagemCategoria($novaPessoaPerfilMensagemCategoria, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();

	    	// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novaPessoaPerfilMensagemCategoria);

			// atualizando o objeto
	    	$this->pessoaPerfilMensagemCategoria = $novaPessoaPerfilMensagemCategoria;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}