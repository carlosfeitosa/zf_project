<?php
/**
 * Controlador Relacao Cartegoria Chave Estrangeira
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_RelacaoCategoriaChaveEstrangeira
 * 
 * @since 22/03/2011
 * 
 */

class Basico_OPController_RelacaoCategoriaChaveEstrangeiraOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_RelacaoCategoriaChaveEstrangeiraOPController
	 */
	private static $_singleton;

	/**
	 * 
	 * @var Basico_Model_RelacaoCategoriaChaveEstrangeira
	 */
	private $_model;

	/**
	 * Construtor do Controlador Basico_OPController_RelacaoCategoriaChaveEstrangeiraOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_RelacaoCategoriaChaveEstrangeiraOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Inicializa o controlador Basico_OPController_RelacaoCategoriaChaveEstrangeiraOPController.
	 * 
	 * @return Basico_OPController_RelacaoCategoriaChaveEstrangeiraOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_RelacaoCategoriaChaveEstrangeiraOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Salva o objeto RelacaoCategoriaChaveEstrangeira no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_RelacaoCategoriaChaveEstrangeira $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_RelacaoCategoriaChaveEstrangeira', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id == NULL) {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA, true);
	    		$mensagemLog    = LOG_MSG_NOVA_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA;
	    	} else {
	    		throw new Exception(MSG_ERRO_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA_EXISTE . " : " . $e->getMessage());
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}
	
     /**
	 * Apaga o objeto categoria do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Categoria $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		throw new Exception(LOG_MSG_DELETE_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA . " : " . $e->getMessage());
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
		$objsRelacaoCategoriaChaveEstrangeira = $this->retornaObjetosPorParametros($this->_model, "tabela_origem = '{$nomeTabela}' and campo_origem = '{$nomeCampo}'", null, 1, 0);

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
			$rowinfoOPController = Basico_OPController_RowinfoOPController::getInstance();

			// instanciando o um novo modelo de relacao categoria chave estrangeira
            $this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
            
			// setando os valores
			$this->_model->tabelaOrigem = $nomeTabela;
			$this->_model->campoOrigem  = $nomeCampo;
			$rowinfoOPController->prepareXml($this->_model, true);
			$this->_model->rowinfo = $rowinfoOPController->getXml();

			// salvando o objeto
			$this->salvarObjeto($this->_model, null, Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL());
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
		$objsRelacaoCategoriaChaveEstrangeira = $this->retornaTodosObjetos($this->_model);

		// loop para recuperar o nome das tabelas
		foreach($objsRelacaoCategoriaChaveEstrangeira as $objRelacaoCategoriaChaveEstrangeira) {
			// recupernado o nome das tabelas e colocando no array de resultados 
			$arrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira[$objRelacaoCategoriaChaveEstrangeira->tabelaOrigem] = $objRelacaoCategoriaChaveEstrangeira->campoOrigem;
		}

		// retornando o array de resultados
		return $arrayNomeCampoTabelasRelacaoCategoriaChaveEstrangeira;
	}
}