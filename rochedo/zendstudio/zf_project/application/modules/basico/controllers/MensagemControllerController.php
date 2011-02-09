<?php

/**
 * Controlador Mensageiro
 *
 */

// include de controladores
require_once("EmailControllerController.php");
require_once("CategoriaControllerController.php");
require_once("DadosPessoaisControllerController.php");
require_once("DadosPessoasPerfisControllerController.php");

/**
 * Controlador Mensagem
 * 
 * @author João Vasconcelos
 * @uses Basico_Model_Mensagem
 */
class Basico_MensagemControllerController
{
	/**
	 * 
	 * @var Basico_MensagemController object
	 */
	static private $singleton;
	
	/**
	 * @var Basico_Model_Mensagem object
	 */
	private $mensagem;
	
	/**
	 * Construtor do Controlador Mensagem
	 * 
	 * @return Basico_Model_Mensagem
	 */
	public function __construct()
	{
    	$this->mensagem = new Basico_Model_Mensagem();
	}
	
	/**
	 * Retorna o objeto da Classe MensagemController
	 * 
	 * @return Basico_MensagemController
	 */
	static public function init() {
		// checando o singleton
		if(self::$singleton == NULL){
			self::$singleton = new Basico_MensagemControllerController();
		}
		
		return self::$singleton;
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
    public function salvarMensagem(Basico_Model_Mensagem $novaMensagem, $versaoUpdate = null, $idPessoaPerfilCriador = null) 
    {
	    try{
	    	// verifica se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
	    	
	    	// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novaMensagem, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovaMensagem(), LOG_MSG_NOVA_MENSAGEM);

			// atualizando o objeto	    		
	    	$this->mensagem = $novaMensagem;

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
	public function retornaObjetoMensagemTemplateMensagemValidacaoUsuarioPlainText($nomeDestinatario, $link) {
		
		// instanciando controladores
		$controladorEmail              = Basico_EmailControllerController::init();
		$controladorCategoria          = Basico_CategoriaControllerController::init();
		$controladorDadosPessoasPerfis = Basico_DadosPessoasPerfisControllerController::init();

		// recuperando o id da categoria email validacao plain text template
		$categoriaMensagem = $controladorCategoria->retornaObjetoCategoriaEmailValidacaoPlainTextTemplate();

		// recuperando a lingua do usuario
		$linguaUsuario = Basico_PessoaControllerController::retornaLinguaUsuario();
		
		// carregando a mensagem template
		$mensagemTemplate = self::$singleton->mensagem->fetchList("id_categoria in (SELECT id FROM categoria WHERE nome = '{$categoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);
		// carregando assunto da mensagem
		$this->mensagem->setAssunto($mensagemTemplate[0]->getAssunto());
		// carregando a mensagem
		$corpoMensagemTemplate  = $mensagemTemplate[0]->getMensagem();
        // carregando a assinatura da mensagem
        $assinatura             = $controladorDadosPessoasPerfis->retornaAssinaturaMensagemEmailSistema();
         
		// substituindo tags
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_NOME, $nomeDestinatario, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_LINK_VALIDACAO_EMAIL, $link, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_ASSINATURA_MENSAGEM, $assinatura, $corpoMensagemTemplate);

        // carregando a mensagem no modelo
        $this->mensagem->setMensagem($corpoMensagemTemplate);
		
		// recuperando o endereco do e-mail do sistema
		$emailSistema = $controladorEmail->retornaEmailSistema();
		// setando o remetente
		$this->mensagem->setRemetente($emailSistema);
		$this->mensagem->setRemetenteNome(APPLICATION_NAME);
		
		// retornando a mensagem
		return $this->mensagem;
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
		$controladorEmail         = Basico_EmailControllerController::init();
		$controladorCategoria     = Basico_CategoriaControllerController::init();
		$controladorDadosPessoais = Basico_DadosPessoaisControllerController::init();
		$controladorDadosPessoasPerfis = Basico_DadosPessoasPerfisControllerController::init();

		// recuperando o objeto categoria email template validacao plain text reenvio
		$categoriaMensagem     = $controladorCategoria->retornaObjetoCategoriaEmailTemplateValidacaoPlainTextReenvio();
		// recuperando o nome do destinatario
		$nomeDestinatario = $controladorDadosPessoais->retornaNomePessoa($idPessoa);
        
		// recuperando a lingua do usuario
		$linguaUsuario = Basico_PessoaControllerController::retornaLinguaUsuario();
		
		// carregando a mensagem template
		$mensagemTemplate = self::$singleton->mensagem->fetchList("id_categoria in (SELECT id FROM categoria WHERE nome = '{$categoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);
		
		// recuperando o assunto
		$this->mensagem->setAssunto($mensagemTemplate[0]->getAssunto());
		// recuperando assinatura da mensagem
		$assinatura            = $controladorDadosPessoasPerfis->retornaAssinaturaMensagemEmailSistema();
		// recuperando a mensagem
		$corpoMensagemTemplate = $mensagemTemplate[0]->getMensagem();
		// substituindo as tags 
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_NOME, $nomeDestinatario, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_LINK_VALIDACAO_EMAIL, $link, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_ASSINATURA_MENSAGEM, $assinatura, $corpoMensagemTemplate);
        
        // carregando a mensagem no modelo
        $this->mensagem->setMensagem($corpoMensagemTemplate);
		
		// recuperando o endereco de e-mail do sistema
		$emailSistema = $controladorEmail->retornaEmailSistema();
		// setando remetente
		$this->mensagem->setRemetente($emailSistema);
		$this->mensagem->setRemetenteNome(APPLICATION_NAME);
		
		// retornando a mensagem
		return $this->mensagem;
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
		$controladorEmail              = Basico_EmailControllerController::init();
		$controladorCategoria          = Basico_CategoriaControllerController::init();
		$controladorLogin              = Basico_LoginControllerController::init();
		$controladorDadosPessoais      = Basico_DadosPessoaisControllerController::init();
		$controladorDadosBiometricos   = Basico_DadosBiometricosControllerController::init();
		$controladorDadosPessoasPerfis = Basico_DadosPessoasPerfisControllerController::init();
		$controladorTradutor           = Basico_TradutorControllerController::init();             

		// recuperando o objeto categoria email template validacao plain text reenvio
		$categoriaMensagem     = $controladorCategoria->retornaObjetoCategoriaEmailTemplateConfirmacaoCadastroPlainText();
		
		$loginUsuario   = $controladorLogin->retornaLoginPessoa($idPessoa);
		$sexoUsuario    = $controladorDadosBiometricos->retornaSexoPessoa($idPessoa);
		
		// recuperando o nome do destinatario
		$nomeDestinatario = $controladorDadosPessoais->retornaNomePessoa($idPessoa);
        
		// recuperando a lingua do usuario
		$linguaUsuario = Basico_PessoaControllerController::retornaLinguaUsuario();
		
		// carregando a mensagem template
		$mensagemTemplate = self::$singleton->mensagem->fetchList("id_categoria in (SELECT id FROM categoria WHERE nome = '{$categoriaMensagem->nome}_{$linguaUsuario}')", null, 1, 0);
		
		// recuperando o assunto
		$this->mensagem->setAssunto($mensagemTemplate[0]->getAssunto());
		// recuperando assinatura da mensagem
		$assinatura            = $controladorDadosPessoasPerfis->retornaAssinaturaMensagemEmailSistema();
		// recuperando a mensagem
		$corpoMensagemTemplate = $mensagemTemplate[0]->getMensagem();
		
        // substituindo a tag de tratamento de acordo com o sexo do usuario
		if ($sexoUsuario === FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO)
		    $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_TRATAMENTO, $controladorTradutor->retornaTraducao('MENSAGEM_TEXTO_TAG_TRATAMENTO_MASCULINO'), $corpoMensagemTemplate);
		else
		    $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_TRATAMENTO, $controladorTradutor->retornaTraducao('MENSAGEM_TEXTO_TAG_TRATAMENTO_FEMININO'), $corpoMensagemTemplate);
		
		// substituindo a tag do nome do usuario    
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_NOME, $nomeDestinatario, $corpoMensagemTemplate);
        // substituindo a tag do login
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_LOGIN, $loginUsuario, $corpoMensagemTemplate);
        // substituindo a tag de datahora cadastro
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_DATA_HORA_FINALIZACAO_CADASTRO_BASICO, Basico_UtilControllerController::retornaDateTimeAtual(), $corpoMensagemTemplate);
        // substituindo a tag de assinatura da mensagem
        $corpoMensagemTemplate = str_replace(MENSAGEM_TAG_ASSINATURA_MENSAGEM, $assinatura, $corpoMensagemTemplate);
        
        // carregando a mensagem no modelo
        $this->mensagem->setMensagem($corpoMensagemTemplate);
		
		// recuperando o endereco de e-mail do sistema
		$emailSistema = $controladorEmail->retornaEmailSistema();
		// setando remetente
		$this->mensagem->setRemetente($emailSistema);
		$this->mensagem->setRemetenteNome(APPLICATION_NAME);
		
		// retornando a mensagem
		return $this->mensagem;
	}
}
