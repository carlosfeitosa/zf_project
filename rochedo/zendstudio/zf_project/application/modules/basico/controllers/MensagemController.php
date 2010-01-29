<?php
//INCLUINDO CONTROLADORES
require_once("EmailController.php");
require_once("CategoriaController.php");
require_once("DadosPessoaisController.php");
require_once("DadosPessoasPerfisController.php");

/**
 * Controlador Mensagem
 * 
 * @author João Vasconcelos
 * @uses Basico_Model_Mensagem
 */
class Basico_MensagemController
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
			self::$singleton = new Basico_MensagemController();
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
	    	// VERIFICA SE A OPERACAO ESTA SENDO REALIZADA POR UM USUARIO OU PELO SISTEMA
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();
	    		
	    	$this->mensagem = $novaMensagem;
			$this->mensagem->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaController::init();
			$controladorLog       = Basico_LogController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovaMensagem();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = $idPessoaPerfilCriador;
            $novoLog->categoria      = $categoriaLog->id;
            $novoLog->dataHoraEvento = Zend_Date::now();
            $novoLog->descricao      = LOG_MSG_NOVA_MENSAGEM;
            $controladorLog->salvarLog($novoLog);
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
		$controladorEmail              = Basico_EmailController::init();
		$controladorCategoria          = Basico_CategoriaController::init();
		$controladorDadosPessoasPerfis = Basico_DadosPessoasPerfisController::init();

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
		$controladorEmail         = Basico_EmailController::init();
		$controladorCategoria     = Basico_CategoriaController::init();
		$controladorDadosPessoais = Basico_DadosPessoaisController::init();
		$controladorDadosPessoasPerfis = Basico_DadosPessoasPerfisController::init();

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
