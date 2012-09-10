<?php
/**
 * Controlador FormularioDecorator
 * 
 * Controlador responsavel pelos decorators de FormularioDecorators do sistema
 * 
 * @package Basico_Model_FormularioDecorator
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
 * @since 05/07/2012
 */
class Basico_OPController_FormularioDecoratorOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador FormularioDecorator
	 * @var Basico_OPController_FormularioDecoratorOPController object
	 */
	protected static $_singleton;

	/**
	 * Instância do Modelo FormularioDecorator.
	 * @var Basico_Model_FormularioDecorator
	 */
	protected $_model;
	
	/**
	 * Nome da tabela
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario.decorator';

	/**
	 * Nome do campo id da tabela
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Controlador de componentes
	 * 
	 * @var Basico_OPController_ComponenteOPController object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 09/07/2012
	 */
	protected $_componenteOPController;

	/**
	 * Construtor do Controlador Basico_OPController_FormularioDecoratorOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioDecoratorOPController
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
		// inicializando controladores utilizados por este controlador
		$this->_componenteOPController = Basico_OPController_ComponenteOPController::getInstance();

		return;
	}
	
	/**
	 * Retorna instância do Controlador FormularioDecorator.
	 * 
	 * @return Basico_OPController_FormularioDecoratorOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioDecoratorOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um array contendo os dados necessários para montagem de um decorator através de ids passados por parametros
	 * 
	 * @param Array $arrayIdsDecorators - array contendo os ids dos decorators que deseja recuperar os dados para montagem
	 * 
	 * @return Array - array contendo os dados para montagem dos decorators ou um array vazio se não encontrar decorators
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	public function retornaArrayDadosMontagemDecoratorsPorArrayIdsDecorators(array $arrayIdsDecorators)
	{
		// inicializando variaveis
		$arrayResultado = array();

		// verificando se foram passados ids para recuperação
		if (!count($arrayIdsDecorators)) {
			// retornando falso
			return false;
		}

		// recuperando os componentes dos decorators
		$arrayIdsComponentesDecorators = $this->retornaArrayIdsComponentesDecoratorsPorArrayIdsDecorators($arrayIdsDecorators);
		
		// recuperando dados dos componentes dos decorators
		$arrayDadosComponentes = $this->_componenteOPController->retornaArrayComponentesPorArrayIdsComponentes($arrayIdsComponentesDecorators);

		// transformando o array de ids em string
		$stringIdsDecorators = implode(',', $arrayIdsDecorators);

		// recuperando os dados dos decorators
		$arrayDadosDecorators = $this->_retornaArrayDadosObjetosPorParametros("id IN ({$stringIdsDecorators})", null, null, null, array('id', 'alias', 'attribs'));

		// re-organizando o array para colocar o id do decorator como chave
		foreach ($arrayDadosDecorators as $arrayDadosDecorator) {
			// re-organizando array
			$arrayResultado[$arrayDadosDecorator['id']] = array('alias' => $arrayDadosDecorator['alias'], 'attribs' => $arrayDadosDecorator['attribs'], 'componente' => $arrayDadosComponentes[$arrayIdsComponentesDecorators[$arrayDadosDecorator['id']]]);

			// limpando memoria
			unset($arrayDadosDecorator);
		}

		// retornando resultado
		return $arrayResultado;	
	}

	/**
	 * Retorna os ids dos componentes associados aos decorators passados por parametro
	 * 
	 * @param array $arrayIdsDecorators - array contendo os ids dos decorators que se deseja recuperar os ids dos componentes
	 * 
	 * @return array|false - array contendo os ids dos componentes associados aos decorators como valor e ids dos decorators como chaves ou false se não conseguir recuperar
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	public function retornaArrayIdsComponentesDecoratorsPorArrayIdsDecorators(array $arrayIdsDecorators)
	{
		// inicializando variáveis
		$arrayRetorno = array();

		// verificando se foram passados ids para recuperação
		if (!count($arrayIdsDecorators)) {
			// retornando falso
			return false;
		}

		// transformando o array em string
		$stringIdsDecorators = implode(',', $arrayIdsDecorators);

		// recuperando array de resultados
		$arrayIdsComponentesDecorators = $this->_retornaArrayDadosObjetosPorParametros("id IN ({$stringIdsDecorators})", null, null, null, array('id', 'idComponente'));

		// limpando memória
		unset($stringIdsDecorators);

		// verificando o resultado da recuperação
		if (!count($arrayIdsComponentesDecorators)) {
			// retornando falso
			return false;
		}

		// loop para recuperar os ids
		foreach ($arrayIdsComponentesDecorators as $arrayDados) {
			// adicionando elementos ao resultado
			$arrayRetorno[$arrayDados['id']] = $arrayDados['idComponente'];

			// limpando memória
			unset($arrayDados);
		}

		// limpando memória
		unset($arrayIdsComponentesDecorators);

		// retornando array de resultados
		return $arrayRetorno;
	}
	
	/**
	 * Retorna o id do componente do decorator pelo id passado como parametro
	 * 
	 * @param Int $idDecorator - id do decorator que tera os dados retornados
	 * 
	 * @return Array|null - array se encontrar o decorator ou null se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	public function retornaIdComponenteDecoratorPorIdDecorator($idDecorator)
	{
		// recuperando o id componente do decorator
		$arrayDadosDecorator = $this->_retornaArrayDadosObjetoPorId($idDecorator, array('idComponente'));
		
		// verificando se o decorator foi encontrado
		if (is_array($arrayDadosDecorator)) {
			// retornando o id do componente do decorator
			return $arrayDadosDecorator['idComponente'];
		}
		
		return null;
	}
	
	/**
	 * Retorna os attribs do decorator pelo id passado como parametro
	 * 
	 * @param Int $idDecorator - id do decorator que tera os attribs retornados
	 * 
	 * @return String|null - attribs do decorator
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	public function retornaAttribsDecoratorPorIdDecorator($idDecorator)
	{
		// recuperando o id componente do decorator
		$arrayDadosDecorator = $this->_retornaArrayDadosObjetoPorId($idDecorator, array('attribs'));
		
		// verificando se o decorator foi encontrado
		if (is_array($arrayDadosDecorator)) {
			// retornando os attribs do decorator
			return $arrayDadosDecorator['attribs'];
		}
		
		return null;
	}
	
	/**
	 * Retorna um array com os decorators defaults e especializacao (exclude e include) do elemento 
	 * atraves do id do elemento e do id da associacao do elemento com o formulario
	 * 
	 * @param int $idElemento - id do elemento do formulario
	 * @param int $idAssocclElemento - id da associacao entre o elemento e o formulario
	 * 
	 * @return Array
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 27/08/2012
	 */
	public function retornaArrayDadosDecoratorsElemento($idElemento, $idAssocclElemento)
	{
		// recuperando decorators includes default do elemento
    	$arrayDadosDecorators['default'] = Basico_OPController_FormularioElementoAssocclDecoratorOPController::getInstance()->retornaArrayDadosDecoratorsDefaultOrdenadoPorOrdemPorIdElemento($idElemento);
    	
    	// recuperando os decorators da especializacao do elemento no formulario
    	$arrayDadosDecorators['especializacao'] = Basico_OPController_FormularioAssocclElementoAssocclDecoratorOPController::getInstance()->retornaArrayDadosDecoratorsEspecializacaoOrdenadoPorOrdemPorIdElemento($idAssocclElemento);

    	// retornando array com os decorators do elemento
    	return $arrayDadosDecorators;
    	
	}
}