<?php
/**
 * Controlador PessoasPerfisMensagensCategorias
 *
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_PessoasPerfisMensagensCategorias
 * 
 * @since 22/03/2011
 * 
 */
class Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador PessoasPerfisMensagensCategorias.
	 * @var Basico_OPController_PessoasPerfisMensagensCategoriasOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Basico_Model_PessoasPerfisMensagemCategoria.
	 * 
	 * @var Basico_Model_PessoasPerfisMensagemCategoria
	 */
	private $_model;
	
	/**
	 * Construtor do controlador Basico_OPController_PessoasPerfisMensagensCategoriasOPController
	 * 
	 * @return Basico_OPController_PessoasPerfisMensagensCategoriasOPController
	 */
	protected function __construct()
	{
		// instanciando o modelo
	    $this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

	    // inicializando o controlador
	    $this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_PessoasPerfisMensagensCategoriasOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Retorna instância do controlador Basico_PessoasPerfisMensagensCategoriasController
	 * 
	 * @return Basico_OPController_PessoasPerfisMensagensCategoriasOPController
	 */
	public static function getInstance() {
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Salva o objeto PessoasPerfisMensagensCategorias no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_PessoasPerfisMensagensCategorias $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_MensagemAssocclAssocclPessoaPerfil', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_PESSOAS_PERFIS_MENSAGENS_CATEGORIAS, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVA_PESSOAS_PERFIS_MENSAGENS_CATEGORIAS, true);
	    		$mensagemLog    = LOG_MSG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA;
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
	 * Apaga o objeto PessoasPerfisMensagensCategorias do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_PessoasPerfisMensagensCategorias $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_MensagemAssocclAssocclPessoaPerfil', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_PESSOAS_PERFIS_MENSAGENS_CATEGORIAS, true);
	    	$mensagemLog    = LOG_MSG_DELETE_PESSOA_PERFIL_MENSAGEM_CATEGORIA;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}