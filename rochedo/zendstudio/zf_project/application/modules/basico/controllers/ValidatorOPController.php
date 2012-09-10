<?php
/**
 * Controlador Basico_OPController_FormularioElementoValidatorOPController.
 * 
 * Responsável pelos FormularioElementoValidador do sistema
 *
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_FormularioElementoValidador
 * 
 * @since 21/03/2011
 * 
 */
class Basico_OPController_ValidatorOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioElementoValidatorOPController
	 * @var Basico_OPController_FormularioElementoValidatorOPController
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo FormularioElementoValidador.
	 * @var Basico_Model_FormularioElementoValidador
	 */
	protected $_model;

	/**
	 * Nome da tabela
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.validator';
	
	/**
	 * Nome do campo id da tabela
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador FormularioElementoValidador.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioElementoValidatorOPController
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
	 * @since 11/07/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador FormularioElementoValidador.
	 * 
	 * @return Basico_FormularioElementoValidadorController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ValidatorOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna o id do componente do validator pelo id passado como parametro
	 * 
	 * @param Int $idValidator - id do validator que tera os dados retornados
	 * 
	 * @return Array|null - array se encontrar o validator ou null se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	public function retornaIdComponenteValidatorPorIdValidator($idValidator)
	{
		// recuperando o id componente do validator
		$arrayDadosValidator = $this->_retornaArrayDadosObjetoPorId($idValidator, array('idComponente'));
		
		// verificando se a ajuda foi encontrada
		if (is_array($arrayDadosValidator)) {
			// retornando o id do componente do validator
			return $arrayDadosValidator['idComponente'];
		}
		
		return null;
	}
	
	/**
	 * Retorna os attribs do validator pelo id passado como parametro
	 * 
	 * @param Int $idValidator - id do validator que tera os attribs retornados
	 * 
	 * @return String|null - attribs do validator
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	public function retornaAttribsValidatorPorIdValidator($idValidator)
	{
		// recuperando o id componente do validator
		$arrayDadosValidator = $this->_retornaArrayDadosObjetoPorId($idValidator, array('attribs'));
		
		// verificando se o validator foi encontrada
		if (is_array($arrayDadosValidator)) {
			// retornando attribs do validator
			return $arrayDadosValidator['attribs'];
		}
		
		return null;
	}
	
	/**
	 * Retorna um array com os validators defaults e especializacao (exclude e include) do elemento 
	 * atraves do id do elemento e do id da associacao do elemento com o formulario
	 * 
	 * @param int $idElemento - id do elemento do formulario
	 * @param int $idAssocclElemento - id da associacao entre o elemento e o formulario
	 * 
	 * @return Array
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	public function retornaArrayDadosValidatorsElemento($idElemento, $idAssocclElemento)
	{
		// recuperando validators includes default do elemento
    	$arrayDadosValidators['default'] = Basico_OPController_FormularioElementoAssocclValidatorOPController::getInstance()->retornaArrayDadosValidatorsDefaultPorIdElemento($idElemento);
    	
    	// recuperando os validators da especializacao do elemento no formulario
    	$arrayDadosValidators['especializacao'] = Basico_OPController_FormularioAssocclElementoAssocclValidatorOPController::getInstance()->retornaArrayDadosValidatorsEspecializacaoPorIdAssocclElemento($idAssocclElemento);

    	// retornando array com os validators do elemento
    	return $arrayDadosValidators;
    	
	}
}