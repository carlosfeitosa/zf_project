<?php
/**
 * Mensageiro Controller
 *
 * Responsável pelo envio e recebimento de mensagem no sistema.
 * @subpackage Controller
 */
class Basico_OPController_MensageiroOPController
{
	/**
	 * @var Basico_OPController_MensageiroOPController 
	 */
	private static $_singleton;

	/**
	 * @var Zend_Mail 
	 */
	private $_mail;

	/**
	 * Contrutor do controlador Basico_OPController_MensageiroOPController
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_mail = $this->retornaNovoObjetoMail();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_MensageiroOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		
	}
	
	/**
	 * Inicializa Controlador Mensageiro
	 * 
	 * @return Basico_OPController_MensageiroOPController
	 */
    public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MensageiroOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna o objeto Zend_Mail
	 * 
	 * @return Zend_Mail
	 */
	public function retornaNovoObjetoMail()
	{
		// retornando o objeto
		return new Zend_Mail(EMAIL_CHARSET);
	}

	/**
	 * Envia Mensagem
	 * 
	 * @param Basico_Model_Mensagem $mensagem
	 * 
	 * @return void
	 */
    public function enviar(Basico_Model_Mensagem $mensagem) {
        
    	try {
    		// instanciando controladores
    		$logOPController = Basico_OPController_LogOPController::getInstance();
    		$pessoaPerfilOPController = Basico_OPController_PessoasPerfisOPController::getInstance();
    		$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();

    		// salvando log de tentativa de envio de mensagem
    		$logOPController->salvarLog($pessoaPerfilOPController->retornaIdPessoaPerfilSistema(), $categoriaOPController->retornaIdCategoriaLogEmail(), LOG_MSG_EMAIL);

            // recuperando o transporte SMTP
			$transport = $this->retornaTransportSmtp();
			// setando o transporte
			Zend_Mail::setDefaultTransport($transport);

			// limpando o modelo
			$this->_mail = $this->retornaNovoObjetoMail();

	        // setando remetente
	        $this->_mail->setFrom($mensagem->remetente, $mensagem->remetenteNome);
	        
	        // recuperando destinatarios
	        $destinatarios = $mensagem->destinatariosArray;
	        
	        // loop para adicionar destinatarios
	        foreach($destinatarios as $destinatario) {
	        	// adicionando destinatarios
	            $this->_mail->addTo($destinatario);	
	        }
	        
	        // setando assunto
	        $this->_mail->setSubject($mensagem->assunto);
	        // setando corpo da mensagem
	        $this->_mail->setBodyText($mensagem->mensagem);
	        // setando data da mensagem
	        $this->_mail->setDate($mensagem->dataHoraMensagem);
	        
	        // enviando a mensagem
            $this->_mail->send($transport);

            // atualizando a hora do envio da mensagem
            $mensagem->dataHoraEnvio = Basico_OPController_UtilOPController::retornaDateTimeAtual();
            // recuperando a ultima versao do objeto
            $ultimaVersaoMensagem    = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($mensagem);
            // Atualizando a mensagem
            Basico_OPController_MensagemOPController::getInstance()->salvarObjeto($mensagem, $ultimaVersaoMensagem);

    		// salvando log de sucesso no envio de mensagem
    		$logOPController->salvarLog($pessoaPerfilOPController->retornaIdPessoaPerfilSistema(), $categoriaOPController->retornaIdCategoriaLogEmail(), LOG_MSG_EMAIL_SUCESSO);
		} catch(Exception $e){

			// salvando log de falha no envio de mensagem
    		$logOPController->salvarLog($pessoaPerfilOPController->retornaIdPessoaPerfilSistema(), $categoriaOPController->retornaIdCategoriaLogEmail(), LOG_MSG_EMAIL_FALHA . $e->getMessage());
			throw new Exception(MSG_ERRO_ENVIAR_EMAIL . $e->getMessage());
	    }
	}
	
	/**
	 * Retorna instância da classe Zend_Mail_Transport_Smtp
	 * 
	 * @param String $tipoAutenticacao
	 * @param String $username
	 * @param String $senha
	 * @param String $smtpServer
	 * @param Integer $smtpPort
	 * 
	 * @return Zend_Mail_Transport_Smtp $tr
	 */
	public function retornaTransportSmtp($tipoAutenticacao = SMTP_SERVER_AUTH_METHOD, $username = SMTP_USERNAME, $senha = SMTP_PASSWORD, $smtpServer = SMTP_SERVER_HOST, $smtpPort = SMTP_SERVER_PORT) 
	{
		// setando configuracoes do SMTP
		$config = array('auth'     => $tipoAutenticacao,
						'port'     => $smtpPort,
                        'username' => $username,
                        'password' => $senha);

		// recuperando o transporte SMTP
		try {
			$transport = new Zend_Mail_Transport_Smtp($smtpServer, $config);
		} catch (Exception $e) {
			
		    throw new Exception(MSG_ERRO_TRANSPORT_INVALIDO . $e->getMessage());
		}

		// retornando o transporte
		return $transport;
	}
}