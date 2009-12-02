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
            //CARREGANDO O TRANSPORTER
			$tr = Basico_MensageiroController::retornaTransportSmtp('login', 'info@rochedoproject.com', 
	                                                                '@info#rochedo@', 'mail.rochedoproject.com');
			Zend_Mail::setDefaultTransport($tr);
			
			//SEPARANDO EMAIL REMETENTE
			$remetente = $mensagem->getRemetente();
			$remetenteEmailAux  = strrchr($remetente, '['); 
			$remetenteEmail = substr($remetenteEmailAux, strpos($remetenteEmailAux, '[')+1, strpos($remetenteEmailAux, ']')-1 ); 
			
			//SEPARANDO NOME REMETENTE
			$remetenteNome = substr($remetente, 0, strpos($remetente, '[')-1);

			//ENVIANDO EMAIL
	        $zendMail = new Zend_Mail();
	        $zendMail->setFrom($remetenteEmail, $remetenteNome);
	        $zendMail->addTo($mensagem->getDestinatarios());
	        $zendMail->setSubject($mensagem->getAssunto());
	        $zendMail->setBodyText($mensagem->getMensagem());
	        $zendMail->setDate($mensagem->getDatahoraMensagem());
	        
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