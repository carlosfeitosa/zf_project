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
    public function enviar(Basico_Model_Mensagem $mensagem, $idPessoaPerfilRemetente, array $arrayIdsPessoasPerfisDestinatarios, array $arrayIdsPessoasPerfisDestinatariosCopiaCarbonada = array(), array $arrayIdsPessoasPerfisDestinatariosCopiaCarbonadaOculta = array()) {

    	// verificando se a mensagem foi enviada
    	if($mensagem->enviada){
    		// interrompendo execucao do metodo e retornando falso
    		return false;
    	}
        
    	// bloco de tentativa de envio de mensagem
    	try {
    		// iniciando transacao 
    		Basico_OPController_PersistenceOPController::bdControlaTransacao();
    		
    		// associando / verificando as pessoas envolvidas na mensagem
			if(!Basico_OPController_MensagemOPController::getInstance()->criaRelacaoPessoasPerfisMensagensCategoriasAssossiadas($mensagem,  $idPessoaPerfilRemetente, $arrayIdsPessoasPerfisDestinatarios, $arrayIdsPessoasPerfisDestinatariosCopiaCarbonada, $arrayIdsPessoasPerfisDestinatariosCopiaCarbonadaOculta)){
    		   // cancelando transacao
    		   Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
	    	   
    		   // interrompendo execucao do metodo e retornando falso
	    	   return false;
    		}
    		  
    		// salvando log de tentativa de envio de mensagem
    		Basico_OPController_LogOPController::salvarLogViaSQL(Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL(), Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_EMAIL, true), LOG_MSG_EMAIL);

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
	        $destinatariosNomes = $mensagem->destinatariosNomesArray;
	        
	        $i = 0;
	        // loop para adicionar destinatarios
	        foreach($destinatarios as $destinatario) {
	        	// adicionando destinatarios
	            $this->_mail->addTo($destinatario, $destinatariosNomes[$i]);	
	            $i++;
	        }
	        
	        // setando assunto
	        $this->_mail->setSubject($mensagem->assunto);
	        // setando corpo da mensagem
	        $this->_mail->setBodyText($mensagem->mensagem);
	        // setando data da mensagem
	        $this->_mail->setDate($mensagem->datahoraCriacao);
	        
	        // enviando a mensagem
            $this->_mail->send($transport);

            // atualizando a hora do envio da mensagem
            $mensagem->datahoraEnvio = Basico_OPController_UtilOPController::retornaDateTimeAtual();
            // recuperando a ultima versao do objeto
            $ultimaVersaoMensagem    = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($mensagem);
            // Atualizando a mensagem
            Basico_OPController_MensagemOPController::getInstance()->salvarObjeto($mensagem, $ultimaVersaoMensagem);

    		// salvando log de sucesso no envio de mensagem
    		Basico_OPController_LogOPController::salvarLogViaSQL(Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL(), Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_EMAIL, true), LOG_MSG_EMAIL_SUCESSO);
    		
    		// finalizando transacao
    		Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
    		 
		} catch(Exception $e){
    		
			// cancelando transacao
    		Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
			
			// salvando log de falha no envio de mensagem
    		Basico_OPController_LogOPController::salvarLogViaSQL(Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL(), Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_EMAIL, true), LOG_MSG_EMAIL_FALHA . $e->getMessage());
    		
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