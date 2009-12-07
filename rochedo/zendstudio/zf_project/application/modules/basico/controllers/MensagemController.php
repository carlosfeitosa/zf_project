<?php
//INCLUINDO CONTROLADORES
require_once("EmailController.php");

class Basico_MensagemController
{
	static private $singleton;
	private $mensagem;
	
	public function __construct()
	{
    	$this->mensagem = new Basico_Model_Mensagem();
	}
	
	static public function init() {
		if(self::$singleton == NULL){
			self::$singleton = new Basico_MensagemController();
		}
		return self::$singleton;
	}
    
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
	
	public function retornaTemplateMensagemValidacaoUsuarioPlainText($idCategoria) {
		
		//INICIALIZANDO CONTROLADORES
		$controladorEmail = Basico_EmailController::init();
		
		$mensagemTemplate = self::$singleton->mensagem->fetchList("id_categoria = {$idCategoria}", null, 1, 0);
		$this->mensagem->setAssunto($mensagemTemplate[0]->getAssunto());
		$this->mensagem->setMensagem($mensagemTemplate[0]->getMensagem());
		
		//PEGANDO EMAIL DO SISTEMA PARA SETAR O REMETENTE
		$emailSistema = $controladorEmail->retornaEmailSistema();
		$this->mensagem->setRemetente($emailSistema->email);
		$this->mensagem->setRemetenteNome(APPLICATION_NAME);
		return $this->mensagem;
		
	}
}
