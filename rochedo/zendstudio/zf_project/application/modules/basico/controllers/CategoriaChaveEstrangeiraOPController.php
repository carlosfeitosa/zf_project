<?php

/**
 * Controlador Categoria Chave Estrangeira
 *
 */

class Basico_OPController_CategoriaChaveEstrangeiraOPController
{
	/**
	 * @var Basico_OPController_CategoriaChaveEstrangeiraOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_CategoriaChaveEstrangeira
	 */
	private $_categoriaChaveEstrangeira;
	
    /**
     * Construtor do Controller
     * 
     * @return void
     */
	private function __construct()
	{
		// instanciando o modelo
		$this->_categoriaChaveEstrangeira = $this->retornaNovoObjetoCategoriaChaveEstrangeira();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_CategoriaChaveEstrangeira
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_CategoriaChaveEstrangeira
	 * 
	 * @return Basico_OPController_CategoriaChaveEstrangeiraOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_CategoriaChaveEstrangeiraOPController();
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
		$objsCategoriaChaveEstrangeira = $this->_categoriaChaveEstrangeira->fetchList("id_categoria not in ({$stringImplodidaArrayIdsCategoriasExclusao})");
		
		// loop para recuperar o nome das tabelas
		foreach($objsCategoriaChaveEstrangeira as $objCategoriaChaveEstrangeira) {
			// recupernado o nome das tabelas e colocando no array de resultados 
			$arrayNomeCampoTabelasCategoriaChaveEstrangeira[$objCategoriaChaveEstrangeira->tabelaEstrangeira] = $objCategoriaChaveEstrangeira->campoEstrangeiro;
		}

		// retornando o array de resultados
		return $arrayNomeCampoTabelasCategoriaChaveEstrangeira;
	}
	
	/**
	 * Retorna o objeto categoria chave estrangeira da categoria passada.
	 * 
	 * @param $idCategoria
	 * 
	 * @return Basico_Model_CategoriaChaveEstrangeira|null
	 */
	public function retornaObjetoCategoriaChaveEstrangeiraPorIdCategoria($idCategoria)
	{
		// recuperando todas as tuplas vinculadas a categoria passara por parametro
		$objCategoriaChaveEstrangeira = $this->_categoriaChaveEstrangeira->fetchList("id_categoria = {$idCategoria}");

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaChaveEstrangeira[0]))
			//retornando o objeto
			return $objCategoriaChaveEstrangeira[0];

		return null;
    }

    /**
     * Retorna um objeto categoria chave estrangeira vazio
     * 
     * @return Basico_Model_CategoriaChaveEstrangeira
     */
    public function retornaNovoObjetoCategoriaChaveEstrangeira()
    {
    	// retornando um modelo vazio
    	return new Basico_Model_CategoriaChaveEstrangeira();
    }

    /**
     * Retorna o objeto Categoria Chave Estrangeira relacionada a um objeto
     * 
     * @param Object $objeto
     * @param Boolean $forceCreateRelationship
     * 
     * @return Basico_Model_CategoriaChaveEstrangeira|null
     */
    public function retornaObjetoCategoriaChaveEstrangeiraCVC($objeto, $forceCreateRelationship = false)
    {
    	// instanciando controladores
    	$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();
    	
    	// recuperando o nome da tabela vinculada ao objeto
    	$tableName = Basico_OPController_DBUtilOPController::retornaTableNameObjeto($objeto);

		// recuperando o id da categoria CVC
		$idCategoriaCVC = $categoriaOPController->retornaIdCategoriaCVC();
	
		// recuperando a categoria chave estrangeira relacionada ao objeto
		$arrayCategoriasChaveEstrangeira = $this->_categoriaChaveEstrangeira->fetchList("id_categoria = {$idCategoriaCVC} and tabela_estrangeira = '{$tableName}'", null, 1, 0);
		
		// verificando se existe a relacao com categoria chave estrangeira
		if (isset($arrayCategoriasChaveEstrangeira[0])) {
			// retornando a relacao
			return $arrayCategoriasChaveEstrangeira[0];
		} else if ($forceCreateRelationship) {
			// instanciando controladores
			$rowinfoOPController = Basico_OPController_RowinfoOPController::getInstance();
			$moduloOPController  = Basico_OPController_ModuloOPController::getInstance();

			// recuperando modelo vazio de categoria chave estrangeira
			$modelCategoriaChaveEstrangeira = $this->retornaNovoObjetoCategoriaChaveEstrangeira();
			
			// recuperando objeto modulo do objeto
			$objModulo = $moduloOPController->retornaObjetoModuloPorNome(Basico_OPController_UtilOPController::retornaNomeModuloPorObjeto($objeto));

			// cria relacao caso o haja o parametro para criacao de relacao
			$modelCategoriaChaveEstrangeira->categoria = $idCategoriaCVC;
			$modelCategoriaChaveEstrangeira->modulo = $objModulo->id;
			$modelCategoriaChaveEstrangeira->tabelaEstrangeira = $tableName;
			$modelCategoriaChaveEstrangeira->campoEstrangeiro = Basico_OPController_DBUtilOPController::retornaPrimaryKeyObjeto($objeto);
			
			// preparando XML rowinfo
			$rowinfoOPController->prepareXml($modelCategoriaChaveEstrangeira, true);
			$modelCategoriaChaveEstrangeira->rowinfo = $rowinfoOPController->getXml();
			
			// iniciando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao();
			
			try {
				// salvando objeto
				$modelCategoriaChaveEstrangeira->getMapper()->save($modelCategoriaChaveEstrangeira);
				// salvando log
				Basico_OPController_LogOPController::getInstance()->salvarLog(Basico_OPController_PessoaPerfilOPController::getInstance()->retornaIdPessoaPerfilSistema(), Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogCategoriaChaveEstrangeira(), LOG_MSG_CATEGORIA_CHAVE_ESTRANGEIRA);
				
				// salvando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
			} catch (Exception $e) {
				
				// cancelando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
				
				throw new Exception(MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_CRIAR_RELACAO . QUEBRA_DE_LINHA . $e->getMessage());
			}

			return $modelCategoriaChaveEstrangeira;
		} else {
			return null;
		}
    }
}