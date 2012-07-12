<?php
/**
 * Controlador FormularioElementoFormularioElementoFilter.
 * 
 * Responsável pela associacao dos elementos em formularios com os filters
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 *
 * @uses Basico_Model_FormularioAssocclElementoAssocclFilter
 * 
 * @since 05/07/2012
 */
class Basico_OPController_FormularioAssocclElementoAssocclFilterOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioAssocclElementoAssocclFilterOPController
	 * @var Basico_OPController_FormularioAssocclElementoAssocclFilterOPController
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo Formulario.
	 * @var Basico_Model_FormularioAssocclElementoAssocclFilter
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_form_assoccl_elemento.assoccl_filter
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_form_assoccl_elemento.assoccl_filter';

	/**
	 * Nome do campo id da tabela basico_form_assoccl_elemento.assoccl_filter
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioAssocclElementoAssocclFilterOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioAssocclElementoAssocclFilterOPController
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
	 * Retorna instância do Controlador Basico_OPController_FormularioAssocclElementoAssocclFilterOPController.
	 * 
	 * @return Basico_OPController_FormularioAssocclElementoAssocclFilterOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioAssocclElementoAssocclFilterOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna os dados dos filters da especializacao do elemento pelo id do elemento passado como parametro
	 * 
	 * @param Int $idAssocclElemento - id do assoccl elemento que tera os dados dos filters retornados
	 * @param Int $idElemento - id do elemento para auxiliar na montagem do array de retorno
	 * 
	 * @return Array|null - array se encontrar filters para o assoccl elemento ou null se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 12/07/2012
	 */
	public function retornaArrayDadosFiltersEspecializacaoOrdenadoPorOrdemPorIdElemento($idAssocclElemento, $idElemento)
	{
		// recuperando constanteTextualAjuda
		$arrayDadosFiltersElemento = $this->_retornaArrayDadosObjetosPorParametros("id_assoccl_elemento = {$idAssocclElemento}", 'ordem', null, null, array('idAssocclElemento', 'idFilter', 'idFilterGrupo', 'removeFlag', 'ordem'));
		
		// verificando se a ajuda foi encontrada
		if (count($arrayDadosFiltersElemento)) {
			
			// colocando o id do elemento como chave do array para facilitar manipulação
			foreach ($arrayDadosFiltersElemento as $arrayFilterElemento) {
				// criando novo array utilizando o idElemento como chave
				$arrayResultado[$arrayFilterElemento['idElemento']] = $arrayFilterElemento;
			}
			
			// retornando array com os dados do filter
			return $arrayResultado;
		}
		
		return null;
	}
}