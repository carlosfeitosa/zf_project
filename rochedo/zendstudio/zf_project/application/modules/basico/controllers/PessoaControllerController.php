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
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarPessoa(Basico_Model_Pessoa $novaPessoa, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();

			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novaPessoa, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovaPessoa(), LOG_MSG_NOVA_PESSOA);
			// atualizando o objeto
			$this->pessoa = $novaPessoa;
						
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Retorna a lingua usuario
	 * 
	 * @return String
	 */
	public static function retornaLinguaUsuario()
	{
		// retornando a lingua padrao do usuario
		return Basico_UtilControllerController::retornaValorSessao(DEFAULT_USER_LANGUAGE);
	}
	
	/**
	 * Seta a lingua do ususario
	 * 
	 * @param String $lingua
	 * 
	 * @return True
	 */
	public static function setaLinguaUsuario($lingua)
	{
		// setando a lingua padra
		return Basico_UtilControllerController::registraValorSessao(DEFAULT_USER_LANGUAGE, $lingua);
	}
	
    /**
	 * Retorna o objeto dados pessoais da pessoa passada.
	 * 
	 * @param Basico_Model_Pessoa $pessoa
	 * @return Basico_Model_DadosPessoais
	 */
	public static function retornaObjetoDadosPessoaisPessoa(Basico_Model_Pessoa $pessoa)
	{
		//instanciando classe dadosPessoais
		$objDadosPessoais = new Basico_Model_DadosPessoais();
		
		//recuperando tupla da pessoa passada
		$dadosPessoais = $objDadosPessoais->fetchList("id_pessoa = {$pessoa->id}");
		
		//retornando objeto dados pessoais
		return $dadosPessoais[0];
	}
}