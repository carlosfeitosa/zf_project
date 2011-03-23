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
class Basico_OPController_TipoCategoriaOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_TipoCategoriaOPController
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_TipoCategoria
	 */
	private $_tipoCategoria;

	/**
	 * Carrega a variavel tipo categoria com um novo objeto Basico_Model_TipoCategoria
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_tipoCategoria = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
	}

	/**
	 * Inicializa o controlador Basico_OPController_TipoCategoriaOPController 
	 * 
	 * @return void
	 */
	protected function init()
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
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogUpdateTipoCategoria();
	    		$mensagemLog    = LOG_MSG_UPDATE_TIPO_CATEGORIA;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogNovoTipoCategoria();
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
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogDeleteTipoCategoria();
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
	private function retornaIdTipoCategoriaPorNome($nomeTipoCategoria)
	{
		// recuperando os objetos tipo categoria
		$objsTipoCategoria = $this->_tipoCategoria->fetchList("NOME = '{$nomeTipoCategoria}'", null, 1, 0);

		// verificando se o objeto foi recuperado
		if (isset($objsTipoCategoria[0]))
			return $objsTipoCategoria[0]->id;

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
	 * Retorna o id do tipo categoria PERFIL
	 * 
	 * @return Integer|null
	 */
	public function retornaIdTipoCategoriaPerfil()
	{
		// invocando o metodo que recupera o id do tipo categoria por nome
		return $this->retornaIdTipoCategoriaPorNome(TIPO_CATEGORIA_PERFIL);
	}
}