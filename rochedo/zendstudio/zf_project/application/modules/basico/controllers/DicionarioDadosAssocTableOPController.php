<?php
/**
 * Controlador DicionarioDadosAssocTable
 * 
 * Responsável pelas DicionarioDadosAssocTables do sistema.
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_DicionarioDadosAssocTabledafo
 * 
 * @since 23/04/2012
 */

class Basico_OPController_DicionarioDadosAssocTableOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 *  
	 * @var Basico_OPController_DicionarioDadosAssocTableOPController object
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_DicionarioDadosAssocTable object
	 */
	protected $_model;

	/**
	 * 
	 * @var Basico_OPController_DicionarioDadosSchemaOPController
	 */
	protected $_dicionarioDadosSchemaOPController;

	/**
	 * Nome da tabela DicionarioDadosAssocTable
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_dicionario_dados.assoc_table';

	/**
	 * Nome do campo id da tabela DicionarioDadosAssocTable
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
		
	/**
	 * Construtor do Controlador DicionarioDadosAssocTable
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_DicionarioDadosAssocTableOPController
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
		// inicializando controladores utilizados por este controlador
		$this->_dicionarioDadosSchemaOPController = Basico_OPController_DicionarioDadosSchemaOPController::getInstance();

		return;
	}
	
	/**
	 * Recupera a instancia do controlador Basico_OPController_DicionarioDadosAssocTableOPController
	 * 
	 * @return Basico_OPController_DicionarioDadosAssocTableOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DicionarioDadosAssocTableOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Salva uma nova tabela no dicionario de dados
	 * 
	 * @param Integer $idPessoaAssocclPerfil
	 * @param Integer $idCategoria
	 * @param Integer $idSchema
	 * @param String $tablename
	 * @param String $constanteTextual
	 * @param String $constanteTextualDescricao
	 * @param String $constanteTextualAlias
	 * @param Integer $quantidadeCampos
	 * @param Integer $idFkDefault
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	public function criarNovaTabelaAtiva($idPessoaAssocclPerfilCreate, $idCategoria, $idSchema, $tablename, $constanteTextual, $constanteTextualDescricao = null, $constanteTextualAlias = null, $quantidadeCampos = null, $idFkDefault = null)
	{
		// instanciando modelo
		$novoObjeto = $this->retornaNovoObjetoModelo();

		// atribuindo valores aos atributos
		$novoObjeto->idCategoria               = $idCategoria;
		$novoObjeto->idSchema                  = $idSchema;
		$novoObjeto->idFkDefault               = $idFkDefault;
		$novoObjeto->tablename                 = $tablename;
		$novoObjeto->constanteTextual          = $constanteTextual;
		$novoObjeto->constanteTextualDescricao = $constanteTextualDescricao;
		$novoObjeto->constanteTextualAlias     = $constanteTextualAlias;
		$novoObjeto->quantidadeCampos          = $quantidadeCampos;
		$novoObjeto->ativo                     = true;

		// retornando o resultado do metodo de salvar o objeto
		return parent::salvarObjeto($novoObjeto, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_DICIONARIO_DADOS_ASSOC_TABLE, true), LOG_MSG_NOVO_DICIONARIO_DADOS_ASSOC_TABLE . "(id_schema = {$idSchema} | {$tablename})", null, $idPessoaAssocclPerfilCreate);
	}

	/**
	 * Desativa uma tabela
	 * 
	 * @param Integer $idPessoaAssocclPerfilDeactivate
	 * @param Integer $idSchema
	 * @param String $tablename
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	public function desativaTabela($idPessoaAssocclPerfilDeactivate, $idSchema, $tablename)
	{
		// recuperando o objeto schema
		$objetoUpdate = $this->retornaObjetosPorParametros("id_schema = {$idSchema} AND tablename = '{$tablename}'", null, 1, 0);

		// verificando se o objeto foi recuperado
		if (!Basico_OPController_UtilOPController::verificaVariavelRepresentaObjeto($objetoUpdate, true, false)) {
			// retornando falso
			return false;
		}

		// recuperando a versao do objeto
		$versaoObjeto = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objetoUpdate);

		// desativando o schema
		$objetoUpdate->ativo = false;

		// retornando o resultado do metodo de salvar o objeto
		return parent::salvarObjeto($objetoUpdate, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_DICIONARIO_DADOS_ASSOC_TABLE, true), LOG_MSG_UPDATE_DICIONARIO_DADOS_ASSOC_TABLE . "(id_schema = {$idSchema} | {$tablename})", $versaoObjeto, $idPessoaAssocclPerfilDeactivate);
	}

	/**
	 * Ativa uma tabela
	 * 
	 * @param Integer $idPessoaAssocclPerfilActivate
	 * @param Integer $idSchema
	 * @param String $tablename
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 22/05/2012
	 */
	public function ativaTabela($idPessoaAssocclPerfilActivate, $idSchema, $tablename)
	{
		// recuperando o objeto schema
		$objetoUpdate = $this->retornaObjetosPorParametros("id_schema = {$idSchema} AND tablename = '{$tablename}'", null, 1, 0);

		// verificando se o objeto foi recuperado
		if (!Basico_OPController_UtilOPController::verificaVariavelRepresentaObjeto($objetoUpdate, true, false)) {
			// retornando falso
			return false;
		}

		// recuperando a versao do objeto
		$versaoObjeto = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objetoUpdate);

		// desativando o schema
		$objetoUpdate->ativo = true;

		// retornando o resultado do metodo de salvar o objeto
		return parent::salvarObjeto($objetoUpdate, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_DICIONARIO_DADOS_ASSOC_TABLE, true), LOG_MSG_UPDATE_DICIONARIO_DADOS_ASSOC_TABLE . "(id_schema = {$idSchema} | {$tablename})", $versaoObjeto, $idPessoaAssocclPerfilActivate);
	}

	/**
	 * Atualiza a quantidade de campos de uma tabela
	 * 
	 * @param Integer $idPessoaAssocclPerfilUpdate
	 * @param Integer $idSchema
	 * @param String $tablename
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 26/04/2012
	 */
	public function atualizaQuantidadeCamposTabela($idPessoaAssocclPerfilUpdate, $idSchema, $tablename)
	{
		// recuperando o objeto schema
		$objetoUpdate = $this->retornaObjetosPorParametros("id_schema = {$idSchema} AND tablename = '{$tablename}'", null, 1, 0);

		// verificando se o objeto foi recuperado
		if (!Basico_OPController_UtilOPController::verificaVariavelRepresentaObjeto($objetoUpdate, true, false)) {
			// retornando falso
			return false;
		}

		// recuperando a versao do objeto
		$versaoObjeto = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objetoUpdate);

		// recuperando o nome do schema
		$schemaname = $this->_dicionarioDadosSchemaOPController->retornaNomeSchemaPorId($idSchema);

		// atualizando a quantidade de campos da tabela
		$objetoUpdate->quantidadeCampos = Basico_OPController_DBUtilOPController::retornaQuantidadeCamposTabela($schemaname, $tablename);

		// limpando memória
		unset($schemaname);

		// retornando o resultado do metodo de salvar o objeto
		return parent::salvarObjeto($objetoUpdate, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_DICIONARIO_DADOS_ASSOC_TABLE, true), LOG_MSG_UPDATE_DICIONARIO_DADOS_ASSOC_TABLE . "(id_schema = {$idSchema} | {$tablename})", $versaoObjeto, $idPessoaAssocclPerfilUpdate);
	}

	/**
	 * Retorna a partir do nome da tabela o o valor da constante definida para cada tipo de tabela (containter, especializacoes, agrupamentos, sequencias, associacoes, especializacoes de associacoes e containers com proprietario generico)
	 * 
	 * @param String $tablename
	 * 
	 * @return String|null
	 *
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 26/04/2012
	 */
	public function retornaValorConstanteCategoriaTipoTabela($tablename)
	{
		// verificando se nao foi passado o nome de uma tabela
		if ((!$tablename) or (!is_string($tablename))) {
			// retornando nullo
			return null;
		}

		// verificando o tipo da tabela, atraves de seu nome
		if (false !== strpos($tablename, 'assoc_')) { // especializacao
			// retornando a constante de especializacao
			return CATEGORIA_TIPO_TABELA_ESPECIALIZACAO;
		} else if (false !== strpos($tablename, 'assocag_')) { // agrupamento
			// retornando a constante de agrupamento
			return CATEGORIA_TIPO_TABELA_AGRUPAMENTO;
		} else if (false !== strpos($tablename, 'assocsq_')) { // sequencia
			// retornando a constante de sequencia
			return CATEGORIA_TIPO_TABELA_SEQUENCIA;
		} else if (false !== strpos($tablename, 'assoccl_')) { // associacao
			// retornando a constante de associacao
			return CATEGORIA_TIPO_TABELA_ASSOCIACAO;
		} else if ((false !== strpos($tablename, 'assoc_')) and (false !== strpos($tablename, 'assoccl_'))) { // especializacao de associacao
			// retornando a constante de especializacao de associacao
			return CATEGORIA_TIPO_TABELA_ESPECIALIZACAO_ASSOCIACAO;
		} else if (false !== strpos($tablename, 'cpg_')) { // containner de proprietario generico
			// retornando a constante de containner de proprietario generico
			return CATEGORIA_TIPO_TABELA_CONTAINNER_PROPRIETARIO_GENERICO;
		} else { // containner
			// retornando a constante de containner
			return CATEGORIA_TIPO_TABELA_CONTAINNER;
		}
	}

	/**
	 * Retorna o id de uma tabela atraves do id do schema seu tablename
	 * 
	 * @param Integer $idSchema
	 * @param String $tablename
	 * 
	 * @return Integer|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 26/04/2012
	 */
	public function retornaIdTablePorIdSchemaTablename($idSchema, $tablename)
	{
		// verificando se nao foi passado o id do schema ou nome do schema
		if (((!$idSchema) or (!is_int($idSchema))) or ((!$tablename) or (!is_string($tablename)))) {
			// retornando nulo
			return null;
		}

		// recuperando array com o resultado da recuperacao do nome do schema atraves do id
		$arrayResultado = $this->retornaArrayDadosObjetosPorParametros("id_schema = {$idSchema} and tablename = '{$tablename}'", null, 1, 0, array('id'));

		// verificando se nao houve recuperacao de resultado
		if (!count($arrayResultado)) {
			// retornando nulo
			return null;
		}

		// retornando o nome do schema
		return (int) $arrayResultado[0]['id'];
	}
}