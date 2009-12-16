<?php
/**
 * Mensageiro Controller
 *
 * Responsável pelo envio e recebimento de mensagem no sistema.
 * @subpackage Controller
 */
class Basico_MensageiroController 
{
	/**
	 * 
	 * @var object resource
	 */
	static private $singleton;
		
	/**
	 * 
	 * @return Basico_MensageiroController $singleton
	 */
    static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_MensageiroController();
		}
		return self::$singleton;
	}
		
	/**
	 * 
	 * @param Basico_Model_Mensagem $mensagem
	 * @return void
	 */
    public function enviar(Basico_Model_Mensagem $mensagem) {
        
    	try {
            //CARREGANDO O TRANSPORTER
			$tr = Basico_MensageiroController::retornaTransportSmtp('login', 'info@rochedoproject.com', 
	                                                                '@info#rochedo@', 'mail.rochedoproject.com');
			Zend_Mail::setDefaultTransport($tr);
			
			//ENVIANDO EMAIL
	        $zendMail = new Zend_Mail();
	        $zendMail->setFrom($mensagem->getRemetente(), $mensagem->getRemetenteNome());
	        
	        //ADICIONANDO DESTINATARIOS
	        $destinatarios = $mensagem->getDestinatariosArray();
	        
	        foreach($destinatarios as $destinatario) {
	            $zendMail->addTo($destinatario);	
	        }
	        
	        $zendMail->setSubject($mensagem->getAssunto());
	        $zendMail->setBodyText($mensagem->getMensagem());
	        $zendMail->setDate($mensagem->getDatahoraMensagem());
	        
            $zendMail->send($tr);

	    }catch(Exception $e){
			
            throw new Exception($e->getMessage());
	    }
	    
	   
	}
	
	/**
	 * 
	 * @param $tipoAutenticacao
	 * @param $username
	 * @param $senha
	 * @param $smtpServer
	 * @return Zend_Mail_Transport_Smtp $tr
	 */
	public function retornaTransportSmtp($tipoAutenticacao, $username, $senha, $smtpServer) {
		
		$config = array('auth'     => $tipoAutenticacao,
                        'username' => $username,
                        'password' => $senha);
				
		$tr = new Zend_Mail_Transport_Smtp($smtpServer, $config);
		return $tr;
		
	}
}