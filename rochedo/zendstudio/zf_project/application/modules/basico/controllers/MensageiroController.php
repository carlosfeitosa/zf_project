<?php

class Basico_MensageiroController extends Zend_Controller_Action {

		
    public function enviar($remetente, $nomeRemetente, $destinatarios, $nomeDestinatario,
		                   $assunto, $corpoMensagem, $categoriaMensagem) {
        
		// CAPTURANDO DATA LOCAL ATUAL
		$data = new Zend_Date();
		
		//  INICIALIZANDO CONTROLADORES
        $controladorCategoria     = Basico_CategoriaController::init();  
        
        // CAPTURANDO RESOURCE DO DB
        $db = $this->getInvokeArg('bootstrap')->getResource('db');

        try {	
        	// PREENCHER ROWINFO E RECUPERAR O LOGIN DO SISTEMA
            $rowInfo = new Basico_Model_RowInfo();
            $rowInfo->genericDateTimeCreation     = $data;
            $rowInfo->genericIdLoginCreation      = Basico_LoginController::getIdSistema();
            $rowInfo->genericDateTimeLastModified = $data;
            $rowInfo->genericIdLoginLastModified  = Basico_LoginController::getIdSistema();	
		                       	
			
			switch ($categoriaMensagem) {
				case 'EMAIL_VALIDACAO_USUARIO_PLAINTEXT' : 

					//capturando o objeto categoria
					$idCategoria = $controladorCategoria->retornaCategoria('EMAIL_VALIDACAO_USUARIO_PLAINTEXT');
					
					//SALVANDO A MENSAGEM
					$mensagem = new Basico_Model_Mensagem();
			        $mensagem->remetente     = $remetente;
			        $mensagem->destinatarios = $destinatarios;
			        $mensagem->assunto       = $assunto;
			        $mensagem->mensagem      = $corpoMensagem;
			        $mensagem->dataHora      = $data;
			        $mensagem->rowInfo       = $rowInfo->getXml();
			        $mensagem->idCategoria   = $idCategoria->id;
			        $mensagem->save();
			        
			        // SENDING MAIL
					$tr = Basico_MensageiroController::retornaTransportSmtp('login', 'info@rochedoproject.com', 
			                                                                '@info#rochedo@', 'mail.rochedoproject.com');
					Zend_Mail::setDefaultTransport($tr);
					
			        $zendMail = new Zend_Mail();
			        $zendMail->setFrom($remetente, $nomeRemetente);
			        $zendMail->addTo($destinatarios, $nomeDestinatario );
			        $zendMail->setSubject($assunto);
			        $zendMail->setBodyText($corpoMensagem);
			        $zendMail->setDate($data);
			        
	                $zendMail->send($tr);
				    break;
				    
	            default:
	            	throw new Exception(MSG_ERRO_CATEGORIA_MENSAGEM_INVALIDA);
                	    
			}
				
	    }catch(Exception $e){
			
            throw new Exception($e->getMessage());
	    }
	    
	   
	}
	
	public function salvarMensagem($novaMensagem) {
		
		$mensagem = new Basico_Model_Mensagem();
		$mensagem = $novaMensagem;
		$mensagem->save();
		
	}
	
	public function retornaTransportSmtp($tipoAutenticacao, $username, $senha, $smtpServer) {
		
		$config = array('auth'     => $tipoAutenticacao,
                        'username' => $username,
                        'password' => $senha);
				
		$tr = new Zend_Mail_Transport_Smtp($smtpServer, $config);
		return $tr;
		
	}
}