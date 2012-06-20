<?php
/**
 * Controlador Componente
 * 
 * Controlador responsável pelos componentes do sistema.
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_Componente
 * 
 * @since 21/03/2011
 */

class Basico_OPController_ComponenteOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_ComponenteOPController
	 */
	protected static $_singleton;

	/**
	 * @var Basico_Model_Componente
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.componente
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.componente';

	/**
	 * Nome do campo id da tabela basico.componente
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

    /**
     * Construtor do Controller
     * 
     * @return void
     */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_ComponenteOPController
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
	 * @since 03/05/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_ComponenteOPController
	 * 
	 * @return Basico_OPController_ComponenteOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ComponenteOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}    
	
	/**
	 * Retorna array contendo os prefixos e paths dos componentes nao ZF que devem ser adicionados em forms (addPrefixpath)
	 * 
	 * @param Array $arrayNomesCategoriasComponentesNaoZF
	 * 
	 * @return Array|null
	 */
	public static function retornaArrayPrefixPathComponentesNaoZF(array $arrayNomesCategoriasComponentesNaoZF)
	{
		// inicializando variveis
		$arrayRetorno = array();

		// verificando se o array possui elementos
		if (count($arrayNomesCategoriasComponentesNaoZF) <= 0)
			return null;

		// loop para preencher array de resultados
		foreach ($arrayNomesCategoriasComponentesNaoZF as $nomeCategoriaComponenteNaoZF) {
			
			// manipulando string para recuperar o nome da biblioteca
			$nomeCategoriaComponenteNaoZF = ucfirst(strtolower(str_replace('COMPONENTE_', '', $nomeCategoriaComponenteNaoZF)));
			
			// preenchendo array de resultados
			$arrayRetorno[] = array(COMPONENTE_NAO_ZF_PREFIX => "{$nomeCategoriaComponenteNaoZF}_Form", COMPONENTE_NAO_ZF_PATH => "{$nomeCategoriaComponenteNaoZF}/Form");
		}

		// retornando array de resultados
		return $arrayRetorno;
	}
}