<?php

class Basico_MensageiroController 
{
	static private $singleton;
		
    static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_MensageiroController();
		}
		return self::$singleton;
	}
		
    public function enviar(Basico_Model_Mensagem $mensagem) {
        
    	try {
            //SENDING MAIL
			$tr = Basico_MensageiroController::retornaTransportSmtp('login', 'info@rochedoproject.com', 
	                                                                '@info#rochedo@', 'mail.rochedoproject.com');
			Zend_Mail::setDefaultTransport($tr);
			
	        $zendMail = new Zend_Mail();
	        $zendMail->setFrom($mensagem->remente, '');
	        $zendMail->addTo($mensagem->destinatarios, '');
	        $zendMail->setSubject($mensagem->assunto());
	        $zendMail->setBodyText($mensagem->mensagem);
	        $zendMail->setDate($mensagem->datahoraMensagem);
	        
                $zendMail->send($tr);

	    }catch(Exception $e){
			
            throw new Exception($e->getMessage());
	    }
	    
	   
	}
	
	public function retornaTransportSmtp($tipoAutenticacao, $username, $senha, $smtpServer) {
		
		$config = array('auth'     => $tipoAutenticacao,
                        'username' => $username,
                        'password' => $senha);
				
		$tr = new Zend_Mail_Transport_Smtp($smtpServer, $config);
		return $tr;
		
	}
}