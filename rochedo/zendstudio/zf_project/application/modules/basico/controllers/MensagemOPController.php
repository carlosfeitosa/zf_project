<?php

/**
 * Controlador Mensageiro
 *
 */

/**
 * Controlador Mensagem
 * 
 * @author João Vasconcelos
 * @uses Basico_Model_Mensagem
 */
class Basico_OPController_MensagemOPController
{
	/**
	 * 
	 * @var Basico_OPController_MensagemOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_Mensagem
	 */
	private $_mensagem;
	
	/**
	 * Construtor do Controlador Mensagem
	 * 
	 * @return Basico_Model_Mensagem
	 */
	public function __construct()
	{
		// instanciando o modelo
    	$this->_mensagem = $this->retornaNovoObjetoMensagem();
    	
    	// inicializando o controlador
    	$this->init();
	}

	/**
	 * Inicializa o controlador Basico_Model_Mensagem
	 * 
	 * @return void
	 */
	private function init()
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
	 * Retorna um modelo Basico_Model_Mensagem vazio
	 * 
	 * @return Basico_Model_Mensagem
	 */
	public function retornaNovoObjetoMensagem()
	{
		// retornando um modelo vazio
		return new Basico_Model_Mensagem();
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
    public function salvarMensagem(Basico_Model_Mensagem $objMensagem, $versaoUpdate = null, $idPessoaPerfilCriador = null) 
    {
	    try{
	    	// instanciando controladores
	    	$categoriaControllerController = Basico_OPController_CategoriaOPController::getInstance();
	    	$pessoaPerfilControllerController = Basico_OPController_PessoaPerfilOPController::getInstance();

	    	// verifica se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objMensagem->id != NULL) {
	    		// recuperando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateMensagem();
	    		$mensagemLog    = LOG_MSG_UPDATE_MENSAGEM;
	    	} else {
	    		// recuperando informacoes de log de novo registro
	    		$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovaMensagem();
	    		$mensagemLog    = LOG_MSG_NOVA_MENSAGEM;
	    	}

	    	// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objMensagem, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto	    		
	    	$this->_mensagem = $objMensagem;

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
		$objCategoriaMensagem = $categoriaControllerController->retornaObjetoCategoriaEmailValidacaoPlainTextTemplate();

		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();
		
		// carregando a mensagem template
		$objMensagemTemplate = $this->_mensagem->fetchList("id_categoria in (SELECT id FROM categoria WHERE nome = '{$objCategoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);

		// verificando se a mensagem foi carregada
		if (!isset($objMensagemTemplate))
			return null;

		// carregando assunto da mensagem
		$this->_mensagem->setAssunto($objMensagemTemplate[0]->getAssunto());
		// carregando a mensagem
		$corpoMensagemTemplate  = $objMensagemTemplate[0]->getMensagem();
        // carregando a assinatura da mensagem
        $assinatura             = $dadosPessoasPerfisControllerController->retornaAssinaturaMensagemEmailSistema();
         
		// substituindo tags
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_NOME, $nomeDestinatario, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_LINK_VALIDACAO_EMAIL, $link, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_ASSINATURA_MENSAGEM, $assinatura, $corpoMensagemTemplate);

        // carregando a mensagem no modelo
        $this->_mensagem->setMensagem($corpoMensagemTemplate);
		
		// recuperando o endereco do e-mail do sistema
		$emailSistema = $emailControllerController->retornaEmailSistema();
		// setando o remetente
		$this->_mensagem->setRemetente($emailSistema);
		$this->_mensagem->setRemetenteNome(APPLICATION_NAME);
		
		// retornando a mensagem
		return $this->_mensagem;
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
		$objcategoriaMensagem = $categoriaControllerController->retornaObjetoCategoriaEmailTemplateValidacaoPlainTextReenvio();

		// recuperando o nome do destinatario
		$nomeDestinatario = $dadosPessoaisControllerController->retornaNomePessoaPorIdPessoa($idPessoa);
        
		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();
		
		// carregando a mensagem template
		$objsMensagemTemplate = $this->_mensagem->fetchList("id_categoria in (SELECT id FROM categoria WHERE nome = '{$objcategoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);

		// verificando se a mensagem foi carregada
		if (!isset($objsMensagemTemplate))
			return null;
		
		// recuperando o assunto
		$this->_mensagem->setAssunto($objsMensagemTemplate[0]->getAssunto());
		// recuperando assinatura da mensagem
		$assinatura            = $dadosPessoasPerfisControllerController->retornaAssinaturaMensagemEmailSistema();
		// recuperando a mensagem
		$corpoMensagemTemplate = $objsMensagemTemplate[0]->getMensagem();
		// substituindo as tags 
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_NOME, $nomeDestinatario, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_LINK_VALIDACAO_EMAIL, $link, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_ASSINATURA_MENSAGEM, $assinatura, $corpoMensagemTemplate);
        
        // carregando a mensagem no modelo
        $this->_mensagem->setMensagem($corpoMensagemTemplate);
		
		// recuperando o endereco de e-mail do sistema
		$emailSistema = $emailControllerController->retornaEmailSistema();
		// setando remetente
		$this->_mensagem->setRemetente($emailSistema);
		$this->_mensagem->setRemetenteNome(APPLICATION_NAME);
		
		// retornando a mensagem
		return $this->_mensagem;
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
		$objCategoriaMensagem = $categoriaControllerController->retornaObjetoCategoriaEmailTemplateConfirmacaoCadastroPlainText();

		$loginUsuario   = $loginControllerController->retornaLoginPorIdPessoa($idPessoa);
		$sexoUsuario    = $dadosBiometricosControllerController->retornaSexoPorIdPessoa($idPessoa);

		// recuperando o nome do destinatario
		$nomeDestinatario = $dadosPessoaisControllerController->retornaNomePessoaPorIdPessoa($idPessoa);

		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();

		// carregando a mensagem template
		$objMensagemTemplate = $this->_mensagem->fetchList("id_categoria in (SELECT id FROM categoria WHERE nome = '{$objCategoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);

		// recuperando o assunto
		$this->_mensagem->setAssunto($objMensagemTemplate[0]->getAssunto());
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
        $this->_mensagem->setMensagem($corpoMensagemTemplate);
		
		// recuperando o endereco de e-mail do sistema
		$emailSistema = $emailControllerController->retornaEmailSistema();
		// setando remetente
		$this->_mensagem->setRemetente($emailSistema);
		$this->_mensagem->setRemetenteNome(APPLICATION_NAME);
		
		// retornando a mensagem
		return $this->_mensagem;
	}
}
