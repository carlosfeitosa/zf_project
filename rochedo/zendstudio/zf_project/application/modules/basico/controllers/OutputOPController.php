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
	protected $_model;
	
	/**
	 * Nome da tabela basico.output
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.output';
	/**
	 * Nome do campo id da tabela basico.output
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Basico_OPController_OutputOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_OutputOPController
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