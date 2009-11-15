<?php

class Basico_MensageiroController extends Zend_Controller_Action {
	
	
    public function enviar($remetente, $nomeRemetente, $destinatario, $nomeDestinatario,
		                       $assunto, $corpoMensagem, $tipoMensagem=null) {
        try {		
		                       	
		                       	
			if ($tipoMensagem === null){
				$tipoMensagem = MENSAGEM_EMAIL_SIMPLES;
			}
			
			
			if ($tipoMensagem == MENSAGEM_EMAIL_SIMPLES) {
				
				if ($remetente === null) {
					$remetente = 'sistema@rochedoproject.com';
				}
				$mensagem = new Basico_Model_Mensagem();
		        $mensagem->setRemetente($remetente);
		        $mensagem->setDestinatario($destinatario);
		        $mensagem->setAssunto($assunto);
		        $mensagem->setDestinatario($destinatario);
		        $mensagem->setMensagem($corpoMensagem);
		        $mensagem->setDataHora(getdate(time()));
		        $mensagem->setIdCategoria(2);
		        $mensagem->save($mensagem);
		        
		        $mensagemEmail = new Basico_Model_MensagemEmail();
		        
		        $zendMail = new Zend_Mail();
		        $zendMail->setFrom($remetente, $nomeRemetente);
		        $zendMail->addTo($destinatario, $nomeDestinatario );
		        $zendMail->setSubject($assunto);
		        $zendMail->setBodyHtml($corpoMensagem);
		        $zendMail->send($tr);
		    
			}
				
	    }catch(Exception $e){
			$db->rollback();
            throw new Exception($e->getMessage());
				
		}
	}
}