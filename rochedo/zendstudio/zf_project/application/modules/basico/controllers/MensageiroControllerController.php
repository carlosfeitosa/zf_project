<?php
/**
 * Mensageiro Controller
 *
 * Responsável pelo envio e recebimento de mensagem no sistema.
 * @subpackage Controller
 */
class Basico_MensageiroControllerController 
{
	/**
	 * 
	 * @var Basico_MensageiroController 
	 */
	static private $singleton;
		
	/**
	 * Inicializa Controlador Mensageiro
	 * 
	 * @return Basico_MensageiroController $singleton
	 */
    static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			self::$singleton = new Basico_MensageiroControllerController();
		}
		
		return self::$singleton;
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
            // recuperando o transporte SMTP
			$transport = Basico_MensageiroControllerController::retornaTransportSmtp();
			Zend_Mail::setDefaultTransport($transport);
			
			// instanciando o enviador de e-mails
	        $zendMail = new Zend_Mail(EMAIL_CHARSET);
	        // setando remetente
	        $zendMail->setFrom($mensagem->remetente, $mensagem->remetenteNome);
	        
	        // recuperando destinatarios
	        $destinatarios = $mensagem->destinatariosArray;
	        
	        // loop para adicionar destinatarios
	        foreach($destinatarios as $destinatario) {
	        	// adicionando destinatarios
	            $zendMail->addTo($destinatario);	
	        }
	        
	        // setando assunto
	        $zendMail->setSubject($mensagem->assunto);
	        // setando corpo da mensagem
	        $zendMail->setBodyText($mensagem->mensagem);
	        // setando data da mensagem
	        $zendMail->setDate($mensagem->datahoraMensagem);
	        
	        // enviando a mensagem
            $zendMail->send($transport);
		} catch(Exception $e){
			
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
	 * 
	 * @return Zend_Mail_Transport_Smtp $tr
	 */
	public function retornaTransportSmtp($tipoAutenticacao = SMTP_SERVER_AUTH_METHOD, $username = SMTP_USERNAME, $senha = SMTP_PASSWORD, $smtpServer = SMTP_SERVER_HOST) 
	{
		// setando configuracoes do SMTP
		$config = array('auth'     => $tipoAutenticacao,
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