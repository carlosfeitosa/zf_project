<?php
/**
 * Controlador DicionarioDadosSchema
 * 
 * Responsável pelas DicionarioDadosSchemas do sistema.
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_DicionarioDadosSchemadafo
 * 
 * @since 23/04/2012
 */

class Basico_OPController_DicionarioDadosSchemaOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do controlador Basico_OPController_DicionarioDadosSchemaOPController.
	 * @var Basico_OPController_DicionarioDadosSchemaOPController
	 */
	private static $_singleton;
	/**
	 * Instância do modelo Basico_Model_DicionarioDadosSchema
	 * @var Basico_Model_DicionarioDadosSchema
	 */
	protected $_model;

	/**
	 * Nome da tabela DicionarioDadosSchema
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_dicionario_dados.schema';

	/**
	 * Nome do campo id da tabela DicionarioDadosSchema
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador DicionarioDadosSchema
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_DicionarioDadosSchemaOPController
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
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function initControllers()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_DicionarioDadosSchemaOPController
	 * 
	 * @return Basico_OPController_DicionarioDadosSchemaOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DicionarioDadosSchemaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Salva um novo schema no dicionario de dados
	 * 
	 * @param Integer $idPessoaAssocclPerfil
	 * @param Integer $idModulo
	 * @param String $schemaname
	 * @param String $constanteTextual
	 * @param String $constanteTextualDescricao
	 * @param String $constanteTextualAlias
	 * @param Integer $quantidadeTabelas
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	public function criarNovoSchemaAtivo($idPessoaAssocclPerfilCreate, $idModulo, $schemaname, $constanteTextual, $quantidadeTabelas = null, $constanteTextualDescricao = null, $constanteTextualAlias = null)
	{
		// instanciando modelo
		$this->initModel();

		// atribuindo valores aos atributos
		$this->_model->idModulo                  = $idModulo;
		$this->_model->schemaname                = $schemaname;
		$this->_model->constanteTextual          = $constanteTextual;
		$this->_model->constanteTextualDescricao = $constanteTextualDescricao;
		$this->_model->constanteTextualAlias     = $constanteTextualAlias;
		$this->_model->quantidadeTabelas         = $quantidadeTabelas;
		$this->_model->ativo                     = true;

		// retornando o resultado do metodo de salvar o objeto
		return parent::salvarObjeto(Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_DICIONARIO_DADOS_SCHEMA, true), LOG_MSG_NOVO_DICIONARIO_DADOS_SCHEMA, null, $idPessoaAssocclPerfilCreate);
	}

	/**
	 * Desativa um schema
	 * 
	 * @param Integer $idPessoaAssocclPerfilDeactivate
	 * @param Integer $idModulo
	 * @param String $schemaname
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	public function desativaSchema($idPessoaAssocclPerfilDeactivate, $idModulo, $schemaname)
	{
		// recuperando o objeto schema
		$this->_model = $this->retornaObjetosPorParametros("id_modulo = {$idModulo} AND schemaname = '{$schemaname}'", null, 1, 0);

		// recuperando a versao do objeto
		$versaoObjeto = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($this->_model);

		// desativando o schema
		$this->_model->ativo = false;

		// retornando o resultado do metodo de salvar o objeto
		return parent::salvarObjeto(Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_DICIONARIO_DADOS_SCHEMA, true), LOG_MSG_UPDATE_DICIONARIO_DADOS_SCHEMA, $versaoObjeto, $idPessoaAssocclPerfilDeactivate);
	}

	/**
	 * Atualiza a quantidade de tabelas de um schema
	 * 
	 * @param Integer $idPessoaAssocclPerfilUpdate
	 * @param Integer $idModulo
	 * @param String $schemaname
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 26/04/2012
	 */
	public function atualizaQuantidadeTabelasSchema($idPessoaAssocclPerfilUpdate, $schemaname)
	{
		// recuperando o objeto schema
		$this->_model = $this->retornaObjetosPorParametros("schemaname = '{$schemaname}'", null, 1, 0);

		// recuperando a versao do objeto
		$versaoObjeto = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($this->_model);

		// desativando o schema
		$this->_model->quantidadeTabelas = Basico_OPController_DBUtilOPController::retornaQuantidadeTabelasSchema($schemaname);

		// retornando o resultado do metodo de salvar o objeto
		return parent::salvarObjeto(Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_DICIONARIO_DADOS_SCHEMA, true), LOG_MSG_UPDATE_DICIONARIO_DADOS_SCHEMA, $versaoObjeto, $idPessoaAssocclPerfilUpdate);
	}

	/**
	 * Retorna o nome de um schema atraves de seu id
	 * 
	 * @param Integer $idSchema
	 * 
	 * @return String|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 26/04/2012
	 */
	public function retornaNomeSchemaPorId($idSchema)
	{
		// verificando se nao foi passado o id do schema
		if ((!$idSchema) or (!is_int($idSchema))) {
			// retornando nulo
			return null;
		}

		// recuperando array com o resultado da recuperacao do nome do schema atraves do id
		$arrayResultado = $this->retornaArrayDadosObjetoPorId($idSchema, array('schemaname'));

		// verificando se nao houve recuperacao de resultado
		if (!count($arrayResultado)) {
			// retornando nulo
			return null;
		}

		// retornando o nome do schema
		return $arrayResultado['schemaname'];
	}

	/**
	 * Retorna o id de um schema atraves do seu schemaname
	 * 
	 * @param String $schemaname
	 * 
	 * @return Integer|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 26/04/2012
	 */
	public function retornaIdSchemaPorSchemaname($schemaname)
	{
		// verificando se nao foi passado o nome do schema
		if ((!$schemaname) or (!is_string($schemaname))) {
			// retornando nulo
			return null;
		}

		// recuperando array com o resultado da recuperacao do nome do schema atraves do id
		$arrayResultado = $this->retornaArrayDadosObjetosPorParametros("schemaname = '{$schemaname}'", null, 1, 0, array('id'));

		// verificando se nao houve recuperacao de resultado
		if (!count($arrayResultado)) {
			// retornando nulo
			return null;
		}

		// retornando o nome do schema
		return (int) $arrayResultado[0]['id'];
	}
}