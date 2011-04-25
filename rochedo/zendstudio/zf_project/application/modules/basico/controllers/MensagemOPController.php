<?php
/**
 * Controlador Mensagem
 * 
 * Controlador responsavel pelas mensagems do sistema.
 * 
 * @author João Vasconcelos
 * 
 * @uses Basico_Model_Mensagem
 * 
 * @since 21/03/2011
 */
class Basico_OPController_MensagemOPController extends Basico_Abstract_RochedoPersistentOPController
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
	 * @return Basico_MensagemController
	 */
	public static function getInstance() {
		// checando o singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MensagemOPController();
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
    	Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Mensagem', true);

	    try{
	    	// instanciando controladores
	    	$categoriaControllerController = Basico_OPController_EmailOPController::getInstance();

	    	// verifica se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

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
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Mensagem', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

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
	 * Retorna a Mensagem carregada com os dados da template de Email de Validação de Usuario PlainText,  
	 * incluindo o texto da mensagem já com os nomes e links inseridos.
	 *
	 * @param String $nomeDestinatario
	 * @param String $link
	 * 
	 * @return Basico_Model_Mensagem
	 */
	public function retornaObjetoMensagemTemplateMensagemValidacaoUsuarioPlainText($nomeDestinatario, $link)
	{
		// instanciando controladores
		$emailControllerController              = Basico_OPController_EmailOPController::getInstance();
		$categoriaControllerController          = Basico_OPController_CategoriaOPController::getInstance();
		$dadosPessoasPerfisControllerController = Basico_OPController_DadosPessoasPerfisOPController::getInstance();

		// recuperando o objeto categoria email validacao plain text template
		$objCategoriaMensagem = $categoriaControllerController->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);

		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();
		
		// carregando a mensagem template
		$objMensagemTemplate = $this->_model->fetchList("id_categoria in (SELECT id FROM categoria WHERE nome = '{$objCategoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);

		// verificando se a mensagem foi carregada
		if (!isset($objMensagemTemplate))
			return null;

		// carregando assunto da mensagem
		$this->_model->setAssunto($objMensagemTemplate[0]->getAssunto());
		// carregando a mensagem
		$corpoMensagemTemplate  = $objMensagemTemplate[0]->getMensagem();
        // carregando a assinatura da mensagem
        $assinatura             = $dadosPessoasPerfisControllerController->retornaAssinaturaMensagemEmailSistema();
         
		// substituindo tags
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_NOME, $nomeDestinatario, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_LINK_VALIDACAO_EMAIL, $link, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_ASSINATURA_MENSAGEM, $assinatura, $corpoMensagemTemplate);

        // carregando a mensagem no modelo
        $this->_model->setMensagem($corpoMensagemTemplate);
		
		// recuperando o endereco do e-mail do sistema
		$emailSistema = $emailControllerController->retornaEmailSistema();
		// setando o remetente
		$this->_model->setRemetente($emailSistema);
		$this->_model->setRemetenteNome(APPLICATION_NAME);
		
		// retornando a mensagem
		return $this->_model;
	}
	
	/**
	 * Retorna a mensagem carregada com os dados da template de Mensagem de email validação usuario
	 * plaintext reenvio.
	 * 
	 * @param Int $idPessoa
	 * @param String $link
	 * 
	 * @return Basico_Model_Mensagem 
	 */
    public function retornaObjetoMensagemTemplateMensagemValidacaoUsuarioPlainTextReenvio($idPessoa, $link) 
    {
		// instanciando os controladores
		$emailControllerController              = Basico_OPController_EmailOPController::getInstance();
		$categoriaControllerController          = Basico_OPController_CategoriaOPController::getInstance();
		$dadosPessoaisControllerController      = Basico_OPController_DadosPessoaisOPController::getInstance();
		$dadosPessoasPerfisControllerController = Basico_OPController_DadosPessoasPerfisOPController::getInstance();

		// recuperando o objeto categoria email template validacao plain text reenvio
		$objcategoriaMensagem = $categoriaControllerController->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);

		// recuperando o nome do destinatario
		$nomeDestinatario = $dadosPessoaisControllerController->retornaNomePessoaPorIdPessoa($idPessoa);
        
		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();
		
		// carregando a mensagem template
		$objsMensagemTemplate = $this->_model->fetchList("id_categoria in (SELECT id FROM categoria WHERE nome = '{$objcategoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);

		// verificando se a mensagem foi carregada
		if (!isset($objsMensagemTemplate))
			return null;
		
		// recuperando o assunto
		$this->_model->setAssunto($objsMensagemTemplate[0]->getAssunto());
		// recuperando assinatura da mensagem
		$assinatura            = $dadosPessoasPerfisControllerController->retornaAssinaturaMensagemEmailSistema();
		// recuperando a mensagem
		$corpoMensagemTemplate = $objsMensagemTemplate[0]->getMensagem();
		// substituindo as tags 
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_NOME, $nomeDestinatario, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_LINK_VALIDACAO_EMAIL, $link, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_ASSINATURA_MENSAGEM, $assinatura, $corpoMensagemTemplate);
        
        // carregando a mensagem no modelo
        $this->_model->setMensagem($corpoMensagemTemplate);
		
		// recuperando o endereco de e-mail do sistema
		$emailSistema = $emailControllerController->retornaEmailSistema();
		// setando remetente
		$this->_model->setRemetente($emailSistema);
		$this->_model->setRemetenteNome(APPLICATION_NAME);
		
		// retornando a mensagem
		return $this->_model;
	}
	
    /**
	 * Retorna a mensagem carregada com os dados da template de Mensagem de email de confirmação de cadastro
	 * 
	 * @param Int $idPessoa
	 * @param String $link
	 * 
	 * @return Basico_Model_Mensagem 
	 */
    public function retornaObjetoMensagemTemplateMensagemConfirmacaoCadastroPlainText($idPessoa) 
    {
		// instanciando os controladores
		$emailControllerController              = Basico_OPController_EmailOPController::getInstance();
		$categoriaControllerController          = Basico_OPController_CategoriaOPController::getInstance();
		$loginControllerController              = Basico_OPController_LoginOPController::getInstance();
		$dadosPessoaisControllerController      = Basico_OPController_DadosPessoaisOPController::getInstance();
		$dadosBiometricosControllerController   = Basico_OPController_DadosBiometricosOPController::getInstance();
		$dadosPessoasPerfisControllerController = Basico_OPController_DadosPessoasPerfisOPController::getInstance();
		$tradutorControllerController           = Basico_OPController_TradutorOPController::getInstance();

		// recuperando o objeto categoria email template validacao plain text reenvio
		$objCategoriaMensagem = $categoriaControllerController->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT);

		$loginUsuario   = $loginControllerController->retornaLoginPorIdPessoa($idPessoa);
		$sexoUsuario    = $dadosBiometricosControllerController->retornaSexoPorIdPessoa($idPessoa);

		// recuperando o nome do destinatario
		$nomeDestinatario = $dadosPessoaisControllerController->retornaNomePessoaPorIdPessoa($idPessoa);

		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();

		// carregando a mensagem template
		$objMensagemTemplate = $this->_model->fetchList("id_categoria in (SELECT id FROM categoria WHERE nome = '{$objCategoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);

		// recuperando o assunto
		$this->_model->setAssunto($objMensagemTemplate[0]->getAssunto());
		// recuperando assinatura da mensagem
		$assinatura            = $dadosPessoasPerfisControllerController->retornaAssinaturaMensagemEmailSistema();
		// recuperando a mensagem
		$corpoMensagemTemplate = $objMensagemTemplate[0]->getMensagem();
		
        // substituindo a tag de tratamento de acordo com o sexo do usuario
		if ($sexoUsuario === FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO)
		    $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_TRATAMENTO, $tradutorControllerController->retornaTraducao('MENSAGEM_TEXTO_TAG_TRATAMENTO_MASCULINO'), $corpoMensagemTemplate);
		else
		    $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_TRATAMENTO, $tradutorControllerController->retornaTraducao('MENSAGEM_TEXTO_TAG_TRATAMENTO_FEMININO'), $corpoMensagemTemplate);
		
		// substituindo a tag do nome do usuario    
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_NOME, $nomeDestinatario, $corpoMensagemTemplate);
        // substituindo a tag do login
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_LOGIN, $loginUsuario, $corpoMensagemTemplate);
        // substituindo a tag de datahora cadastro
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_DATA_HORA_FINALIZACAO_CADASTRO_BASICO, Basico_OPController_UtilOPController::retornaDateTimeAtual(Basico_OPController_PessoaOPController::retornaLinguaUsuario()), $corpoMensagemTemplate);
        // substituindo a tag de assinatura da mensagem
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_ASSINATURA_MENSAGEM, $assinatura, $corpoMensagemTemplate);
        
        // carregando a mensagem no modelo
        $this->_model->setMensagem($corpoMensagemTemplate);
		
		// recuperando o endereco de e-mail do sistema
		$emailSistema = $emailControllerController->retornaEmailSistema();
		// setando remetente
		$this->_model->setRemetente($emailSistema);
		$this->_model->setRemetenteNome(APPLICATION_NAME);
		
		// retornando a mensagem
		return $this->_model;
	}
}
