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
class Basico_OPController_CategoriaChaveEstrangeiraOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_CategoriaChaveEstrangeiraOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_CategoriaChaveEstrangeira
	 */
	private $_model;
	
    /**
     * Construtor do Controller
     * 
     * @return void
     */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador Basico_OPController_CategoriaChaveEstrangeiraOPController
		$this->init();
	}
	
	/**
	 * Inicializa o controlador Basico_CategoriaChaveEstrangeira
	 * 
	 * @return void
	 */
	protected function init()
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
	 * Salva o objeto dados biometricos no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_CategoriaChaveEstrangeira $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_CategoriaChaveEstrangeira', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaPerfilOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    		// verificando se trata-se de uma nova tupla
		    	if ($objeto->id == NULL) {
		       		// carregando informacoes de log de novo registro
		    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogCategoriaChaveEstrangeira();
		    		$mensagemLog    = LOG_MSG_NOVA_CATEGORIA_CHAVE_ESTRANGEIRA;
   					
		    		// salvando o objeto através do controlador Save
			    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);
			    	
			    	// atualizando o objeto
		    		$this->_model = $objeto;
		    	}else{
                	throw new Exception(MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_CRIAR_RELACAO_EXISTE . " : " . $e->getMessage());	    		
		    	}    	
    	} catch (Exception $e) {
    		throw new Exception($e);
    	}
	}

	/**
	 * Apaga o objeto categoria chave estrangeira do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_CategoriaChaveEstrangeira $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
	       throw new Exception(LOG_MSG_DELETE_CATEGORIA_CHAVE_ESTRANGEIRA . " : " . $e->getMessage());	
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
			$modelCategoriaChaveEstrangeira = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
			
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
			
			// salvando objeto
			$this->salvarObjeto($modelCategoriaChaveEstrangeira);
			
			// retornando o objeto salvo 	
			return $modelCategoriaChaveEstrangeira;
		} else {
			return null;
		}
    }
}