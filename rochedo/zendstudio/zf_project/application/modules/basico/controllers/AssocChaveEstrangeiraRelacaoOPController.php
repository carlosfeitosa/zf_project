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

class Basico_OPController_AssocChaveEstrangeiraRelacaoOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_AssocChaveEstrangeiraRelacaoOPController
	 */
	private static $_singleton;

	/**
	 * 
	 * @var Basico_Model_AssocChaveEstrangeiraRelacao
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_categoria.assoc_chave_estrangeira_relacao
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_categoria.assoc_chave_estrangeira_relacao';
	
	/**
	 * Nome do campo id da tabela basico_categoria.assoc_chave_estrangeira_relacao
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_AssocChaveEstrangeiraRelacaoOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_AssocChaveEstrangeiraRelacaoOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 03/05/2012
	 */
	protected function initControllers()
	{
		return;
	}

	/**
	 * Inicializa o controlador Basico_OPController_AssocChaveEstrangeiraRelacaoOPController.
	 * 
	 * @return Basico_OPController_AssocChaveEstrangeiraRelacaoOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_AssocChaveEstrangeiraRelacaoOPController();
		}
		// retornando instancia
		return self::$_singleton;
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
		$objsRelacaoCategoriaChaveEstrangeira = $this->retornaObjetosPorParametros("tabela_origem = '{$nomeTabela}' and campo_origem = '{$nomeCampo}'", null, 1, 0);

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
			// instanciando o um novo modelo de relacao categoria chave estrangeira
            $novoModelo = $this->retornaNovoObjetoModelo();
            
			// setando os valores
			$novoModelo->tabelaOrigem = $nomeTabela;
			$novoModelo->campoOrigem  = $nomeCampo;

			// salvando o objeto
			parent::salvarObjeto($novoModelo, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA, true), LOG_MSG_NOVA_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA);
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