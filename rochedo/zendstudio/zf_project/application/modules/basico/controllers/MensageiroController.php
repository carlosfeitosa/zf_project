<?php

class Basico_MensageiroController 
{
	public function init() {
		
	}
		
    public function enviar(Basico_Model_Mensagem $mensagem) {
        
    	try {
            //SENDING MAIL
			$tr = Basico_MensageiroController::retornaTransportSmtp('login', 'info@rochedoproject.com', 
	                                                                '@info#rochedo@', 'mail.rochedoproject.com');
			Zend_Mail::setDefaultTransport($tr);
			
	        $zendMail = new Zend_Mail();
	        $zendMail->setFrom($remetente, $nomeRemetente);
	        $zendMail->addTo($destinatarios, $nomeDestinatario);
	        $zendMail->setSubject($assunto);
	        $zendMail->setBodyText($corpoMensagem);
	        $zendMail->setDate($data);
	        
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