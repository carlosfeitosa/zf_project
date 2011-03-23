<?php
/**
 * Controlador GrupoFormularioElemento.
 * 
 * Responsavel pelos GrupoFormularioElemento do sistema
 *
 * @author João Vasconcelos (joao.vasconcelos@rochedproject.com)
 * 
 * @uses Basico_Model_GrupoFormularioElemento
 * 
 * @since 21/03/2011
 * 
 */
class Basico_OPController_GrupoFormularioElementoOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador GrupoFormularioElemento
	 * @var Basico_OPController_GrupoFormularioElementoOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo GrupoFormularioElemento.
	 * @var Basico_Model_GrupoFormularioElemento
	 */
	private $_model;
	
	/**
	 * Construtor do Controlador Basico_OPController_GrupoFormularioElementoOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_GrupoFormularioElementoOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}
	
	/**
	 * Retorna instância do Controlador GrupoFormularioElemento.
	 * 
	 * @return Basico_OPController_GrupoFormularioElementoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_GrupoFormularioElementoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Salva o objeto GrupoFormularioElemento no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_GrupoFormularioElemento $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_GrupoFormularioElemento', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogUpdateGrupoFormularioElemento();
	    		$mensagemLog    = LOG_MSG_UPDATE_GRUPO_FORMULARIO_ELEMENTO;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogNovoGrupoFormularioElemento();
	    		$mensagemLog    = LOG_MSG_NOVO_GRUPO_FORMULARIO_ELEMENTO;
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
	 * Apaga o objeto GrupoFormularioElemento do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_GrupoFormularioElemento $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_GrupoFormularioElemento', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogDeleteGrupoFormularioElemento();
	    	$mensagemLog    = LOG_MSG_DELETE_GRUPO_FORMULARIO_ELEMENTO;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}