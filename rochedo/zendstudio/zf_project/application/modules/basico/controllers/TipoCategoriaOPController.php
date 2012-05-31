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
	protected function _init()
	{
		// chamando inicializacao da classe pai
		parent::_init();

		// recuperando o id do tipo categoria CVC
		$this->idTipoCategoriaCVC = self::retornaIdTipoCategoriaCVCViaSQL();

		return;
	}

	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function _initControllers()
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
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_TipoCategoriaOPController();
		}
		// retornando instancia
		return self::$_singleton;
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
		$objTipoCategoria = $this->_retornaObjetosPorParametros("nome = '{$nomeTipoCategoria}'", null, 1, 0);

		// verificando se o objeto foi recuperado
		if (is_object($objTipoCategoria))
			return $objTipoCategoria->id;

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