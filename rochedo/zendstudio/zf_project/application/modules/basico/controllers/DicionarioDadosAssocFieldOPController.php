<?php
/**
 * Controlador DicionarioDadosAssocField
 * 
 * Responsável pelas DicionarioDadosAssocFields do sistema.
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_DicionarioDadosAssocFielddafo
 * 
 * @since 23/04/2012
 */

class Basico_OPController_DicionarioDadosAssocFieldOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Nome da tabela DicionarioDadosAssocField
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_dicionario_dados.assoc_field';

	/**
	 * Nome do campo id da tabela DicionarioDadosAssocField
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 *  
	 * @var Basico_OPController_DicionarioDadosAssocFieldOPController object
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_DicionarioDadosAssocField object
	 */
	protected $_model;

	/**
	 * 
	 * @var Basico_OPController_DicionarioDadosAssocTableOPController
	 */
	protected $_dicionarioDadosAssocTableOPController;
		
	/**
	 * Construtor do Controlador DicionarioDadosAssocField
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_DicionarioDadosAssocFieldOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{
		// chamando inicializacao da classe pai
		parent::_init();

		return;
	}

	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 27/04/2012
	 */
	protected function _initControllers()
	{
		// inicializando controladores utilizados por este controlador
		$this->_dicionarioDadosAssocTableOPController = Basico_OPController_DicionarioDadosAssocTableOPController::getInstance();

		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_DicionarioDadosAssocFieldOPController
	 * 
	 * @return Basico_OPController_DicionarioDadosAssocFieldOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DicionarioDadosAssocFieldOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Salva um novo campo no dicionario de dados
	 * 
	 * @param Integer $idPessoaAssocclPerfilCreate
	 * @param Integer $idAssocTable
	 * @param String $fieldname
	 * @param String $constanteTextual
	 * @param String $constanteTextualDescricao
	 * @param String $constanteTextualAlias
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 27/04/2012
	 */
	public function criarNovoCampoAtivo($idPessoaAssocclPerfilCreate, $idAssocTable, $fieldname, $constanteTextual, $constanteTextualDescricao = null, $constanteTextualAlias = null)
	{
		// instanciando modelo
		$novoObjeto = $this->_retornaNovoObjetoModelo();

		// atribuindo valores aos atributos
		$novoObjeto->idAssocTable              = $idAssocTable;
		$novoObjeto->fieldname                 = $fieldname;
		$novoObjeto->constanteTextual          = $constanteTextual;
		$novoObjeto->constanteTextualDescricao = $constanteTextualDescricao;
		$novoObjeto->constanteTextualAlias     = $constanteTextualAlias;
		$novoObjeto->ativo                     = true;

		// retornando o resultado do metodo de salvar o objeto
		return parent::_salvarObjeto($novoObjeto, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_DICIONARIO_DADOS_ASSOC_FIELD, true), LOG_MSG_NOVO_DICIONARIO_DADOS_ASSOC_FIELD . "(id_assoctable = {$idAssocTable} | {$fieldname})", null, $idPessoaAssocclPerfilCreate);
	}

	/**
	 * Desativa um campo
	 * 
	 * @param Integer $idPessoaAssocclPerfilDeactivate
	 * @param Integer $idAssocTable
	 * @param String $fieldname
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 27/04/2012
	 */
	public function desativaCampo($idPessoaAssocclPerfilDeactivate, $idAssocTable, $fieldname)
	{
		// recuperando o objeto schema
		$objetoUpdate = $this->_retornaObjetosPorParametros("id_table = {$idAssocTable} AND fieldname = '{$fieldname}'", null, 1, 0);

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
		return parent::_salvarObjeto($objetoUpdate, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_DICIONARIO_DADOS_ASSOC_FIELD, true), LOG_MSG_UPDATE_DICIONARIO_DADOS_ASSOC_FIELD . "(id_assoctable = {$idAssocTable} | {$fieldname})", $versaoObjeto, $idPessoaAssocclPerfilDeactivate);
	}

	/**
	 * Ativa um campo
	 * 
	 * @param Integer $idPessoaAssocclPerfilActivate
	 * @param Integer $idAssocTable
	 * @param String $fieldname
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 22/05/2012
	 */
	public function ativaCampo($idPessoaAssocclPerfilActivate, $idAssocTable, $fieldname)
	{
		// recuperando o objeto schema
		$objetoUpdate = $this->_retornaObjetosPorParametros("id_table = {$idAssocTable} AND fieldname = '{$fieldname}'", null, 1, 0);

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
		return parent::_salvarObjeto($objetoUpdate, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_DICIONARIO_DADOS_ASSOC_FIELD, true), LOG_MSG_UPDATE_DICIONARIO_DADOS_ASSOC_FIELD . "(id_assoctable = {$idAssocTable} | {$fieldname})", $versaoObjeto, $idPessoaAssocclPerfilActivate);
	}

	/**
	 * Retorna o id de um campo atraves do id da tabela seu fieldname
	 * 
	 * @param Integer $idAssocTable
	 * @param String $fieldname
	 * 
	 * @return Integer|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 22/05/2012
	 */
	public function retornaIdFieldPorIdSchemaTablename($idAssocTable, $fieldname)
	{
		// verificando se nao foi passado o id da tabela ou nome do campo
		if (((!$idAssocTable) or (!is_int($idAssocTable))) or ((!$fieldname) or (!is_string($fieldname)))) {
			// retornando nulo
			return null;
		}

		// recuperando array com o resultado da recuperacao do id do campo
		$arrayResultado = $this->_retornaArrayDadosObjetosPorParametros("id_assoc_table = {$idAssocTable} and fieldname = '{$fieldname}'", null, 1, 0, array('id'));

		// verificando se nao houve recuperacao de resultado
		if (!count($arrayResultado)) {
			// retornando nulo
			return null;
		}

		// retornando o id do campo
		return (int) $arrayResultado[0]['id'];
	}
	
	/**
	 * Retorna o fieldname pelo id do field passado
	 * 
	 * @param Int $idField
	 * 
	 * @return String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 25/05/2012
	 */
	public function retornaFieldnamePorIdField($idField)
	{
		// recuperando dados do field
		$dadosField = $this->_retornaArrayDadosObjetosPorParametros("id = {$idField}", null, null, null, array('fieldname'));
		
		// verificando se os dados foram recuperados com sucesso
		if (count($dadosField) > 0) {
			// retornando fieldname
			return $dadosField[0]['fieldname'];
		}
		
		return null;
	}
	
	
	/**
	 * Retorna o dados do field por nome schema, nome tabela e nome campo
	 * 
	 * @param String $schema
	 * @param String $tabela
	 * @param String $campo
	 * 
	 * @return Array
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 27/05/2012
	 */
	public function retornaFieldnamePorIdFieldasas($schema, $tabela, $campo)
	{
		// recuperando dados do field
		$dadosField = Basico_OPController_DBUtilOPController::retornaArraySQLQuery("SELECT ");
		
		// verificando se os dados foram recuperados com sucesso
		if (count($dadosField) > 0) {
			// retornando fieldname
			return $dadosField[0]['fieldname'];
		}
		
		return null;
	}
}