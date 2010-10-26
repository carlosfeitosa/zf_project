<?php
/**
 * Controlador Relacao Cartegoria Chave Estrangeira
 * 
 */

class Basico_RelacaoCategoriaChaveEstrangeiraControllerController
{
	/**
	 * 
	 * @var Basico_RelacaoCategoriaChaveEstrangeiraControllerController
	 */
	static private $singleton;

	/**
	 * 
	 * @var Basico_Model_RelacaoCategoriaChaveEstrangeira
	 */
	private $relacaoCategoriaChaveEstrangeira;

	/**
	 * Construtor do Controlador Email
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->relacaoCategoriaChaveEstrangeira = new Basico_Model_RelacaoCategoriaChaveEstrangeira();
	}

	/**
	 * Inicializa o controlador Email.
	 * 
	 * @return Basico_RelacaoCategoriaChaveEstrangeiraControllerController
	 */
	static public function init()
	{
		// verificando singleton
		if (self::$singleton == NULL){
			
			self::$singleton = new Basico_RelacaoCategoriaChaveEstrangeiraControllerController();
		}
		return self::$singleton;
	}

	/**
	 * Salva nova relacao categoria chave estrangeira no banco de dados
	 * 
	 * @param Basico_Model_RelacaoCategoriaChaveEstrangeira $novaRelacaoCategoriaChaveEstrangeira
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarRelacaoCategoriaChaveEstrangeira(Basico_Model_RelacaoCategoriaChaveEstrangeira $novaRelacaoCategoriaChaveEstrangeira, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
    	try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();

			// salvando o objeto através do controlador Save
	    	Basico_PersistenceControllerController::bdSave($novaRelacaoCategoriaChaveEstrangeira, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogRelacaoCategoriaChaveEstrangeira(), LOG_MSG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA);

	    	// atualizando o objeto
    		$this->relacaoCategoriaChaveEstrangeira = $novaRelacaoCategoriaChaveEstrangeira;

    	} catch (Exception $e) {
    		
    		throw new Exception($e);
    	}
	}

	/**
	 * Checa se existe a tabela/campo na relacao categoria chave estrangeira
	 * 
	 * @param String $nomeTabela
	 * @param String $nomeCampo
	 * @param Boolean $forceRelationship
	 * 
	 * @return Boolean
	 */
	public function checaRelacaoCategoriaChaveEstrangeira($nomeTabela, $nomeCampo, $forceRelationship = false)
	{
		// recuperando objeto
		$objsRelacaoCategoriaChaveEstrangeira = $this->relacaoCategoriaChaveEstrangeira->fetchList("tabela_origem = '{$nomeTabela}' and campo_origem = '{$nomeCampo}'", null, 1, 0);

		// verificando se o objeto foi recuperando
		if (isset($objsRelacaoCategoriaChaveEstrangeira[0]))
			
			return true;
		// verificando se deve criar relacao
		else if ($forceRelationship) {

			// retornando o resultado do metodo "criaRelacaoCategoriaChaveEstrangeira"
			return self::criaRelacaoCategoriaChaveEstrangeira($nomeTabela, $nomeCampo);
		}
		
		return false;
	}

	/**
	 * Cria uma tupla em relacao categoria chave estrangeira
	 * 
	 * @param String $nomeTabela
	 * @param String $nomeCampo
	 * 
	 * @return True
	 */
	private function criaRelacaoCategoriaChaveEstrangeira($nomeTabela, $nomeCampo)
	{
		// checando se a relacao existe
		if (!self::checaRelacaoCategoriaChaveEstrangeira($nomeTabela, $nomeCampo)) {

			// instanciando o um novo modelo de relacao categoria chave estrangeira
			$this->relacaoCategoriaChaveEstrangeira = new Basico_Model_RelacaoCategoriaChaveEstrangeira();
			// instanciando o controlador de rowinfo
			$controllerRowinfo = Basico_RowInfoControllerController::init();

			// setando os valores
			$this->relacaoCategoriaChaveEstrangeira->tabelaOrigem = $nomeTabela;
			$this->relacaoCategoriaChaveEstrangeira->campoOrigem  = $nomeCampo;
			$controllerRowinfo->prepareXml($this->relacaoCategoriaChaveEstrangeira, true);
			$this->relacaoCategoriaChaveEstrangeira->rowinfo = $controllerRowinfo->getXml();

			// salvando o objeto
			self::salvarRelacaoCategoriaChaveEstrangeira($this->relacaoCategoriaChaveEstrangeira, null, Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema());
		}
	
		return true;
	}

	/**
	 * Retorna um array contendo todas as tabelas relacionadas com categoria chave estrangeira.
	 * A chave do array contem o nome da tabela e o valor contem o nome do campo
	 * 
	 * @return Array
	 */
	public static function retornaArrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira()
	{
		// inicializando variaveis
		$arrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira = array();

		// instanciando modelo categoria chave estrangeira
		$modelRelacaoCategoriaChaveEstrangeira = new Basico_Model_RelacaoCategoriaChaveEstrangeira();

		// recuperando todas as tuplas
		$objsRelacaoCategoriaChaveEstrangeira = $modelRelacaoCategoriaChaveEstrangeira->fetchAll();
		
		// loop para recuperar o nome das tabelas
		foreach($objsRelacaoCategoriaChaveEstrangeira as $objRelacaoCategoriaChaveEstrangeira) {
			// recupernado o nome das tabelas e colocando no array de resultados 
			$arrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira[$objRelacaoCategoriaChaveEstrangeira->tabelaOrigem] = $objRelacaoCategoriaChaveEstrangeira->campoOrigem;
		}

		// retornando o array de resultados
		return $arrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira;
	}
}