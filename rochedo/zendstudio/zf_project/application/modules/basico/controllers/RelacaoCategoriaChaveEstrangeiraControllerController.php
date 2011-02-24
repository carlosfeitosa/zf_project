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
	private static $_singleton;

	/**
	 * 
	 * @var Basico_Model_RelacaoCategoriaChaveEstrangeira
	 */
	private $_relacaoCategoriaChaveEstrangeira;

	/**
	 * Construtor do Controlador Basico_RelacaoCategoriaChaveEstrangeiraControllerController
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_relacaoCategoriaChaveEstrangeira = $this->retornaNovoObjetoRelacaoCategoriaChaveEstrangeira();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_RelacaoCategoriaChaveEstrangeiraControllerController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Inicializa o controlador Basico_RelacaoCategoriaChaveEstrangeiraControllerController.
	 * 
	 * @return Basico_RelacaoCategoriaChaveEstrangeiraControllerController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_RelacaoCategoriaChaveEstrangeiraControllerController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um modelo relacao categoria chave estrangeira vazio
	 *
	 * @return Basico_Model_RelacaoCategoriaChaveEstrangeira
	 */
	public function retornaNovoObjetoRelacaoCategoriaChaveEstrangeira()
	{
		// retornando um modelo vazio
		return new Basico_Model_RelacaoCategoriaChaveEstrangeira();
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
	public function salvarRelacaoCategoriaChaveEstrangeira(Basico_Model_RelacaoCategoriaChaveEstrangeira $objRelacaoCategoriaChaveEstrangeira, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
    	try {
    		// instanciando controladores
    		$categoriaControllerController = Basico_CategoriaControllerController::getInstance();
    		$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();

    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objRelacaoCategoriaChaveEstrangeira->id != NULL) {
				// estourando excecao - nao eh possivel atualizar a relacao de categoria chave estrangeira
				throw new Exception(MSG_ERRO_UPDATE_NAO_PERMITIDO);
			} else {
				// recuperando informacoes de log de novo registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogRelacaoCategoriaChaveEstrangeira();
				$mensagemLog    = LOG_MSG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA;
			}

			// salvando o objeto através do controlador Save
	    	Basico_PersistenceControllerController::bdSave($objRelacaoCategoriaChaveEstrangeira, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_relacaoCategoriaChaveEstrangeira = $objRelacaoCategoriaChaveEstrangeira;

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
		$objsRelacaoCategoriaChaveEstrangeira = $this->_relacaoCategoriaChaveEstrangeira->fetchList("tabela_origem = '{$nomeTabela}' and campo_origem = '{$nomeCampo}'", null, 1, 0);

		// verificando se o objeto foi recuperando
		if (isset($objsRelacaoCategoriaChaveEstrangeira[0]))

			return true;
		// verificando se deve criar relacao
		else if ($forceRelationship) {

			// retornando o resultado do metodo "criaRelacaoCategoriaChaveEstrangeira"
			return $this->criaRelacaoCategoriaChaveEstrangeira($nomeTabela, $nomeCampo);
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
			// instanciando controladores
			$rowinfoControllerController = Basico_RowInfoControllerController::getInstance();
			$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();

			// instanciando o um novo modelo de relacao categoria chave estrangeira
			$this->_relacaoCategoriaChaveEstrangeira = new Basico_Model_RelacaoCategoriaChaveEstrangeira();

			// setando os valores
			$this->_relacaoCategoriaChaveEstrangeira->tabelaOrigem = $nomeTabela;
			$this->_relacaoCategoriaChaveEstrangeira->campoOrigem  = $nomeCampo;
			$rowinfoControllerController->prepareXml($this->_relacaoCategoriaChaveEstrangeira, true);
			$this->_relacaoCategoriaChaveEstrangeira->rowinfo = $rowinfoControllerController->getXml();

			// salvando o objeto
			$this->salvarRelacaoCategoriaChaveEstrangeira($this->_relacaoCategoriaChaveEstrangeira, null, $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema());
		}
		return true;
	}

	/**
	 * Retorna um array contendo todas as tabelas relacionadas com categoria chave estrangeira.
	 * A chave do array contem o nome da tabela e o valor contem o nome do campo
	 * 
	 * @return Array
	 */
	public function retornaArrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira()
	{
		// inicializando variaveis
		$arrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira = array();

		// recuperando todas as tuplas
		$objsRelacaoCategoriaChaveEstrangeira = $this->_relacaoCategoriaChaveEstrangeira->fetchAll();

		// loop para recuperar o nome das tabelas
		foreach($objsRelacaoCategoriaChaveEstrangeira as $objRelacaoCategoriaChaveEstrangeira) {
			// recupernado o nome das tabelas e colocando no array de resultados 
			$arrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira[$objRelacaoCategoriaChaveEstrangeira->tabelaOrigem] = $objRelacaoCategoriaChaveEstrangeira->campoOrigem;
		}

		// retornando o array de resultados
		return $arrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira;
	}
}