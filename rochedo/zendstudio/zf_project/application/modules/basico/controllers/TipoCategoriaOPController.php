<?php
/**
 * Controlador TipoCategoria
 * 
 * Controla os tipos das categorias do sistema
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_TipoCategoria
 * 
 * @since 23/03/2011
 * 
 */

class Basico_OPController_TipoCategoriaOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do controlador Basico_OPController_TipoCategoriaOPController.
	 * @var Basico_OPController_TipoCategoriaOPController
	 */
	private static $_singleton;
	/**
	 * Instância do modelo Basico_Model_TipoCategoria
	 * @var Basico_Model_TipoCategoria
	 */
	protected $_model;

	/**
	 * Nome da tabela tipo categoria
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.tipo_categoria';

	/**
	 * Nome do campo id da tabela tipo categoria
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * 
	 * @var Basico_Model_Categoria object
	 */
	public $idTipoCategoriaCVC;

	/**
	 * Carrega a variavel tipo categoria com um novo objeto Basico_Model_TipoCategoria
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_TipoCategoriaOPController 
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();

		// recuperando o id do tipo categoria CVC
		$this->idTipoCategoriaCVC = self::retornaIdTipoCategoriaCVCViaSQL();

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
	 * Recupera a instancia do controlador Basico_OPController_TipoCategoriaOPController
	 * 
	 * @return Basico_OPController_TipoCategoriaOPController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_TipoCategoriaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
    /**
	 * Salva o objeto TipoCategoria no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_TipoCategoria $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_TipoCategoria', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_TIPO_CATEGORIA, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_TIPO_CATEGORIA;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_TIPO_CATEGORIA, true);
	    		$mensagemLog    = LOG_MSG_NOVO_TIPO_CATEGORIA;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}
	
     /**
	 * Apaga o objeto TipoCategoria do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_TipoCategoria $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_TipoCategoria', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_TIPO_CATEGORIA, true);
	    	$mensagemLog    = LOG_MSG_DELETE_TIPO_CATEGORIA;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Retorna o id de tipo categoria para um nome de tipo categoria passado por parametro
	 * 
	 * @param String $nomeTipoCategoria
	 * 
	 * @return Integer|null
	 */
	public function retornaIdTipoCategoriaPorNome($nomeTipoCategoria)
	{
		// recuperando os objetos tipo categoria
		$objsTipoCategoria = $this->retornaObjetosPorParametros("nome = '{$nomeTipoCategoria}'", null, 1, 0);

		// verificando se o objeto foi recuperado
		if (isset($objsTipoCategoria[0]))
			return $objsTipoCategoria[0]->id;

		return null;
	}

	/**
	 * Retorna o id de tipo categoria para um nome de tipo categoria passado por parametro, via SQL
	 * 
	 * @param String $nomeTipoCategoria
	 * 
	 * @return Integer|null
	 */
	private static function retornaIdTipoCategoriaPorNomeViaSQL($nomeTipoCategoria)
	{
		// recuperando informacoes sobre o tipo categoria
		$arrayNomeCampoIdTipoCategoria = array(self::nomeCampoIdModelo);
		$condicaoSQL                   = "nome = '{$nomeTipoCategoria}'";

		// recuperando array contendo o id do tipo categoria cujo nome foi passado por parametro
		$arrayIdTipoCategoria = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoIdTipoCategoria, $condicaoSQL);

		// verificando se a consulta obteve resultados
		if ((isset($arrayIdTipoCategoria)) and (is_array($arrayIdTipoCategoria)) and (count($arrayIdTipoCategoria) > 0)) {
			// retornando o id do tipo categoria
			return (int) $arrayIdTipoCategoria[0][self::nomeCampoIdModelo];
		}

		return null;
	}

	/**
	 * Retorna o id do tipo categoria LINGUAGEM
	 * 
	 * @return Integer|null
	 */
	public function retornaIdTipoCategoriaLinguagem()
	{
		// invocando o metodo que recupera o id do tipo categoria por nome
		return $this->retornaIdTipoCategoriaPorNome(TIPO_CATEGORIA_LINGUAGEM);
	}

	/**
	 * Retorna o id do tipo categoria SISTEMA
	 * 
	 * @return Integer|null
	 */
	public function retornaIdTipoCategoriaSistema()
	{
		// invocando o metodo que recupera o id do tipo categoria por nome
		return $this->retornaIdTipoCategoriaPorNome(TIPO_CATEGORIA_SISTEMA);
	}

	/**
	 * Retorna o id do tipo categoria SISTEMA, via SQL
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdTipoCategoriaSistemaViaSQL()
	{
		// invocando o metodo que recupera o id do tipo categoria por nome
		return self::retornaIdTipoCategoriaPorNomeViaSQL(TIPO_CATEGORIA_SISTEMA);
	}

	/**
	 * Retorna o id do tipo categoria PERFIL
	 * 
	 * @return Integer|null
	 */
	public function retornaIdTipoCategoriaPerfil()
	{
		// invocando o metodo que recupera o id do tipo categoria por nome
		return $this->retornaIdTipoCategoriaPorNome(TIPO_CATEGORIA_PERFIL);
	}

	/**
	 * Retorna o id do tipo categoria PERFIL, via SQL
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdTipoCategoriaPerfilViaSQL()
	{
		// invocando o metodo que recupera o id do tipo categoria por nome
		return self::retornaIdTipoCategoriaPorNomeViaSQL(TIPO_CATEGORIA_PERFIL);
	}

	/**
	 * Retorna o id do tipo categoria CVC, via SQL
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdTipoCategoriaCVCViaSQL()
	{
		// invocando o metodo que recupera o id do tipo categoria por nome
		return self::retornaIdTipoCategoriaPorNomeViaSQL(TIPO_CATEGORIA_CVC);
	}

	/**
	 * Retorna o id do tipo categoria DICIONARIO_DADOS, via SQL
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdTipoCategoriaDicionarioDadosViaSQL()
	{
		// invocando o metodo que recupera o id do tipo categoria por nome
		return self::retornaIdTipoCategoriaPorNomeViaSQL(TIPO_CATEGORIA_DICIONARIO_DADOS);
	}
}