<?php
/**
 * Controlador FormularioElementoFormularioElementoValidador.
 * 
 * Responsável pelos FormularioElementoFormularioElementoValidator
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 *
 * @uses Basico_Model_FormularioElementoFormularioElementoValidator
 * 
 * @since 21/03/2011
 */
class Basico_OPController_FormularioAssocclElementoAssocclValidatorOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioAssocclElementoAssocclValidatorOPController
	 * @var Basico_OPController_FormularioAssocclElementoAssocclValidatorOPController
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo Formulario.
	 * @var Basico_Model_FormularioAssocclElementoAssocclValidator
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_form_assoccl_elemento.assoccl_validator
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_form_assoccl_elemento.assoccl_validator';

	/**
	 * Nome do campo id da tabela basico_form_assoccl_elemento.assoccl_validator
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioAssocclElementoAssocclValidatorOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioAssocclElementoAssocclValidatorOPController
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
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 09/05/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador Basico_OPController_FormularioAssocclElementoAssocclValidatorOPController.
	 * 
	 * @return Basico_OPController_FormularioAssocclElementoAssocclValidatorOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioAssocclElementoAssocclValidatorOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna os dados dos validators da especializacao do elemento pelo id da associacao do elemento com o formulario e o id do elemento passado como parametro
	 * 
	 * @param Int $idAssocclElemento - id do assoccl elemento que tera os dados dos filters retornados
	 * 
	 * @return Array - array com validators da especialização do elemento ou um array vazio se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	public function retornaArrayDadosValidatorsEspecializacaoPorIdAssocclElemento($idAssocclElemento)
	{
		// recuperando dados da especializacao dos validators do elemento no formulario
		$arrayDadosValidatorsElemento = $this->_retornaArrayDadosObjetosPorParametros("id_assoccl_elemento = {$idAssocclElemento}", null, null, null, array('idValidator', 'idValidatorGrupo', 'options', 'removeFlag'));
		
		// verificando se foram encontrados validators 
		if (count($arrayDadosValidatorsElemento)) {
		 	// retornando validators encontrados
			return $arrayDadosValidatorsElemento;
		}
		
		// retornando array vazio se não for encontrado nenhum validator
		return array();
	}
}