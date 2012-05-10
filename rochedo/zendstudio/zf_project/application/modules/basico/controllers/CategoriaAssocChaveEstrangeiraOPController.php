<?php
/**
 * Controlador Categoria Chave Estrangeira
 * 
 * Controlador responsavel pelas categorias das chaves estrangeiras
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_CategoriaAssocChaveEstrangeiraOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do controlador Basico_OPController_CategoriaAssocChaveEstrangeiraOPController.
	 * @var Basico_OPController_CategoriaAssocChaveEstrangeiraOPController
	 */
	private static $_singleton;
	/**
	 * Instância do modelo Basico_Model_CategoriaAssocChaveEstrangeira
	 * @var Basico_Model_CategoriaAssocChaveEstrangeira
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_categoria.assoc_chave_estrangeira
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_categoria.assoc_chave_estrangeira';
	
	/**
	 * Nome do campo id da tabela basico_categoria.assoc_chave_estrangeira
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * @var Basico_OPController_CategoriaOPController
	 */
	private $_categoriaOPController;

	/**
	 * @var Basico_OPController_ModuloOPController
	 */
	private $_moduloOPController;
	
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
	 * Inicializa o controlador Basico_CategoriaAssocChaveEstrangeira
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
		// instanciando o controlador de categorias
		$this->_categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();

		// instanciando o controlador de módulos
		$this->_moduloOPController = Basico_OPController_ModuloOPController::getInstance();

		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_CategoriaAssocChaveEstrangeira
	 * 
	 * @return Basico_OPController_CategoriaAssocChaveEstrangeiraOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_CategoriaAssocChaveEstrangeiraOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um array contendo todas as tabelas relacionadas com categoria chave estrangeira.
	 * A chave do array contem o nome da tabela e o valor contem o nome do campo
	 * 
	 * @param Array $arrayIdsCategoriasExclusao
	 * 
	 * @return Array
	 */
	public function retornaArrayNomeCampoTabelasCategoriaChaveEstrangeira(array $arrayIdsCategoriasExclusao)
	{
		// inicializando variaveis
		$arrayNomeCampoTabelasCategoriaChaveEstrangeira = array();
		$stringImplodidaArrayIdsCategoriasExclusao = implode(',', $arrayIdsCategoriasExclusao);

		// recuperando todas as tuplas, excluindo as que possuem a categoria no array de exclusao passado por parametro
		$objsCategoriaChaveEstrangeira = $this->retornaObjetosPorParametros("id_categoria not in ({$stringImplodidaArrayIdsCategoriasExclusao})");
		
		// loop para recuperar o nome das tabelas
		foreach($objsCategoriaChaveEstrangeira as $objCategoriaChaveEstrangeira) {
			// recupernado o nome das tabelas e colocando no array de resultados 
			$arrayNomeCampoTabelasCategoriaChaveEstrangeira[$objCategoriaChaveEstrangeira->tabelaEstrangeira] = $objCategoriaChaveEstrangeira->campoEstrangeiro;
		}

		// retornando o array de resultados
		return $arrayNomeCampoTabelasCategoriaChaveEstrangeira;
	}
	
    /**
     * Retorna o objeto Categoria Chave Estrangeira relacionada a um objeto
     * 
     * @param Object $objeto
     * @param Boolean $forceCreateRelationship
     * 
     * @return Basico_Model_CategoriaAssocChaveEstrangeira|null
     */
    public function retornaObjetoCategoriaChaveEstrangeiraCVC($objeto, $forceCreateRelationship = false)
    {
    	// recuperando o nome da tabela vinculada ao objeto
    	$tableName = Basico_OPController_DBUtilOPController::retornaTableNameObjeto($objeto);

		// recuperando objeto modulo do objeto
		$idModulo = $this->_moduloOPController->retornaIdModuloPorNomeViaSQL(Basico_OPController_UtilOPController::retornaNomeModuloPorObjeto($objeto));
	
		// recuperando a categoria chave estrangeira relacionada ao objeto
		$arrayCategoriasChaveEstrangeira = $this->_model->getMapper()->fetchList("id_modulo = {$idModulo} and id_categoria = {$this->_categoriaOPController->idCategoriaCVC} and tabela_estrangeira = '{$tableName}'", null, 1, 0);
		
		// verificando se existe a relacao com categoria chave estrangeira
		if (isset($arrayCategoriasChaveEstrangeira[0])) {
			// recuperando a relacao
			$objetoCategoriaChaveEstrangeira = $arrayCategoriasChaveEstrangeira[0];

			// limpando variáveis
			unset($arrayCategoriasChaveEstrangeira);

			// retornando a relacao
			return $objetoCategoriaChaveEstrangeira;
		} else if ($forceCreateRelationship) {
			// recuperando modelo vazio de categoria chave estrangeira
			$modelCategoriaChaveEstrangeira = $this->retornaNovoObjetoModelo();
			
			// cria relacao caso o haja o parametro para criacao de relacao
			$modelCategoriaChaveEstrangeira->idCategoria = $this->_categoriaOPController->idCategoriaCVC;
			$modelCategoriaChaveEstrangeira->idModulo = $idModulo;
			$modelCategoriaChaveEstrangeira->tabelaEstrangeira = $tableName;
			$modelCategoriaChaveEstrangeira->campoEstrangeiro = Basico_OPController_DBUtilOPController::retornaPrimaryKeyObjeto($objeto);
			
			// salvando objeto
			parent::salvarObjeto($modelCategoriaChaveEstrangeira, Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL(LOG_CATEGORIA_CHAVE_ESTRANGEIRA), LOG_MSG_CATEGORIA_CHAVE_ESTRANGEIRA);

			// limpando variáveis
			unset($tableName);
			unset($idModulo);
			unset($arrayCategoriasChaveEstrangeira);

			// retornando o objeto salvo 	
			return $modelCategoriaChaveEstrangeira;
		} else {
			return null;
		}
    }
    
	/**
     * Retorna o objeto Categoria Chave Estrangeira relacionada a um objeto, podendo forçar a criacao da mesma se ela não existir
     * 
     * @param Object $objeto
     * @param Boolean $forceCreateRelationship
     * 
     * @return Basico_Model_CategoriaAssocChaveEstrangeira|null
     */
    public function retornaObjetoCategoriaChaveEstrangeiraPorModeloIdCategoria($objeto, $idCategoria, $forceCreateRelationship = false)
    {
    	// recuperando o nome da tabela vinculada ao objeto
    	$tableName = Basico_OPController_DBUtilOPController::retornaTableNameObjeto($objeto);

		// recuperando objeto modulo do objeto
		$idModulo = $this->_moduloOPController->retornaIdModuloPorNomeViaSQL(Basico_OPController_UtilOPController::retornaNomeModuloPorObjeto($objeto));
	
		// recuperando a categoria chave estrangeira relacionada ao objeto
		$arrayCategoriasChaveEstrangeira = $this->_model->getMapper()->fetchList("id_modulo = {$idModulo} and id_categoria = {$idCategoria} and tabela_estrangeira = '{$tableName}'", null, 1, 0);
		
		// verificando se existe a relacao com categoria chave estrangeira
		if (isset($arrayCategoriasChaveEstrangeira[0])) {
			// retornando a relacao
			return $arrayCategoriasChaveEstrangeira[0];
		} else if ($forceCreateRelationship) {
			// recuperando modelo vazio de categoria chave estrangeira
			$modelCategoriaChaveEstrangeira = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
			
			// cria relacao caso o haja o parametro para criacao de relacao
			$modelCategoriaChaveEstrangeira->idCategoria = $idCategoria;
			$modelCategoriaChaveEstrangeira->idModulo = $idModulo;
			$modelCategoriaChaveEstrangeira->tabelaEstrangeira = $tableName;
			$modelCategoriaChaveEstrangeira->campoEstrangeiro = Basico_OPController_DBUtilOPController::retornaPrimaryKeyObjeto($objeto);
			
			// salvando objeto
			parent::salvarObjeto($modelCategoriaChaveEstrangeira, Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL(LOG_CATEGORIA_CHAVE_ESTRANGEIRA), LOG_MSG_CATEGORIA_CHAVE_ESTRANGEIRA);
			
			// retornando o objeto salvo 	
			return $modelCategoriaChaveEstrangeira;
		} else {
			return null;
		}
    }

	/**
	 * Retorna o objeto categoria chave estrangeira da categoria passada.
	 * 
	 * @param $idCategoria
	 * 
	 * @return Basico_Model_CategoriaAssocChaveEstrangeira|null
	 */
	public function retornaObjetoCategoriaChaveEstrangeiraPorIdCategoria($idCategoria)
	{
		// recuperando todas as tuplas vinculadas a categoria passara por parametro
		$objCategoriaChaveEstrangeira = $this->retornaObjetosPorParametros("id_categoria = {$idCategoria}");

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaChaveEstrangeira[0]))
			//retornando o objeto
			return $objCategoriaChaveEstrangeira[0];

		return null;
    }
}