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
			
			// verificando se o componente nao zf e um decorator javascript
			if (strpos($nomeCategoriaComponenteNaoZF, 'COMPONENTE_DECORATOR_JAVASCRIPT') !== false) {
				// manipulando string para recuperar o nome da biblioteca
				$nomeCategoriaComponenteNaoZF = ucfirst(strtolower(str_replace('COMPONENTE_DECORATOR_JAVASCRIPT_', '', $nomeCategoriaComponenteNaoZF)));	
			}else{
				// manipulando string para recuperar o nome da biblioteca
				$nomeCategoriaComponenteNaoZF = ucfirst(strtolower(str_replace('COMPONENTE_', '', $nomeCategoriaComponenteNaoZF)));
			}
			
			// montando string do prefix path
			$prefixPath = array(COMPONENTE_NAO_ZF_PREFIX => "{$nomeCategoriaComponenteNaoZF}_Form", COMPONENTE_NAO_ZF_PATH => "{$nomeCategoriaComponenteNaoZF}/Form");

			// verificando se prefixpath ja foi adicionado
			if (array_search($prefixPath, $arrayRetorno) === false) {
				// preenchendo array de resultados com a string do prefixPath
				$arrayRetorno[] = $prefixPath;
			}	
		}

		// retornando array de resultados
		return $arrayRetorno;
	}

	/**
	 * Retorna o id da categoria de um componente
	 * 
	 * @param Integer $idComponente - id do componente que deseja recuperar a categoria
	 * 
	 * @return Integer|false - id da categoria ou false caso não encontre
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	public function retornaIdCategoriaComponentePorIdComponente($idComponente)
	{
		// verificando se foi passado o id do componente
		if ((!$idComponente) or (!is_int($idComponente))) {
			// retornando falso
			return false;
		}

		// recuperando array de dados
		$arrayIdCategoriaComponente = $this->_retornaArrayDadosObjetoPorId($idComponente, array('idCategoria'));

		// se retornou um objeto retorna o id da categoria
		if (is_array(($arrayIdCategoriaComponente))) {
			// retornando o id da categoria
			return (int) $arrayIdCategoriaComponente['idCategoria'];
		}

		return false;
	}

	/**
	 * Retorna um componente através de seu id
	 * 
	 * @param Integer $idComponente - id do componente que deseja recuperar
	 * 
	 * @return String - string contendo o componente
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 09/07/2012
	 */
	public function retornaComponentePorIdComponente($idComponente)
	{
		// verificando se foi passado o id do componente
		if ((!$idComponente) or (!is_int($idComponente))) {
			// retornando falso
			return false;
		}

		// recuperando array de dados
		$arrayComponenteComponente = $this->_retornaArrayDadosObjetoPorId($idComponente, array('componente'));

		// se retornou um objeto retorna o id da categoria
		if (is_array(($arrayComponenteComponente))) {
			// retornando o id da categoria
			return $arrayComponenteComponente['componente'];
		}

		return false;
	}

	/**
	 * Retorna um array contendo os componentes que estão contidos no array de ids de componentes
	 * 
	 * @param Array $arrayIdsComponentes - array contendo os ids dos componentes que deseja recuperar
	 * 
	 * @return Array|false - array contendo os componentes ou false caso não encontre
	 */
	public function retornaArrayComponentesPorArrayIdsComponentes(array $arrayIdsComponentes)
	{
		// inicializando variáveis
		$arrayRetorno = array();

		// verificando se o array contem elementos
		if (!count($arrayIdsComponentes)) {
			// retornando falso
			return false;
		}

		// transformando o array em string
		$stringIdsComponentes = implode(',', $arrayIdsComponentes);

		// recuperando array de dados
		$arrayDadosComponentes = $this->_retornaArrayDadosObjetosPorParametros("id IN ({$stringIdsComponentes})", null, null, null, array('id', 'componente'));

		// limpando memória
		unset($stringIdsComponentes);

		// verificando se o foi retornado o array
		if (is_array($arrayDadosComponentes) and (count($arrayDadosComponentes))) {
			// loop para montar o array de resposta
			foreach ($arrayDadosComponentes as $arrayDadoComponente) {
				// montando retorno
				$arrayRetorno[$arrayDadoComponente['id']] = $arrayDadoComponente['componente'];
			}
		}

		// retornando array de resultados
		return $arrayRetorno;
	}

	/**
	 * Retorna um array com os ids das categorias de componentes
	 * 
	 * @param Array $arrayIdsComponentes - id do componente que deseja recuperar a categoria
	 * 
	 * @return Array|false - array de ids das categorias ou false caso não encontre
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	public function retornaArrayIdsCategoriasCompoentesPorArrayIdsComponentes(array $arrayIdsComponentes)
	{
		// verificando se foi passado o id do componente
		if (!count($arrayIdsComponentes)) {
			// retornando falso
			return false;
		}

		// transformando o array em string
		$stringIdsComponentes = implode(',', $arrayIdsComponentes);

		// recuperando array de dados
		$arrayIdCategoriaComponente = $this->_retornaArrayDadosObjetosPorParametros("id in ({$stringIdsComponentes})", null, null, null, array('idCategoria'));

		// se retornou um objeto retorna o id da categoria
		if ((!is_array(($arrayIdCategoriaComponente))) or (!count($arrayIdCategoriaComponente))) {
			// retornando falso
			return false;
		}

		// inicializando variáveis
		$arrayRetorno = array();

		// loop para montar array de resultados
		foreach ($arrayIdCategoriaComponente as $arrayValor) {
			// adicionado elemento ao array de resultados
			$arrayRetorno[] = $arrayValor['idCategoria'];

			// limpando memória
			unset($arrayValor);
		}

		// limpando memória
		unset($arrayIdCategoriaComponente);

		// retornando array de resultados
		return $arrayRetorno;
	}
}