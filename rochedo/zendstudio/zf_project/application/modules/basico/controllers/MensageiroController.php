<?php

class Basico_MensageiroController extends Zend_Controller_Action {

		
    public function enviar($remetente, $nomeRemetente, $destinatario, $nomeDestinatario,
		                       $assunto, $corpoMensagem, $tipoMensagem) {

		$mensagem      = new Basico_Model_Mensagem();
		$mensagemEmail = new Basico_Model_MensagemEmail();
		$anexoMensagem = new Basico_Model_AnexoMensagem();
		
		//  CONTROLADORES
        $controladorPessoa        = Basico_PessoaController::init();
        $controladorDadosPessoais = Basico_DadosPessoaisController::init();
        $controladorCategoria     = Basico_CategoriaController::init();
        $controladorEmail         = Basico_EmailController::init();  
        $controladorLogin         = Basico_LoginController::init();       

        
		                       	
        try {	
        	// PREENCHER ROWINFO E RECUPERAR O LOGIN DO SISTEMA
            $data = new Zend_Date();
            $rowinfo = new Basico_Model_RowInfo();
            $rowinfo->genericDateTimeCreation = $data;
            $rowinfo->genericIdLoginCreation = Basico_LoginController::getIdSistema();
            $rowinfo->genericDateTimeLastModified = $data;
            $rowinfo->genericIdLoginLastModified = Basico_LoginController::getIdSistema();	
		                       	
		                       	
			if ($tipoMensagem === null or $tipoMensagem == ''){
				$tipoMensagem = EMAIL_VALIDACAO_USUARIO;
			}
			
			
			if ($tipoMensagem == EMAIL_VALIDACAO_USUARIO) {
				
				if ($remetente === null) {
					$remetente = 'sistema@rochedoproject.com';
				}
				
				//SALVANDO A MENSAGEM
				$data = new Zend_Date();
		        $mensagem->setRemetente($remetente);
		        $mensagem->setDestinatario($destinatario);
		        $mensagem->setAssunto($assunto);
		        $mensagem->setDestinatario($destinatario);
		        $mensagem->setMensagem($corpoMensagem);
		        $mensagem->setDataHora($data);
		        
		        $Categoria = $controladorCategoria->retornaCategoria(EMAIL_VALIDACAO_USUARIO);
		        $mensagem->setIdCategoria($Categoria->id);
		        
		        //Basico_MensageiroController::salvarMensagem($mensagem);
		        
		        
		       
		        // SENDING MAIL
				
		        $tr = Basico_MensageiroController::retornaTransport();
				Zend_Mail::setDefaultTransport($tr);
				
		        $zendMail = new Zend_Mail();
		        $zendMail->setFrom($remetente, $nomeRemetente);
		        $zendMail->addTo($destinatario, $nomeDestinatario );
		        $zendMail->setSubject($assunto);
		        $zendMail->setBodyText($corpoMensagem);
		        $zendMail->setDate($data);
		        
                $zendMail->send($tr);
                	    
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
	
	public function retornaTransport() {
		
		$config = array('auth' => 'login',
                'username' => 'info@rochedoproject.com',
                'password' => '@info#rochedo@');
				
		$tr = new Zend_Mail_Transport_Smtp('mail.rochedoproject.com', $config);
		return $tr;
		
	}
}