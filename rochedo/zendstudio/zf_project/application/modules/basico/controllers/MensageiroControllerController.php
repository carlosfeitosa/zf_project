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
	 * @return Basico_MensageiroController $singleton
	 */
    static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_MensageiroControllerController();
		}
		return self::$singleton;
	}
		
	/**
	 * Envia Mensagem
	 * @param Basico_Model_Mensagem $mensagem
	 * @return void
	 */
    public function enviar(Basico_Model_Mensagem $mensagem) {
        
    	try {
            //CARREGANDO O TRANSPORTER
			$transport = Basico_MensageiroControllerController::retornaTransportSmtp();
			Zend_Mail::setDefaultTransport($transport);
			
			//ENVIANDO EMAIL
	        $zendMail = new Zend_Mail(EMAIL_CHARSET);
	        $zendMail->setFrom($mensagem->getRemetente(), $mensagem->getRemetenteNome());
	        
	        //ADICIONANDO DESTINATARIOS
	        $destinatarios = $mensagem->getDestinatariosArray();
	        
	        foreach($destinatarios as $destinatario) {
	            $zendMail->addTo($destinatario);	
	        }
	        
	        $zendMail->setSubject($mensagem->getAssunto());
	        $zendMail->setBodyText($mensagem->getMensagem());
	        $zendMail->setDate($mensagem->getDatahoraMensagem());
	        
            $zendMail->send($transport);

	    }catch(Exception $e){
            throw new Exception(MSG_ERRO_ENVIAR_EMAIL . $e->getMessage());
	    }
	}
	
	/**
	 * Retorna instância da classe Zend_Mail_Transport_Smtp
	 * @param String $tipoAutenticacao
	 * @param String $username
	 * @param String $senha
	 * @param String $smtpServer
	 * @return Zend_Mail_Transport_Smtp $tr
	 */
	public function retornaTransportSmtp($tipoAutenticacao = SMTP_SERVER_AUTH_METHOD, $username = SMTP_USERNAME, $senha = SMTP_PASSWORD, $smtpServer = SMTP_SERVER_HOST) {
		
		$config = array('auth'     => $tipoAutenticacao,
                        'username' => $username,
                        'password' => $senha);

		try {
			$transport = new Zend_Mail_Transport_Smtp($smtpServer, $config);
		} catch (Exception $e) {
		    throw new Exception(MSG_ERRO_TRANSPORT_INVALIDO . $e->getMessage());
		}

		return $transport;
	}
}