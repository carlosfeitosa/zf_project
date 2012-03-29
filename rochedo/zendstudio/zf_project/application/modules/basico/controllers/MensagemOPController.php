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
class Basico_OPController_MensagemOPController extends Basico_AbstractController_RochedoPersistentOPController
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
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Mensagem', true);

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
	 * Retorna um objeto mensagem carregado com o template da mensagem, com possibilidade de susbtituicao de TAGS
	 * 
	 * @param string $nomeCategoriaMensagemTemplate
	 * @param array $arrayIdsPessoasDestinatarios
	 * @param integer $idPessoaRemetente 
	 * @param array $arrayTagsValores
	 * 
	 * @return Basico_model_mensagem|null
	 */
	public function retornaModeloMensagemTemplateViaArrayIdsDestinatarios($idCategoriaMensagemTemplate, $idMensagemTemplate, array $arrayIdsPessoasDestinatarios, $idPessoaRemetente = null, array $arrayTagsValores = array())
	{
		// verificando se os parametros foram obrigatorios foram informados
		if((!isset($idCategoriaMensagemTemplate)) or (!isset($idMensagemTemplate)) or (count($arrayIdsPessoasDestinatarios) === 0)){
			//retornando nulo
			return null;
		}
		
		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();
		
		$modeloMensagemTemplate = $this->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_MensagemTemplateOPController');
		
		// carregando a mensagem template
		$objMensagemTemplate = $this->retornaObjetoPorId($modeloMensagemTemplate, $idMensagemTemplate);
		
		// verificando se a mensagem foi carregada
		if (!isset($objMensagemTemplate)){
			// retornando nulo
			return null;
		}
		
		// inicializando variaveis 
		$modelMensagem = $this->retornaNovoObjetoModeloPorNomeOPController(get_class($this));
		$arrayDestinatarios = array();
		
		
		
		// setando a categoria da mensagem
		$modelMensagem->idCategoria = $idCategoriaMensagemTemplate;
		
		// carregando assunto da mensagem
		$modelMensagem->assunto = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($objMensagemTemplate->constanteTextualAssunto);
		
		// carregando a mensagem
		$modelMensagem->mensagem  = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($objMensagemTemplate->constanteTextualMensagem);
		
        // carregando a assinatura da mensagem
        $assinatura             = Basico_OPController_AssocclPessoaPerfilAssocDadosOPController::getInstance()->retornaAssinaturaMensagemEmailSistema();
        
        // verificano se o remetente foi informado
        if(!isset($idPessoaRemetente)){
        	// recuperando informacoes sobre o sistema
        	$modelMensagem->remetente = Basico_OPController_ContatoCpgEmailOPController::getInstance()->retornaEmailSistema();
        	$modelMensagem->idGenericoProprietario = Basico_OPController_PessoaOPController::retornaIdPessoaSistemaViaSQL();
        	$modelMensagem->remetenteNome = APPLICATION_NAME;
        }else{
        	// recuperando o objeto Pessoa
        	$objPessoaDestinatario = Basico_OPController_PessoaOPController::getInstance()->retornaObjetoPorId(Basico_Model_Pessoa, $idPessoaRemetente);

        	// recuperano informacoes sobre o remetente
        	$modelMensagem->remetente = Basico_OPController_ContatoCpgEmailOPController::getInstance()->retornaObjetoEmailPrimarioPessoa($idPessoaRemetente);        	
        	$modelMensagem->remetenteNome = Basico_OPController_PessoaAssocDadosOPController::getInstance()->retornaNomePessoaPorIdPessoa($idPessoaRemetente);
        }

        // loop para carregar os nomes dos destinatarios
        foreach($arrayIdsPessoasDestinatarios as $idPessoaDestinatario){
        	// recuperando o objeto Pessoa
        	$objPessoaDestinatario = Basico_OPController_PessoaOPController::getInstance()->retornaObjetoPorId(Basico_OPController_PessoaOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_PessoaOPController'), $idPessoaDestinatario);
        	
        	$nomeDestinatario = Basico_OPController_PessoaAssocDadosOPController::getInstance()->retornaNomePessoaPorIdPessoa($idPessoaDestinatario);
        	$emailPirmarioDestinatario = Basico_OPController_ContatoCpgEmailOPController::getInstance()->retornaObjetoEmailPrimarioPessoa($idPessoaDestinatario);
        	
        	// recuperando informacoes do destinatario
        	$arrayDestinatarios[] = $emailPirmarioDestinatario->email;  
        	$arrayDestinatariosNomes[] = $nomeDestinatario;
        	
        }

        // atribuindo destinatarios a mensagem
        $modelMensagem->destinatarios = $arrayDestinatarios;
        // atribuindo destinatarios a mensagem
        $modelMensagem->destinatariosNomes = $arrayDestinatariosNomes;

        // loop  para substituicao de TAGS
        foreach($arrayTagsValores as $tag => $valor){
        	// substituindo TAGS do assunto
        	$modelMensagem->assunto = str_replace($tag, $valor, $modelMensagem->assunto);

        	// substituindo TAGS da mensagem
        	$modelMensagem->mensagem = str_replace($tag, $valor, $modelMensagem->mensagem);
        }
        
        // setando data-hora da mensagem
        $modelMensagem->datahoraCriacao = Basico_OPController_UtilOPController::retornaDateTimeAtual();
        
        // salvando a mensagem
        $this->salvarObjeto($modelMensagem);
        
        // retornando a mensagem
		return $modelMensagem;
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
		$emailControllerController              = Basico_OPController_ContatoCpgEmailOPController::getInstance();
		$categoriaControllerController          = Basico_OPController_CategoriaOPController::getInstance();
		$dadosPessoasPerfisControllerController = Basico_OPController_AssocclPessoaPerfilAssocDadosOPController::getInstance();

		// recuperando o objeto categoria email validacao plain text template
		$objCategoriaMensagem = $categoriaControllerController->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);

		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();
		
		// carregando a mensagem template
		$objMensagemTemplate = $this->retornaObjetosPorParametros($this->_model, "id_categoria in (SELECT id from basico.categoria WHERE nome = '{$objCategoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);

		// verificando se a mensagem foi carregada
		if (!isset($objMensagemTemplate))
			return null;

		// carregando assunto da mensagem
		$this->_model->setAssunto($objMensagemTemplate[0]->getAssunto());
		// carregando a mensagem
		$corpoMensagemTemplate  = $objMensagemTemplate[0]->getMensagem();
         
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
		$emailControllerController              = Basico_OPController_ContatoCpgEmailOPController::getInstance();
		$categoriaControllerController          = Basico_OPController_CategoriaOPController::getInstance();
		$dadosPessoaisControllerController      = Basico_OPController_PessoaAssocDadosOPController::getInstance();
		$dadosPessoasPerfisControllerController = Basico_OPController_AssocclPessoaPerfilAssocDadosOPController::getInstance();

		// recuperando o objeto categoria email template validacao plain text reenvio
		$objcategoriaMensagem = $categoriaControllerController->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);

		// recuperando o nome do destinatario
		$nomeDestinatario = $dadosPessoaisControllerController->retornaNomePessoaPorIdPessoa($idPessoa);
        
		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();
		
		// carregando a mensagem template
		$objsMensagemTemplate = $this->retornaObjetosPorParametros($this->_model, "id_categoria in (SELECT id from basico.categoria WHERE nome = '{$objcategoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);

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
		$emailControllerController              = Basico_OPController_ContatoCpgEmailOPController::getInstance();
		$categoriaControllerController          = Basico_OPController_CategoriaOPController::getInstance();
		$loginControllerController              = Basico_OPController_PessoaLoginOPController::getInstance();
		$dadosPessoaisControllerController      = Basico_OPController_PessoaAssocDadosOPController::getInstance();
		$dadosBiometricosControllerController   = Basico_OPController_DadosBiometricosOPController::getInstance();
		$dadosPessoasPerfisControllerController = Basico_OPController_AssocclPessoaPerfilAssocDadosOPController::getInstance();

		// recuperando o objeto categoria email template validacao plain text reenvio
		$objCategoriaMensagem = $categoriaControllerController->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT);

		$loginUsuario   = $loginControllerController->retornaLoginPorIdPessoa($idPessoa);
		$sexoUsuario    = $dadosBiometricosControllerController->retornaSexoPorIdPessoa($idPessoa);

		// recuperando o nome do destinatario
		$nomeDestinatario = $dadosPessoaisControllerController->retornaNomePessoaPorIdPessoa($idPessoa);

		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();

		// carregando a mensagem template
		$objMensagemTemplate = $this->retornaObjetosPorParametros($this->_model, "id_categoria in (SELECT id from basico.categoria WHERE nome = '{$objCategoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);

		// recuperando o assunto
		$this->_model->setAssunto($objMensagemTemplate[0]->getAssunto());
		// recuperando assinatura da mensagem
		$assinatura            = $dadosPessoasPerfisControllerController->retornaAssinaturaMensagemEmailSistema();
		// recuperando a mensagem
		$corpoMensagemTemplate = $objMensagemTemplate[0]->getMensagem();
		
        // substituindo a tag de tratamento de acordo com o sexo do usuario
		if ($sexoUsuario === FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO)
		    $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_TRATAMENTO, Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('MENSAGEM_TEXTO_TAG_TRATAMENTO_MASCULINO'), $corpoMensagemTemplate);
		else
		    $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_TRATAMENTO, Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('MENSAGEM_TEXTO_TAG_TRATAMENTO_FEMININO'), $corpoMensagemTemplate);
		
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
	
	/**
	 * Retorna a mensagem carregada com os dados da template de Mensagem de email de tentativa de registro com email primario de usuario do sistema
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return Basico_Model_Mensagem 
	 */
    public function retornaObjetoMensagemTemplateMensagemTentativaRegistroEmailPrimario($idPessoa) 
    {
		// instanciando os controladores
		$emailControllerController              = Basico_OPController_ContatoCpgEmailOPController::getInstance();
		$categoriaControllerController          = Basico_OPController_CategoriaOPController::getInstance();
		$loginControllerController              = Basico_OPController_PessoaLoginOPController::getInstance();
		$dadosPessoaisControllerController      = Basico_OPController_PessoaAssocDadosOPController::getInstance();
		$dadosBiometricosControllerController   = Basico_OPController_DadosBiometricosOPController::getInstance();
		$dadosPessoasPerfisControllerController = Basico_OPController_AssocclPessoaPerfilAssocDadosOPController::getInstance();

		// recuperando o objeto categoria email template validacao plain text reenvio
		$objCategoriaMensagem = $categoriaControllerController->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO_PLAINTEXT);

		// recuperando o sexo do usuario
		$sexoUsuario    = $dadosBiometricosControllerController->retornaSexoPorIdPessoa($idPessoa);

		// recuperando o nome do destinatario
		$nomeDestinatario = $dadosPessoaisControllerController->retornaNomePessoaPorIdPessoa($idPessoa);
		
		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();

		// carregando a mensagem template
		$objMensagemTemplate = $this->retornaObjetosPorParametros($this->_model, "id_categoria in (SELECT id from basico.categoria WHERE nome = '{$objCategoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);

		// recuperando o assunto
		$this->_model->setAssunto($objMensagemTemplate[0]->getAssunto());
		// recuperando assinatura da mensagem
		$assinatura            = $dadosPessoasPerfisControllerController->retornaAssinaturaMensagemEmailSistema();
		// recuperando a mensagem
		$corpoMensagemTemplate = $objMensagemTemplate[0]->getMensagem();
		
        // substituindo a tag de tratamento de acordo com o sexo do usuario
		if ($sexoUsuario === FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO)
		    $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_TRATAMENTO, Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('MENSAGEM_TEXTO_TAG_TRATAMENTO_MASCULINO'), $corpoMensagemTemplate);
		else
		    $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_TRATAMENTO, Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('MENSAGEM_TEXTO_TAG_TRATAMENTO_FEMININO'), $corpoMensagemTemplate);
		
		// substituindo a tag do nome do usuario    
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_NOME, $nomeDestinatario, $corpoMensagemTemplate);
        // substituindo a tag de assinatura da mensagem
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_ASSINATURA_MENSAGEM, $assinatura, $corpoMensagemTemplate);
        // substituindo a tag de assinatura da mensagem
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_SUPORTE_EMAIL, SUPPORT_EMAIL, $corpoMensagemTemplate);
        
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
	 * Cria as relacoes das pessoas envolvidas na mensagem, com a propria mensagem e categorias
	 * 
	 * @param Basico_Model_Mensagem $objMensagem
	 * @param Integer $idPessoaPerfilRemetente
	 * @param Array $arrayIdsPessoasPerfisDestinatarios
	 * @param Array $arrayIdsPessoasPerfisDestinatariosCopiaCarbonada
	 * @param Array $arrayIdsPessoasPerfisDestinatariosCopiaOculta 
	 * 
	 * @return Boolean
	 */
	public function criaRelacaoPessoasPerfisMensagensCategoriasAssossiadas(Basico_Model_Mensagem $objMensagem, $idPessoaPerfilRemetente, array $arrayIdsPessoasPerfisDestinatarios, array $arrayIdsPessoasPerfisDestinatariosCopiaCarbonada = array(), array $arrayIdsPessoasPerfisDestinatariosCopiaOculta = array())
	{
		// verificando se os parametros foram informados
		if ((!$objMensagem->id) or (!$objMensagem->remetente) or (!count($objMensagem->destinatariosArray) > 0) or (!$idPessoaPerfilRemetente) or (!count($arrayIdsPessoasPerfisDestinatarios) > 0) or ($objMensagem->enviada)) {
			// retornando falso e parando a execucao do metodo
			return false;
		}

		// instanciando controladores
		$pessoasPerfisMensagensCategoriaOPController = Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController::getInstance();

		// recuperando modelos vazios 
		$modeloPessoasPerfisMensagensCategoriasRemetente     = $pessoasPerfisMensagensCategoriaOPController->retornaNovoObjetoModeloPorNomeOPController($pessoasPerfisMensagensCategoriaOPController->retornaNomeClassePorObjeto($pessoasPerfisMensagensCategoriaOPController));
		$modeloPessoasPerfisMensagensCategoriasDestinatarios = $pessoasPerfisMensagensCategoriaOPController->retornaNovoObjetoModeloPorNomeOPController($pessoasPerfisMensagensCategoriaOPController->retornaNomeClassePorObjeto($pessoasPerfisMensagensCategoriaOPController));

		// iniciando bloco de tentativas
		try {
			// iniciando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao();

			// setando atributos no modelo para remetente
			$modeloPessoasPerfisMensagensCategoriasRemetente->idMensagem      = $objMensagem->id;
			$modeloPessoasPerfisMensagensCategoriasRemetente->idCategoria     = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE);
			$modeloPessoasPerfisMensagensCategoriasRemetente->idAssocclPerfil = $idPessoaPerfilRemetente;
			// salvando objeto
			$pessoasPerfisMensagensCategoriaOPController->salvarObjeto($modeloPessoasPerfisMensagensCategoriasRemetente, null, $idPessoaPerfilRemetente);

			// loop para associar os destinatarios
			foreach ($arrayIdsPessoasPerfisDestinatarios as $idPessoaPerfilDestinatario) {
				// criando copia do modelo
				$modeloPessoaPerfilMensagemCategoriaDestinatario = $modeloPessoasPerfisMensagensCategoriasDestinatarios;

				// setando atributos no modelo para destinatario
				$modeloPessoaPerfilMensagemCategoriaDestinatario->idMensagem      = $objMensagem->id;
				$modeloPessoaPerfilMensagemCategoriaDestinatario->idCategoria     = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO);
				$modeloPessoaPerfilMensagemCategoriaDestinatario->idAssocclPerfil = $idPessoaPerfilDestinatario;
				// salvando objeto
				$pessoasPerfisMensagensCategoriaOPController->salvarObjeto($modeloPessoaPerfilMensagemCategoriaDestinatario, null, $idPessoaPerfilRemetente);
			}

			// loop para associar os destinatarios em copia cabonada
			foreach ($arrayIdsPessoasPerfisDestinatariosCopiaCarbonada as $idPessoaPerfilDestinatario) {
				// criando copia do modelo
				$modeloPessoaPerfilMensagemCategoriaDestinatario = $modeloPessoasPerfisMensagensCategoriasDestinatarios;

				// setando atributos no modelo para destinatario
				$modeloPessoaPerfilMensagemCategoriaDestinatario->idMensagem      = $objMensagem->id;
				$modeloPessoaPerfilMensagemCategoriaDestinatario->idCategoria     = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA);
				$modeloPessoaPerfilMensagemCategoriaDestinatario->idAssocclPerfil = $idPessoaPerfilDestinatario;
				// salvando objeto
				$pessoasPerfisMensagensCategoriaOPController->salvarObjeto($modeloPessoaPerfilMensagemCategoriaDestinatario, null, $idPessoaPerfilRemetente);
			}

			// loop para associar os destinatarios em copia cabonada oculta
			foreach ($arrayIdsPessoasPerfisDestinatariosCopiaOculta as $idPessoaPerfilDestinatario) {
				// criando copia do modelo
				$modeloPessoaPerfilMensagemCategoriaDestinatario = $modeloPessoasPerfisMensagensCategoriasDestinatarios;

				// setando atributos no modelo para destinatario
				$modeloPessoaPerfilMensagemCategoriaDestinatario->idMensagem      = $objMensagem->id;
				$modeloPessoaPerfilMensagemCategoriaDestinatario->idCategoria     = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA_OCULTA);
				$modeloPessoaPerfilMensagemCategoriaDestinatario->idAssocclPerfil = $idPessoaPerfilDestinatario;
				// salvando objeto
				$pessoasPerfisMensagensCategoriaOPController->salvarObjeto($modeloPessoaPerfilMensagemCategoriaDestinatario, null, $idPessoaPerfilRemetente);
			}

			// salvando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

			// retornando sucesso
			return true;
		} catch (Exception $e) {
			// voltando a transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

			// estourando excessao
			throw new Exception(MSG_ERRO_ASSOCIACAO_PESSOAS_PEFIS_MENSAGENS_CATEGORIAS_FALHOU . $e->getMessage());
		}

	}
}
