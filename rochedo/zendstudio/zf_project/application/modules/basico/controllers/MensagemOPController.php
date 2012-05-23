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
	 * Chave para o atributo id da mensagem
	 * 
	 * @var String
	 */
	const ARRAY_MENSAGEM_ATRIBUTO_ID = 'id';
	/**
	 * Chave para o atributo enviada da mensagem
	 * 
	 * @var String
	 */
	const ARRAY_MENSAGEM_ATRIBUTO_DATAHORA_ENVIO = 'datahoraEnvio';
	/**
	 * Chave para o atributo remetente da mensagem
	 * 
	 * @var String
	 */
	const ARRAY_MENSAGEM_ATRIBUTO_REMETENTE = 'remetente';
	/**
	 * Chave para o atributo remetenteNome da mensagem
	 * 
	 * @var String
	 */
	const ARRAY_MENSAGEM_ATRIBUTO_REMETENTE_NOME = 'remetenteNome';
	/**
	 * Chave para o atributo destinatarios da mensagem
	 * 
	 * @var String
	 */
	const ARRAY_MENSAGEM_ATRIBUTO_DESTINATARIOS = 'destinatarios';
	/**
	 * Chave para o atributo destinatariosArray da mensagem
	 * 
	 * @var String
	 */
	const ARRAY_MENSAGEM_ATRIBUTO_DESTINATARIOS_ARRAY = 'destinatariosArray';
	/**
	 * Chave para o atributo destinatariosNomesArray da mensagem
	 * 
	 * @var String
	 */
	const ARRAY_MENSAGEM_ATRIBUTO_DESTINATARIOS_NOMES = 'destinatariosNomes';
	/**
	 * Chave para o atributo assunto da mensagem
	 * 
	 * @var String
	 */
	const ARRAY_MENSAGEM_ATRIBUTO_ASSUNTO = 'assunto';
	/**
	 * Chave para o atributo mensagem da mensagem
	 * 
	 * @var String
	 */
	const ARRAY_MENSAGEM_ATRIBUTO_MENSAGEM = 'mensagem';
	/**
	 * Chave para o atributo datahoraCriacao da mensagem
	 * 
	 * @var String
	 */
	const ARRAY_MENSAGEM_ATRIBUTO_DATAHORA_CRIACAO = 'datahoraCriacao';
	/**
	 * Nome da tabela basico.mensagem
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.mensagem';
	/**
	 * Nome do campo id da tabela basico.mensagem
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * 
	 * @var Basico_OPController_MensagemOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_Mensagem
	 */
	protected $_model;
	
	/**
	 * @var Basico_OPController_MensagemTemplateOPController
	 */
	private $_mensagemTemplateOPController;
	/**
	 * @var Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController
	 */
	private $_mensagemAssocclAssocclPessoaPerfilOPController;
	
	/**
	 * Construtor do Controlador Mensagem
	 * 
	 * @return Basico_Model_Mensagem
	 */
	public function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_Model_Mensagem
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 04/05/2012
	 */
	protected function initControllers()
	{
		// inicializando controlador mensagemTemplate
		$this->_mensagemTemplateOPController = Basico_OPController_MensagemTemplateOPController::getInstance();
		// inicializando controlador mensagemAssocclAssocclPessoaPerfil
		$this->_mensagemAssocclAssocclPessoaPerfilOPController = Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController::getInstance();
		
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
	 * Retorna um objeto mensagem carregado com o template da mensagem, com possibilidade de susbtituicao de TAGS
	 * 
	 * @param string $nomeCategoriaMensagemTemplate
	 * @param array $arrayIdsPessoasDestinatarios
	 * @param integer $idPessoaRemetente 
	 * @param array $arrayTagsValores
	 * 
	 * @return Array|null
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
		
		$arrayConstantesTextuaisTemplate = $this->_mensagemTemplateOPController->retornaArrayConstantesTextuaisMensagemTemplatePorId($idMensagemTemplate);
		
		// verificando se a mensagem foi carregada
		if (null === $arrayConstantesTextuaisTemplate){
			// retornando nulo
			return null;
		}
		
		// inicializando variaveis 
		$modelMensagem = $this->retornaNovoObjetoModelo();
		$arrayDestinatarios = array();
		
		// setando a categoria da mensagem
		$modelMensagem->idCategoria = $idCategoriaMensagemTemplate;
		
		// carregando assunto da mensagem
		$modelMensagem->assunto = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayConstantesTextuaisTemplate['constanteTextualAssunto']);
		
		// carregando a mensagem
		$modelMensagem->mensagem  = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayConstantesTextuaisTemplate['constanteTextualMensagem']);
		
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
        	// recuperando dados do destinatario
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
        parent::salvarObjeto($modelMensagem, Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL(LOG_NOVA_MENSAGEM), LOG_MSG_NOVA_MENSAGEM);
        
        // retornando a mensagem
		return Basico_OPController_UtilOPController::codificar($modelMensagem, CODIFICAR_OBJETO_TO_ARRAY);
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
		$objMensagemTemplate = $this->retornaObjetosPorParametros("id_categoria in (SELECT id from basico.categoria WHERE nome = '{$objCategoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);

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
		// recuperando o objeto categoria email template validacao plain text reenvio
		$idCategoriaMensagem = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL('SISTEMA_MENSAGEM_EMAIL_TEMPLATE_REGISTRO_USUARIO_PLAINTEXT');

		// recuperando o sexo do usuario
		$sexoUsuario    = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaSexoPorIdPessoa($idPessoa);

		// recuperando o nome do destinatario
		$nomeDestinatario = Basico_OPController_PessoaAssocDadosOPController::getInstance()->retornaNomePessoaPorIdPessoa($idPessoa);
		
		// recuperando a lingua do usuario
		$linguaUsuario = Basico_OPController_PessoaOPController::retornaLinguaUsuario();

		// carregando a mensagem template
		$arrayMensagemTemplate = Basico_OPController_MensagemTemplateOPController::getInstance()->retornaArrayConstantesTextuaisMensagemTemplatePorId($this->_mensagemTemplateOPController->retornaIdMensagemTemplatePorNomeTemplateIdCategoria('SISTEMA_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO_PLAINTEXT', $idCategoriaMensagem));		

		// recuperando o novo objeto mensagem
		$novaMensagem = $this->retornaNovoObjetoModelo();
		
		// recuperando o assunto
		$novaMensagem->setAssunto(Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayMensagemTemplate['constanteTextualAssunto']));
		// recuperando assinatura da mensagem
		$assinatura            = Basico_OPController_AssocclPessoaPerfilAssocDadosOPController::getInstance()->retornaAssinaturaMensagemEmailSistema();
		// recuperando a mensagem
		$corpoMensagemTemplate = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayMensagemTemplate['constanteTextualMensagem']);
		
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
        $novaMensagem->setMensagem($corpoMensagemTemplate);
		
		// recuperando o endereco de e-mail do sistema
		$emailSistema = Basico_OPController_ContatoCpgEmailOPController::getInstance()->retornaEmailSistema();
		// setando remetente
		$novaMensagem->setRemetente($emailSistema);
		$novaMensagem->setRemetenteNome(APPLICATION_NAME);
		
		// retornando a mensagem
		return $novaMensagem;
	}
	
	/**
	 * Retorna a mensagem de aviso sobre tentativa de registro utilizando email primario de usuario do sistema
	 * 
	 * @param Int $idPessoa
	 * @param String $emailPrimario
	 */
	public function retornaMensagemTentativaRegistroEmailPrimario($idPessoa, $emailPrimario)
	{
		// recuperando a template da mensagem
		$novaMensagem = $this->retornaObjetoMensagemTemplateMensagemTentativaRegistroEmailPrimario($idPessoa);
		    	
        // recuperando o nome do destinatario
        $nomeDestinatario = Basico_OPController_PessoaAssocDadosOPController::getInstance()->retornaObjetoDadosPessoaisPorIdPessoa($idPessoa)->nome;
	    // setando atributos da mensagem                     
        $novaMensagem->destinatarios = array($emailPrimario);
        $novaMensagem->idCategoria   = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai('SISTEMA_MENSAGEM_EMAIL_TEMPLATE_REGISTRO_USUARIO_PLAINTEXT');
        $novaMensagem->idGenericoProprietario = Basico_OPController_PessoaOPController::retornaIdPessoaSistemaViaSQL();
        
        // salvando objeto
        parent::salvarObjeto($novaMensagem, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVA_MENSAGEM), LOG_MSG_NOVA_MENSAGEM);
	
        // retornando array com modelo de mensagem
        return Basico_OPController_UtilOPController::codificar($novaMensagem, CODIFICAR_OBJETO_TO_ARRAY);
        
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
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 10/05/2012
	 */
	public function criaRelacaoPessoasPerfisMensagensCategoriasAssossiadas(array $dadosMensagem, $idPessoaPerfilRemetente, array $arrayIdsPessoasPerfisDestinatarios, array $arrayIdsPessoasPerfisDestinatariosCopiaCarbonada = array(), array $arrayIdsPessoasPerfisDestinatariosCopiaOculta = array())
	{
		// verificando se os parametros foram informados
		if ((!$dadosMensagem[self::ARRAY_MENSAGEM_ATRIBUTO_ID]) or (!$dadosMensagem[self::ARRAY_MENSAGEM_ATRIBUTO_REMETENTE]) or (!count($dadosMensagem[self::ARRAY_MENSAGEM_ATRIBUTO_DESTINATARIOS]) > 0) or (!$idPessoaPerfilRemetente) or (!count($arrayIdsPessoasPerfisDestinatarios) > 0) or ($dadosMensagem[self::ARRAY_MENSAGEM_ATRIBUTO_DATAHORA_ENVIO] !== null)) {
			// retornando falso e parando a execucao do metodo
			return false;
		}

		// iniciando bloco de tentativas
		try {
			// iniciando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao();

			// inserindo relacao de remetente
			$this->_mensagemAssocclAssocclPessoaPerfilOPController->insereAssociacaoMensagemPessoaPerfil($dadosMensagem['id'], Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE), $idPessoaPerfilRemetente);

			// loop para associar os destinatarios
			foreach ($arrayIdsPessoasPerfisDestinatarios as $idPessoaPerfilDestinatario) {
				// inserindo relacao de destinatario
				$this->_mensagemAssocclAssocclPessoaPerfilOPController->insereAssociacaoMensagemPessoaPerfil($dadosMensagem['id'], Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO), $idPessoaPerfilDestinatario);	
			}

			// loop para associar os destinatarios em copia cabonada
			foreach ($arrayIdsPessoasPerfisDestinatariosCopiaCarbonada as $idPessoaPerfilDestinatario) {
				// inserindo relacao de destinatario copia carbonada
				$this->_mensagemAssocclAssocclPessoaPerfilOPController->insereAssociacaoMensagemPessoaPerfil($dadosMensagem['id'], Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA), $idPessoaPerfilDestinatario);
			}

			// loop para associar os destinatarios em copia cabonada oculta
			foreach ($arrayIdsPessoasPerfisDestinatariosCopiaOculta as $idPessoaPerfilDestinatario) {
				// inserindo relacao de destinatario copia carbonada
				$this->_mensagemAssocclAssocclPessoaPerfilOPController->insereAssociacaoMensagemPessoaPerfil($dadosMensagem['id'], Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA_OCULTA), $idPessoaPerfilDestinatario);
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
	
	/**
	 * Marca a mensagem como enviada e seta datahoraEnvio
	 * 
	 * @param Int $idMensagem
	 */
	public function marcarMensagemComoEnviada($idMensagem)
	{
		// recuperando o objeto mensagem para update
		$mensagem = $this->retornaObjetosPorParametros("id = {$idMensagem}");

		// se a mensagem foi recuperada
		if (null !== $mensagem->id) {
			// setando mensagem como enviada
			$mensagem->datahoraEnvio = Basico_OPController_UtilOPController::retornaDateTimeAtual();
			
            // recuperando a ultima versao do objeto
            $ultimaVersaoMensagem    = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($mensagem);
            
            // Atualizando a mensagem
            return parent::salvarObjeto($mensagem, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_MENSAGEM, true), LOG_MSG_UPDATE_MENSAGEM, $ultimaVersaoMensagem);            
		}

		return false;
	}
}
