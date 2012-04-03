<?php
/**
 * Controlador Output
 * 
 * Controlador responsavel pelos formatos de saida de dados do sistema
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_OutputOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Output
	 * @var Basico_OPController_OutputOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Output.
	 * @var Basico_Model_Output
	 */
	private $_model;
	
	/**
	 * Construtor do Controlador Basico_OPController_OutputOPController.
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
	 * Inicializa o controlador Basico_OPController_OutputOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador Output.
	 * 
	 * @return Basico_OPController_OutputOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_OutputOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Salva o objeto output no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Output $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Output', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_OUTPUT, true);
	    		$mensagemLog = LOG_MSG_UPDATE_OUTPUT;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_OUTPUT, true);
	    		$mensagemLog = LOG_MSG_NOVO_OUTPUT;
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
	 * Apaga o objeto output do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Output $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Output', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_OUTPUT, true);
	    	$mensagemLog    = LOG_MSG_DELETE_OUTPUT;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Retorna o nome do output conforme o contexto da view
	 * 
	 * @param String $contexto
	 * 
	 * @return String
	 */
	public static function retornaOutputViaContextoView($contexto)
	{
		// verificando o contexto
		switch ($contexto) {
			case 'ajax':
				return OUTPUT_AJAX ;
				break;
			case 'null':
				return OUTPUT_DOJO;
				break;
			default:
				return OUTPUT_DOJO;
		}
	}

	/**
	 * Verifica se um determinado formulário possui algum template com output ajax
	 * 
	 * @param String $nomeFormulario
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function verificaFormularioTemplateOutputAjaxViaSQL($nomeFormulario)
	{
		// verificando se foi passado o nome do formulário
		if (!$nomeFormulario) 
			return false;

		// recuperando valores
		$outputAjax = FORM_GERADOR_OUTPUT_AJAX;

		// montando query
		$queryResultado = "SELECT o.id
						   FROM basico.formulario f
						   LEFT JOIN basico_formulario.assoccl_template fat ON (f.id = fat.id_formulario)
						   LEFT JOIN basico_template.assoccl_output tao ON (fat.id_template = tao.id_template)
						   LEFT JOIN basico.output o ON (tao.id_output = o.id)
						   WHERE o.nome = '{$outputAjax}'
						   AND f.form_name = '{$nomeFormulario}'";

		// executando query e recuperando o resultados em um array
		$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryResultado);

		// retornando se houve resultado
		return (count($arrayResultado) > 0);
	}
}