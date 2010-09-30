<?php
/**
 * Controlador Pessoa.
 *
 */

class Basico_PessoaControllerController
{
	/**
	 * Instância do Controlador Pessoa
	 * @var Basico_PessoaController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo Pessoa.
	 * @var Basico_Model_Pessoa
	 */
	private $pessoa;
	
	/**
	 * Construtor do Controlador Pessoa.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->pessoa = new Basico_Model_Pessoa();
	}
	
	/**
	 * Retorna instância do Controlador Pessoa.
	 * 
	 * @return Basico_PessoaController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PessoaControllerController();
		}
		
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_Pessoa $novaPessoa
	 * 
	 * @return void
	 */
	public function salvarPessoa(Basico_Model_Pessoa $novaPessoa)
	{
		try {
			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novaPessoa, null, Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema(), Basico_CategoriaControllerController::retornaIdCategoriaLogNovaPessoa(), LOG_MSG_NOVA_PESSOA);
			// atualizando o objeto
			$this->pessoa = $novaPessoa;
						
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}