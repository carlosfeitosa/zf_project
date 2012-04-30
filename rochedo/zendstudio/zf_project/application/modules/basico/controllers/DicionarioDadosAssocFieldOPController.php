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
	 * @since 27/04/2012
	 */
	protected function initControllers()
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
	 * Salva o objeto DicionarioDadosAssocField no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_DicionarioDadosAssocField $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	protected function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_DicionarioDadosAssocField', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idDicionarioDadosAssocFieldLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_DICIONARIO_DADOS_ASSOC_FIELD, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_DICIONARIO_DADOS_ASSOC_FIELD;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idDicionarioDadosAssocFieldLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_DICIONARIO_DADOS_ASSOC_FIELD, true);
	    		$mensagemLog    = LOG_MSG_NOVO_DICIONARIO_DADOS_ASSOC_FIELD;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idDicionarioDadosAssocFieldLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}
	
     /**
	 * Apaga o objeto DicionarioDadosAssocField do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_DicionarioDadosAssocField $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	protected function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_DicionarioDadosAssocField', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idDicionarioDadosAssocFieldLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_DICIONARIO_DADOS_ASSOC_Field, true);
	    	$mensagemLog    = LOG_MSG_DELETE_DICIONARIO_DADOS_ASSOC_FIELD;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idDicionarioDadosAssocFieldLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Salva um novo campo no dicionario de dados
	 * 
	 * @param Integer $idPessoaAssocclPerfilCreate
	 * @param Integer $idAssocTable
	 * @param String $fieldname
	 * @param String $tipo
	 * @param Integer $tamanho
	 * @param Integer $precisao
	 * @param String $fkTabela
	 * @param String $fkCampo
	 * @param Boolean $indice
	 * @param Boolean $unique
	 * @param Boolean $nullable
	 * @param String $valorDefault
	 * @param Boolean $readonly
	 * @param String $constanteTextual
	 * @param String $checkConstraint
	 * @param String $constanteTextualDescricao
	 * @param String $constanteTextualAlias
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 27/04/2012
	 */
	public function criarNovoCampoAtivo($idPessoaAssocclPerfilCreate, $idAssocTable, $fieldname, $tipo, $tamanho, $precisao, $fkTabela, $fkCampo, $indice, $unique, $nullable, $valorDefault, $readonly, $constanteTextual, $checkConstraint = null, $constanteTextualDescricao = null, $constanteTextualAlias = null)
	{
		// instanciando modelo
		$this->initModel();

		// atribuindo valores aos atributos
		$this->_model->idAssocTable              = $idAssocTable;
		$this->_model->fieldname                 = $fieldname;
		$this->_model->constanteTextual          = $constanteTextual;
		$this->_model->constanteTextualDescricao = $constanteTextualDescricao;
		$this->_model->constanteTextualAlias     = $constanteTextualAlias;
		$this->_model->tipo          			 = $tipo;
		$this->_model->tamanho           		 = $tamanho;
		$this->_model->precisao           		 = $precisao;
		$this->_model->fkTabela           		 = $fkTabela;
		$this->_model->fkCampo           		 = $fkCampo;
		$this->_model->indice           		 = $indice;
		$this->_model->checkConstraint           = $checkConstraint;
		$this->_model->unique           		 = $unique;
		$this->_model->nullable           		 = $nullable;
		$this->_model->valorDefault           	 = $valorDefault;
		$this->_model->readonly           		 = $readonly;
		$this->_model->ativo                     = true;

		// retornando o resultado do metodo de salvar o objeto
		return $this->salvarObjeto($this->_model, null, $idPessoaAssocclPerfilCreate);
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
		$objetoAssocField = $this->retornaObjetosPorParametros("id_table = {$idTable} AND fieldname = '{$fieldname}'", null, 1, 0);

		// recuperando a versao do objeto
		$versaoObjeto = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objetoAssocField);

		// desativando o schema
		$objetoAssocField->ativo = false;

		// retornando o resultado do metodo de salvar o objeto
		return $this->salvarObjeto($objetoAssocField, $versaoObjeto, $idPessoaAssocclPerfilDeactivate);
	}
}