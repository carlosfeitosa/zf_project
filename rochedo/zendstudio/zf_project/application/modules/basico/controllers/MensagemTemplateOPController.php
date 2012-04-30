<?php
/**
 * Controlador MensagemTemplate
 * 
 * Controlador responsavel pelas mensagems do sistema.
 * 
 * @author João Vasconcelos
 * 
 * @uses Basico_Model_MensagemTemplate
 * 
 * @since 21/03/2011
 */
class Basico_OPController_MensagemTemplateOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_MensagemOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_Mensagem
	 */
	private $_model;
	
	/**
	 * Construtor do Controlador Mensagem
	 * 
	 * @return Basico_Model_Mensagem
	 */
	public function __construct()
	{
		// instanciando o modelo
    	$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
    	
    	// inicializando o controlador
    	$this->init();
	}

	/**
	 * Inicializa o controlador Basico_Model_Mensagem
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}
	
	/**
	 * Retorna o objeto da Classe MensagemController
	 * 
	 * @return Basico_OPController_MensagemOPController
	 */
	public static function getInstance() {
		// checando o singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MensagemTemplateOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Salva a mensagem e todos as suas dependencias.
	 * 
	 * @param Basico_Model_Mensagem $novaMensagem
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
    public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null) 
    {
    	// verificando se o objeto eh da instancia esperada
    	Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_MensagemTemplate', true);

	    try{
	    	// instanciando controladores
	    	$categoriaControllerController = Basico_OPController_ContatoCpgEmailOPController::getInstance();

	    	// verifica se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// recuperando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_MENSAGEM, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_MENSAGEM;
	    	} else {
	    		// recuperando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVA_MENSAGEM, true);
	    		$mensagemLog    = LOG_MSG_NOVA_MENSAGEM;
	    	}

	    	// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto	    		
	    	$this->_model = $objeto;

	    } catch (Exception $e) {
	    	throw new Exception($e);
	    }
	}
	
	public function apagarObjeto($objeto, $forceCascade = false,$idPessoaPerfilCriador = NULL)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_MensagemTemplate', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_MENSAGEM, true);
	    	$mensagemLog    = LOG_MSG_DELETE_MENSAGEM;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna o id da template buscando pelo nome passado
	 * 
	 * @param String $nomeTemplate
	 */
	public function retornaIdMensagemTemplatePorNomeTemplateIdCategoria($nomeTemplate, $idCategoria)
	{
		// recuperando a template
		$template = $this->retornaObjetosPorParametros("nome = '{$nomeTemplate}' AND id_categoria = {$idCategoria}");
		
		if ($template[0]) {
			return $template[0]->id;
		}
		
		return null;
	}
}
