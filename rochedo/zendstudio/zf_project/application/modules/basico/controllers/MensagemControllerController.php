<?php

/**
 * Controlador Mensageiro
 *
 */

//INCLUINDO CONTROLADORES
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
	 * @return Basico_Model_Mensagem
	 */
	public function __construct()
	{
    	$this->mensagem = new Basico_Model_Mensagem();
	}
	
	/**
	 * Retorna o objeto da Classe MensagemController
	 * @return Basico_MensagemController
	 */
	static public function init() {
		if(self::$singleton == NULL){
			self::$singleton = new Basico_MensagemControllerController();
		}
		return self::$singleton;
	}
    
	/**
	 * Salva a mensagem e todos as suas dependencias.
	 * @param Basico_Model_Mensagem
	 * @param Int $idPessoaPerfilCriador
	 * @return void
	 */
    public function salvarMensagem($novaMensagem, $idPessoaPerfilCriador = null) 
    {
	    try{
	    	// verifica se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
	    	
	    	// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novaMensagem, null, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovaMensagem(), LOG_MSG_NOVA_MENSAGEM);

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
	 * @return Basico_Model_Mensagem
	 */
	public function retornaTemplateMensagemValidacaoUsuarioPlainText($nomeDestinatario, $link) {
		
		//INICIALIZANDO CONTROLADORES
		$controladorEmail              = Basico_EmailControllerController::init();
		$controladorCategoria          = Basico_CategoriaControllerController::init();
		$controladorDadosPessoasPerfis = Basico_DadosPessoasPerfisControllerController::init();

		$idCategoria = $controladorCategoria->retornaCategoriaEmailValidacaoPlainTextTemplate();
		
		$mensagemTemplate = self::$singleton->mensagem->fetchList("id_categoria = {$idCategoria->id}", null, 1, 0);
		$this->mensagem->setAssunto($mensagemTemplate[0]->getAssunto());
		$corpoMensagemTemplate  = $mensagemTemplate[0]->getMensagem(); 
        $corpoMensagemTemplate  = str_replace('[nome_usuario]', $nomeDestinatario, $corpoMensagemTemplate);
        $corpoMensagemTemplate  = str_replace('[link]', $link, $corpoMensagemTemplate);
        $assinatura             = $controladorDadosPessoasPerfis->retornaAssinaturaMensagemEmailSistema();
        $corpoMensagemTemplate  = str_replace('[assinatura_mensagem]', $assinatura, $corpoMensagemTemplate);  
        $this->mensagem->setMensagem($corpoMensagemTemplate);
        
		
		//PEGANDO EMAIL DO SISTEMA PARA SETAR O REMETENTE
		$emailSistema = $controladorEmail->retornaEmailSistema();
		$this->mensagem->setRemetente($emailSistema);
		$this->mensagem->setRemetenteNome(APPLICATION_NAME);
		return $this->mensagem;
		
	}
	
	/**
	 * Retorna a mensagem carregada com os dados da template de Mensagem de email validação usuario
	 * plaintext reenvio.
	 * 
	 * @param Int $idPessoa
	 * @param String $link
	 * @return Basico_Model_Mensagem 
	 */
    public function retornaTemplateMensagemValidacaoUsuarioPlainTextReenvio($idPessoa, $link) {
		
		//INICIALIZANDO CONTROLADORES
		$controladorEmail         = Basico_EmailControllerController::init();
		$controladorCategoria     = Basico_CategoriaControllerController::init();
		$controladorDadosPessoais = Basico_DadosPessoaisControllerController::init();
		$controladorDadosPessoasPerfis = Basico_DadosPessoasPerfisControllerController::init();

		$idCategoria      = $controladorCategoria->retornaCategoriaEmailTemplateValidacaoPlainTextReenvio();
		$nomeDestinatario = $controladorDadosPessoais->retornaNomePessoa($idPessoa);
				
		$mensagemTemplate = self::$singleton->mensagem->fetchList("id_categoria = {$idCategoria->id}", null, 1, 0);
		$this->mensagem->setAssunto($mensagemTemplate[0]->getAssunto());
		$corpoMensagemTemplate = $mensagemTemplate[0]->getMensagem(); 
        $corpoMensagemTemplate = str_replace('[nome_usuario]', $nomeDestinatario, $corpoMensagemTemplate);
        $corpoMensagemTemplate = str_replace('[link]', $link, $corpoMensagemTemplate);
        $assinatura            = $controladorDadosPessoasPerfis->retornaAssinaturaMensagemEmailSistema();
        $corpoMensagemTemplate = str_replace('[assinatura_mensagem]', $assinatura, $corpoMensagemTemplate);
        $this->mensagem->setMensagem($corpoMensagemTemplate);
        
		
		//PEGANDO EMAIL DO SISTEMA PARA SETAR O REMETENTE
		$emailSistema = $controladorEmail->retornaEmailSistema();
		$this->mensagem->setRemetente($emailSistema);
		$this->mensagem->setRemetenteNome(APPLICATION_NAME);
		return $this->mensagem;
		
	}
}
