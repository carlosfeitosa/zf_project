<?php
/**
 * Login Controller
 *
 * Controla Ações de Login/Logout e Cadastro do sistema.
 * 
 * @uses       Basico_Model_Login
 * @subpackage Controller
 * @author João Henrique M.Bione (joao.henrique.bione@rochedoproject.com)
 * @since 23/03/2011
 */

class Basico_LoginController extends Basico_AbstractActionController_RochedoGenericActionController
{	
    /**
	 * Inicializa controlador Login
	 * 
	 * @return void
	 */
	public function init()
    {
		// definindo o contexto
		$pdfParametros = array('suffix' => 'pdf', 'headers' => array('Content-Type' => 'application/pdf'));
		$xlsParametros = array('suffix' => 'xls', 'headers' => array('Content-Type' => 'application/xls'));
		$plaintextParametros = array('suffix' => 'plaintext', 'headers' => array('Content-Type' => 'application/plaintext'));
		$impressaoParametros = array('suffix' => 'impressao', 'headers' => array('Content-Type' => 'application/impressao'));
        
		/*
		// adicionando os contextos e definindo as permissoes por acao
    	$this->_helper->contextSwitch()
    					->addContext('pdf', $pdfParametros)
    					->addContext('xls', $xlsParametros)
    					->addContext('plaintext', $plaintextParametros)
    					->addContext('impressao', $impressaoParametros)
        	            ->addActionContext('cadastrarusuarionaovalidado', array('pdf', 'plaintext', 'impressao'))
						->setAutoJsonSerialization(true)
						->initContext();
		*/
    }

    /**
	 * Inicializa os controladores necessários para operação deste action controller
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractActionController_RochedoGenericActionController::_initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/06/2012
	 */
	protected function _initControllers()
	{
		return;
	}

    /**
	 * Retorna Formulário de Cadastro de Novo Usuario
	 * 
	 * @return Basico_Form_CadastrarUsuarioNaoValidado
	 */
    public function getFormCadastroUsuarioLoginNaoValidado()
    {
        return new Basico_Form_CadastrarUsuarioNaoValidado();
    }

    /**
	 * Retorna Formulário de Cadastro de Usuario Validado
	 * 
	 * @return Basico_Form_CadastrarUsuarioValidado
	 */
    public function getFormCadastroUsuarioValidado()
    {                  
        return new Basico_Form_CadastrarUsuarioValidado();
    }

    /**
	 * Valida Formulário de Cadastro de Novo Usuário nao validado.
	 * 
	 * @param  Basico_Form_CadastrarUsuarioNaoValidado $formEntrada 
	 * 
	 * @return Boolean
	 */
	private function validaForm(Basico_Form_CadastrarUsuarioNaoValidado $formEntrada)
	{
		// verificando se a requisicao eh foi enviada por post
		if (!$this->getRequest()->isPost()) {
			
			// encaminhado para a ação do proprio formulario
            return $this->_forward($formEntrada->getName(), 'login', 'basico');
        }
        
        // verificando se o formulario passou pela validacao
		if (!$formEntrada->isValid($this->getRequest()->getPost())) {
			// recuperando o formulario
            $this->view->content = array($formEntrada);
            
            return;
        }
        return true;
	}
    
    /**
	 * Ação principal do controlador Login. Seta o form na view
	 * 
	 * @return void
	 */
    public function indexAction()
    {
    	// setando o form na view
        $this->view->content = array($this->getForm());
    }
    
    /**
	 * Carrega formulário de cadastro de novo usuário no atributo form da view.
	 * 
	 * @return void 
	 */
    public function cadastrarusuarionaovalidadoAction()
    {   
        // carregando o titulo e subtitulo da view
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO'));
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO'));

    	// carrega o formulario na view
    	$content[] = $this->getFormCadastroUsuarioLoginNaoValidado();
		
    	// enviado conteúdo para a view
    	$this->view->content = $content; 
    	
		// renderiza a view no script default
		$this->_helper->Renderizar->renderizar();
    }
    
    
    private function initFormCadastrarUsuarioValidado(Basico_Form_CadastrarUsuarioValidado &$formCadastrarUsuarioValidado, $idPessoa, $versaoDadosPessoais)
    {
    	// inserindo elementos hidden e setando valores
    	Basico_OPController_UtilOPController::adicionaElementoForm($formCadastrarUsuarioValidado, 'hidden', 'idPessoa', array('value' => $idPessoa));
    	Basico_OPController_UtilOPController::adicionaElementoForm($formCadastrarUsuarioValidado, 'hidden', 'versaoDadosPessoais', array('value' => $versaoDadosPessoais));
    	// removendo labels dos elementos hidden
	    $formCadastrarUsuarioValidado->idPessoa->removeDecorator('Label');
		$formCadastrarUsuarioValidado->versaoDadosPessoais->removeDecorator('Label');
		
		//adicionando chamada a função do password strength checker para o campo senha
		//$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenha->setAttribs(array('onKeyUp' => "chkPass(document.forms['BasicoCadastrarUsuarioValidado'].BasicoCadastrarUsuarioValidadoSenha.value, " . Basico_OPController_UtilOPController::retornaJsonMensagensPasswordStrengthChecker() . ")"));
		
		//adicionando multi-options para o radioButton sexo
	    $formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSexo->addMultiOptions(array(0 => $this->view->tradutor('GENERO_MASCULINO'), 1 => $this->view->tradutor('GENERO_FEMININO')));
	    
	    // setando mensagens do validator Identical para o campo senhaConfirmacao
	    //$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getValidator('Identical')->setMessages(array(Zend_Validate_Identical::NOT_SAME => $this->view->tradutor('FORM_ELEMENT_VALIDATOR_INDETICAL_NOT_SAME_SENHA_CONFIRMACAO')));
	    // setando o campo que tem que ser identico ao campo senhaConfirmacao
		//$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getValidator('Identical')->setToken('BasicoCadastrarUsuarioValidadoSenha');
		
		// capturando a url do metodo que retorna se o login esta disponivel ou nao 
	    //$urlMetodo = Basico_OPController_UtilOPController::retornaStringEntreCaracter(Basico_OPController_UtilOPController::retornaServerHost() . $this->view->urlEncryptModuleControllerAction('basico', 'login', 'verificadisponibilidadelogin'), "'");
	    	
	    // adicionando a chamada da função que verifica a disponibilidade do login a ser utilizado.
	   //$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoLogin->setAttribs(array('onBlur' => "verificaDisponibilidade('login', 'login', this.value, document.getElementById('idPessoa').value ,dijit.byId('BasicoCadastrarUsuarioValidadoNome').getValue(), dijit.byId('BasicoCadastrarUsuarioValidadoDataNascimento').getValue(), {$urlMetodo})", 'onkeyup' => "validaString(this, 'login')", 'onblur' => "validaString(this, 'login')"));
	    
	    // colocando o div do password strenght checker
	   // $formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoPasswordStrengthChecker->setValue("<div id='scorebarBorder'><div id='score'>0%</div><div id='scorebar'>&nbsp;</div></div><div id='complexity'></div>");
    }

    /**
     * Salva os dados do usuario validado atraves dos dados submetidos pelo formulario Basico_Form_CadastrarUsuarioValidado
     * 
     * @param Array $arrayPost
     * @param Basico_Form_CadastrarUsuarioValidado $formCadastrarUsuarioValidado
     */
    private function salvarDadosUsuarioValidado($arrayPost, Basico_Form_CadastrarUsuarioValidado $formCadastrarUsuarioValidado)
    {
    	try {
    		// iniciando a transação
			Basico_OPController_PersistenceOPController::bdControlaTransacao();
    		
	    	// inicializando o formulario
	    	$this->initFormCadastrarUsuarioValidado($formCadastrarUsuarioValidado, $arrayPost['idPessoa'], $arrayPost['versaoDadosPessoais']);
	    	
	    	// validando formulario
		    if ($formCadastrarUsuarioValidado->isValid($arrayPost)) {
		    		
		    	// verificando a disponibilidade do login
		    	if (!Basico_OPController_DBCheckOPController::checaDisponibilidadeString('basico_pessoa.login', 'login', $this->getRequest()->getParam('BasicoCadastrarUsuarioValidadoLogin'))) {
		    		
		    		// carregando array do cabecalho da view
				    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO'));
				    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO'));
		    		
		    		// recuperando o titulo do dialog
			   		$tituloDialogSugestaoLogin = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('FORM_TITLE_SUGESTAO_LOGIN');
			   		
			   		// carregando array com parametros para montagem da url que carrega as sugestoes de login
			   		$arrayParametros = array('stringPesquisa' => $arrayPost['BasicoCadastrarUsuarioValidadoLogin'],
			   								 'idPessoa' => $arrayPost['idPessoa'],
			   								 'nome' => $arrayPost['BasicoCadastrarUsuarioValidadoNome'],
			   								 'dataNascimento' => $arrayPost['BasicoCadastrarUsuarioValidadoDataNascimento']);
			   		// montando url para recuperacao das sugestoes de login
			   		$urlSugestaoLogin = Basico_OPController_UtilOPController::retornaStringEntreCaracter($this->view->urlEncryptModuleControllerAction('basico', 'login', 'exibirformsugestaologin', $arrayParametros), "'");
			   		
			   		// escrevendo mensagem de login nao disponivel	
					$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoLoginDisponivel->setValue("<span style='color: red; font-weight: bold;'>" .
							str_replace(MENSAGEM_TAG_LINK_SUGESTOES_LOGIN, "<a href='#' onclick=\"exibirDialogUrl('Basico_Form_SugestaoLogin', {$urlSugestaoLogin}, '{$tituloDialogSugestaoLogin}');\">{$this->view->tradutor("MENSAGEM_TEXTO_LINK_AQUI")}</a>", $this->view->tradutor('LOGIN_DISPONIBILIDADE_LABEL_LOGIN_NAO_DISPONIVEL')) .
							"</span>");
					
					$content[] = $formCadastrarUsuarioValidado;
					
					// enviado conteúdo para a view
		    		$this->view->content = $content;
		    		
		    		// retorna para salvarusuariovalidadoAction
		    		return false;
		    	}
		
		    	// salvando os dados pessoais
		    	Basico_OPController_PessoaAssocDadosOPController::getInstance()->salvarDadosPessoaisViaFormCadastrarUsuarioValidado($arrayPost);
		    	
		    	// salvando os dados biometricos do usuario
		   		Basico_OPController_DadosBiometricosOPController::getInstance()->salvarDadosBiometricosViaFormCadastrarUsuarioValidado($arrayPost);
	
		   		// salvando e recuperando o login do usuario
		   		$novoLogin = Basico_OPController_PessoaLoginOPController::getInstance()->salvarLoginViaFormCadastrarUsuarioValidado($arrayPost);	    	
		    		
		   		// recuperando o email primario da pessoa
		    	$emailPrimario = Basico_OPController_ContatoCpgEmailOPController::getInstance()->retornaObjetoEmailPrimarioPessoa($arrayPost['idPessoa']);
		    	
		    	// validando o email primario do usuario
		    	Basico_OPController_ContatoCpgEmailOPController::getInstance()->validarEmailPrimarioPessoa($arrayPost['idPessoa']);
		    	
		    	// atualizando pessoaPerfil do usuario para usuarioValidado
			    Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->editarPessoaPerfil($arrayPost['idPessoa'], Basico_OPController_PerfilOPController::getInstance()->retornaObjetoPerfilUsuarioNaoValidado()->id, Basico_OPController_PerfilOPController::getInstance()->retornaObjetoPerfilUsuarioValidado()->id);

		    	// verificando credenciais
				if (Basico_OPController_AutenticadorOPController::getInstance()->retornaAutenticacaoUsuarioPorLoginSenha($novoLogin->login, $novoLogin->senha)) { 
				 	// efetuando o logon
				   	Basico_OPController_PessoaLoginOPController::getInstance()->efetuaLogon($novoLogin->login);
				}
				
				// salvando e enviando a mensagem de confirmacao da conclusao do cadastro
			    Basico_OPController_PessoaLoginOPController::getInstance()->enviaMensagemConfirmacaoConclusaoCadastroUsuarioValidado($arrayPost['idPessoa']);
			    
		    	// salvando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

				// retorna para salvarusuariovalidadoAction
				return true;
				
	    	}else{
	    		
	    		// carregando array do cabecalho da view
			    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO')); 
			    $content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO'));
			    
			    // inicializando o formulario
	    		$this->initFormCadastrarUsuarioValidado($formCadastrarUsuarioValidado, $arrayPost['idPessoa'], $arrayPost['versaoDadosPessoais']);
			    
	    		// carregando form na view
	    		$content[] = $formCadastrarUsuarioValidado;
	    		
	    		// enviado conteúdo para a view
	    		$this->view->content = $content;
	    		
	    		// retornando para salvarusuariovalidadoAction
	    		return false;
	    	}
	    	
	    	//$this->_helper->Renderizar->renderizar();
	    	
    	}catch (Exception $e){
    		// voltando a transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
			throw new Exception($e->getMessage());
    	}
    }
    
    /**
     * Cadastra o usuario já validado.
     * @return void
     */
    public function salvarusuariovalidadoAction()
    {
    	try {
	        // recuperando dados da requisição
	        $post                = $this->getRequest()->getPost();
	    	$idPessoa            = (int) $post['idPessoa'];
	    	$sexo                = (int) $post['BasicoCadastrarUsuarioValidadoSexo'];
	    	$versaoDadosPessoais = (int) $post['versaoDadosPessoais'];
	    	
	    	// recuperando data do aceite dos termos de uso do sistema
	    	$session = Basico_OPController_SessionOPController::registraSessaoUsuario();
	    	
	    	if (isset($session->dataAceite)) { 
	    		
	    		// colocando a data do aceite no array do post
	    		$post['dataAceite'] = $session->dataAceite;
	    				    	
		    	// recuperando formulario e setando propriedades
		        $formCadastrarUsuarioValidado = $this->getFormCadastroUsuarioValidado();
		        
		        // inicializando formulario
		        $this->initFormCadastrarUsuarioValidado($formCadastrarUsuarioValidado, $idPessoa, $versaoDadosPessoais);
				
	        	// salvando dados do usuario
	        	if ($this->salvarDadosUsuarioValidado($post, $formCadastrarUsuarioValidado)) {
	        		// encaminhado para a ação sucessosalvarusuariovalidado
	        		return $this->_forward('sucessosalvarusuariovalidado', 'login', 'basico');
	        	}
	        	
    		}else{
    			// carregando array do cabecalho da view
				$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_ACEITE_TERMOS_USO_TITULO')); 
				$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_ACEITE_TERMOS_USO_SUBTITULO'));
	
				// recuperando form inicializado
				$form = Basico_OPController_PessoaLoginOPController::getInstance()->initFormAceiteTermosUso($idPessoa);
	
		    	// carregando form e conteudo na view
		    	$content[] = $form;
		    	$this->view->content = $content;
		    	
    		}
		        
    		// renderizando a view
	        $this->_helper->Renderizar->renderizar();
	        
    	}catch(Exception $e){
    		// lançando o erro
	        throw new Exception($e->getMessage());
    	}
    }

	public function sucessosalvarusuariovalidadoAction()
	{
		// carregando array do cabelho
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor("VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_TITULO"));
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor("VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_SUBTITULO"));
    	$content[] = str_replace(MENSAGEM_TAG_LINK_MEU_PERFIL , 
    	                                                       "<a href='{$this->view->urlEncrypt($this->_helper->url('index', 'dadosusuario', 'basico'))}'>{$this->view->tradutor("MENSAGEM_TEXTO_LINK_AQUI")}</a>",
    	                                                       Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor("VIEW_LOGIN_CADASTRAR_USUARIO_VALIDADO_SUCESSO_MENSAGEM"))
    	                                                       );

		// enviado conteúdo para a view
        $this->view->content = $content;

		// renderiza a view no script default
		$this->_helper->Renderizar->renderizar();
	}

    /**
     * Checa se o login está disponivel;
     * @return void
     */
    public function verificadisponibilidadeloginAction()
    {
    	// recuperando os parametros da requisicao
    	$post = $this->getRequest()->getParams();
    	
    	if ($post['stringPesquisa'] != "") {
	    	//desabilitando layout e render
	    	$this->_helper->layout()->disableLayout();
	        $this->_helper->viewRenderer->setNoRender(true);
	
	        //checando a disponibilidade do login
	    	$loginDisponivel = Basico_OPController_DBCheckOPController::checaDisponibilidadeString('basico_pessoa.login', 'login', $post['stringPesquisa']);
	    	
	    	
	    	
	    	if (!$loginDisponivel) {
	    		
	    		// recuperando o titulo do dialog
	    		$tituloDialogSugestaoLogin = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('FORM_TITLE_SUGESTAO_LOGIN');
	    		
	    		// carregando array com parametros para montagem da url que carrega as sugestoes de login
		   		$arrayParametros = array('stringPesquisa' => $post['stringPesquisa'],
		   								 'idPessoa' => $post['idPessoa'],
		   								 'nome' => $post['nome'],
		   								 'dataNascimento' => $post['dataNascimento']);
		   		// montando url para recuperacao das sugestoes de login
		   		$urlSugestaoLogin = Basico_OPController_UtilOPController::retornaStringEntreCaracter($this->view->urlEncryptModuleControllerAction('basico', 'login', 'exibirformsugestaologin', $arrayParametros), "'");
	    		
	    		// escrevendo mensagem de login nao disponivel	
				echo "<span style='color: red; font-weight: bold;'>" .
					 	str_replace(MENSAGEM_TAG_LINK_SUGESTOES_LOGIN, "<a href='#' onclick=\"exibirDialogUrl('Basico_Form_SugestaoLogin', {$urlSugestaoLogin}, '{$tituloDialogSugestaoLogin}');\">{$this->view->tradutor("MENSAGEM_TEXTO_LINK_AQUI")}</a>", $this->view->tradutor('LOGIN_DISPONIBILIDADE_LABEL_LOGIN_NAO_DISPONIVEL')) .
				     "</span>";
				
			}else{
				// escrevendo mensagem de login disponivel
			    echo "<span style='color: green; font-weight: bold;'>{$this->view->tradutor('LOGIN_DISPONIBILIDADE_LABEL_LOGIN_DISPONIVEL')}</span>";
			    
			}
    	}else{
    		echo "";
    	}
    	
    }
    
    /**
	 * Verifica a existência ou não do email a ser cadastrado no sistema e toma uma das seguintes ações: 
	 * Cadastro ou re-envio de email ou mensagem alertando sobre email existente e já validado.
	 * 
	 * @return void
	 */
    public function verificanovologinAction()
    {
    	// carregando o formulario
    	$form = $this->getFormCadastroUsuarioLoginNaoValidado();

    	// verificando se o formulario passou por sua validacao
        if($this->validaForm($form) == true){
        	
	        // recuperando parametros
            $email = $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoEmail');
            
            // verifica se o e-mail existe no banco de dados
	        $emailParaValidacao = Basico_OPController_ContatoCpgEmailOPController::getInstance()->verificaEmailExistente($email);

	        // checando o resultado da verificacao de existencia do e-mail
	        if ($emailParaValidacao !== null){

	        	// recuperando parametros
		        $idEmail           = Basico_OPController_ContatoCpgEmailOPController::getInstance()->retornaIdEmailPorEmail($email);
	            $idCategoriaToken  = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
	            $idPessoa          = Basico_OPController_ContatoCpgEmailOPController::getInstance()->retornaIdProprietarioEmailPorIdEmail($idEmail);

	        	// checando se o e-mail ja foi validado
	            if ($emailParaValidacao == true){
	            	// recuperando pessoa perfil de usuario validado
	            	$idPessoaPerfil    = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoa)->id;

	            	// enviando mensagem de aviso de tentativa de registro utilizando o email primario de usuario do sistema
	            	
	            	// setando e salvando mensagem
			        $novaMensagem = Basico_OPController_MensagemOPController::getInstance()->retornaMensagemTentativaRegistroEmailPrimario($idPessoa, $email);       
			             
			        // enviando a mensagem
			        Basico_OPController_MensageiroOPController::getInstance()->enviar($novaMensagem, Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL(), array($idPessoaPerfil));
			            
	            	// encaminhado para a ação erroemailvalidadoexistentenosistema
	            	return $this->_redirect($this->view->urlEncryptModuleControllerAction('basico', 'login', 'erroemailvalidadoexistentenosistema', null, true));
				}else {
	            	// iniciando a transacao
           			Basico_OPController_PersistenceOPController::bdControlaTransacao();

	            	try {
		            	// recuperando pessoa perfil de usuario validado
		            	$idPessoaPerfil    = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioNaoValidadoPorIdPessoa($idPessoa)->id;

			            // setando e salvando token
			            $idNovoToken = Basico_OPController_CpgTokenOPController::getInstance()->retornaIdNovoObjetoToken($idEmail, $idCategoriaToken);

			            // recuperando o nome do destinatario
			            $nomeDestinatario = $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoNome');
			
			            // carregando a assinatura da mensagem
			        	$assinatura = Basico_OPController_AssocclPessoaPerfilAssocDadosOPController::getInstance()->retornaAssinaturaMensagemEmailSistema();
			            
			            // substituindo tags
			            $arrayTagsValoresMensagem = array(MENSAGEM_TAG_NOME                 => $nomeDestinatario, 
			        									  MENSAGEM_TAG_LINK_VALIDACAO_EMAIL => "http://" . $_SERVER['HTTP_HOST'] . Zend_Controller_Front::getInstance()->getBaseUrl() . LINK_VALIDACAO_USUARIO . Basico_OPController_CpgTokenOPController::getInstance()->retornaTokenEmailPorId($idNovoToken), 
			        									  MENSAGEM_TAG_ASSINATURA_MENSAGEM  => $assinatura);
			
						// recuperando o objeto categoria do tamplate a mensagem
						$idCategoriaMensagem = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai('SISTEMA_MENSAGEM_EMAIL_TEMPLATE_REGISTRO_USUARIO_PLAINTEXT');
						
						// recuperando o id do template da mensagem
			            $idMensagemTemplate = Basico_OPController_MensagemTemplateOPController::getInstance()->retornaIdMensagemTemplatePorNomeTemplateIdCategoria('SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO', $idCategoriaMensagem);
					        									  
			            // salvando e recuperando a mensagem para envio
			            $objNovaMensagem = Basico_OPController_MensagemOPController::getInstance()->retornaModeloMensagemTemplateViaArrayIdsDestinatarios($idCategoriaMensagem, $idMensagemTemplate , array($idPessoa), null, $arrayTagsValoresMensagem);
			            
			            // enviando a mensagem
			            Basico_OPController_MensageiroOPController::getInstance()->enviar($objNovaMensagem, Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL(), array($idPessoaPerfil));
			             
			            // salvando a transacao
			            Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

		            	// encaminhado para a ação erroemailnaovalidadoexistentenosistema
		            	return $this->_redirect($this->view->urlEncryptModuleControllerAction('basico', 'login', 'erroemailnaovalidadoexistentenosistema', null, true));	                
	            	}catch(Exception $e) {
	            		// cancelando a transacao
	            		Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

	            		throw new Exception($e->getMessage());
	            	}
	           	}
	        }else {
	        	
	        	// chamando metodo pra salvar um novo email de usuario
	            $this->salvarUsuarioNaoValidado();
	        }
        }       	
       	
		// carregando o titulo e subtitulo da view
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_TITULO'));
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_CADASTRAR_USUARIO_NAO_VALIDADO_SUBTITULO'));
    	$content[] = $form;
          
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();        
    }
    
    /**
	 * Inseri os dados do novo usuário no banco de dados, envia mensagem de confirmação e email e salva 
	 * log da operação.
	 * 
	 * @return void
	 */
    public function salvarUsuarioNaoValidado()
    {
        // iniciando transacao
        Basico_OPController_PersistenceOPController::bdControlaTransacao();
        
        try {
            // recuperando o id da nova pessoa
            $idNovaPessoa = Basico_OPController_PessoaOPController::getInstance()->retornaIdNovoObjetoPessoa();
            
            // carregando o objeto perfil do usuario nao validado
            $objPerfilUsuarioNaoValidado = Basico_OPController_PerfilOPController::getInstance()->retornaObjetoPerfilUsuarioNaoValidado();

            // setando e salvando a relacao de pessoa com perfil
            $idNovaPessoasPerfis = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaIdNovoObjetoPessoasPerfis($idNovaPessoa, $objPerfilUsuarioNaoValidado->id);

            // setando e salvando os dados pessoais
            $idNovoDadosPessoais = Basico_OPController_PessoaAssocDadosOPController::getInstance()->retornaIdNovoObjetoDadosPessoais($idNovaPessoa, $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoNome'));

            // recuperando o id do objeto categoria de email primario
            $idCategoriaEmailPrimario = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(EMAIL_PRIMARIO);

            // salvando o e-mail e recuperando o id 
            $idNovoEmail = Basico_OPController_ContatoCpgEmailOPController::getInstance()->retornaIdNovoObjetoEmail($this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoEmail'), $idNovaPessoa, $idCategoriaEmailPrimario);

            // recuperando objeto categoria email validacao plain text template
            $idCategoriaToken = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);

            // setando e salvando o token
            $idNovoToken = Basico_OPController_CpgTokenOPController::getInstance()->retornaIdNovoObjetoToken($idNovoEmail, $idCategoriaToken);

            // recuperando o nome do destinatario
            $nomeDestinatario = $this->getRequest()->getParam('BasicoCadastrarUsuarioNaoValidadoNome');

            // carregando a assinatura da mensagem
        	$assinatura = Basico_OPController_AssocclPessoaPerfilAssocDadosOPController::getInstance()->retornaAssinaturaMensagemEmailSistema();
            
            // substituindo tags
        	$arrayTagsValoresMensagem = array(MENSAGEM_TAG_NOME                 => $nomeDestinatario, 
        									  MENSAGEM_TAG_LINK_VALIDACAO_EMAIL => "http://" . $_SERVER['HTTP_HOST'] . Zend_Controller_Front::getInstance()->getBaseUrl() . LINK_VALIDACAO_USUARIO . Basico_OPController_CpgTokenOPController::getInstance()->retornaTokenEmailPorId($idNovoToken), 
        									  MENSAGEM_TAG_ASSINATURA_MENSAGEM  => $assinatura);

			// recuperando o objeto categoria do tamplate a mensagem
			$idCategoriaMensagem = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai('SISTEMA_MENSAGEM_EMAIL_TEMPLATE_REGISTRO_USUARIO_PLAINTEXT');
			
			// recuperando o id do template da mensagem
            $idMensagemTemplate = Basico_OPController_MensagemTemplateOPController::getInstance()->retornaIdMensagemTemplatePorNomeTemplateIdCategoria('SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT', $idCategoriaMensagem);        									  
        									  
            // salvando e recuperando a mensagem para envio
            $arrayNovaMensagem = Basico_OPController_MensagemOPController::getInstance()->retornaModeloMensagemTemplateViaArrayIdsDestinatarios($idCategoriaMensagem, $idMensagemTemplate, array($idNovaPessoa), null, $arrayTagsValoresMensagem);
            
	        // enviando a mensagem
	        Basico_OPController_MensageiroOPController::getInstance()->enviar($arrayNovaMensagem, Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL(), array($idNovaPessoasPerfis));
            
            // salvando a transacao
            Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

        } catch (Exception $e) {
        	// cancelando a transacao
            Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
            
            throw new Exception($e->getMessage());
        }

        // encaminhado para a ação SucessoSalvarUsuarioNaoValidado
	    return $this->_redirect($this->view->urlEncryptModuleControllerAction('basico', 'login', 'SucessoSalvarUsuarioNaoValidado', null, true));
    }
    
    /**
	 * Redireciona para view sucessosalvarusuarionaovalidadoAction
	 * 
	 * @return void
	 */
    public function sucessosalvarusuarionaovalidadoAction()
    {
        // carregando o titulo, subtitulo e mensagem da view
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO'));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO'));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM'));
	            
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
	
    /**
	 * Redireciona para view erroemailvalidadoexistentenosistemaAction
	 * 
	 * @return void
	 */
    public function erroemailvalidadoexistentenosistemaAction()
    {
        // carregando o titulo, subtitulo e mensagem da view
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO'));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO'));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM'));
	    
	    // enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
    
    /**
	 * Redireciona para view erroemailnaovalidadoexistentenosistemaAction
	 * 
	 * @return void
	 */
    public function erroemailnaovalidadoexistentenosistemaAction()
    {
		// carregando o titulo, subtitulo e mensagem da view
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_TITULO'));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_SUBTITULO'));
		$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_LOGIN_SUCESSO_SALVAR_USUARIO_NAO_VALIDADO_MENSAGEM'));
		
		// enviado conteúdo para a view
		$this->view->content = $content;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
    
    /**
     * Action para exibição do formulario de sugestao de login
     */
    public function exibirformsugestaologinAction()
    {	    
	    // recuperando os parametros da requisicao
	    $post = $this->getRequest()->getParams();
	    
	    // recuperando as sugestoes de login
	    $arraySugestoesLogin = Basico_OPController_PessoaLoginOPController::retornaArraySugestoesLogin($post['stringPesquisa'], $post['idPessoa'], $post['nome'], $post['dataNascimento']);
		
	    // criando o formulario
		$form = new Basico_Form_SugestaoLogin();
				
		// incluindo opcoes para escolha de login
		foreach ($arraySugestoesLogin as $sugestaoLogin) {
	    			
			$form->getElement('BasicoSugestaoLoginSugestaoLogin')->addMultiOption($sugestaoLogin, $sugestaoLogin);
		}
		
		// capturando a url do metodo que retorna se o login esta disponivel ou nao 
	    $urlMetodo = Basico_OPController_UtilOPController::retornaStringEntreCaracter(Basico_OPController_UtilOPController::retornaServerHost() . $this->view->urlEncryptModuleControllerAction('basico', 'login', 'verificadisponibilidadelogin'), "'");
		
		// setando atributo onclick do formulario
		$form->BasicoSugestaoLoginEnviar->setAttribs(array('onClick' => "carregaSugestaoLogin({$urlMetodo});"));
		
		// setando atributo onclick do formulario
		//$form->BasicoSugestaoLoginFechar->setAttribs(array('onClick' => "hideDialog('Basico_Form_SugestaoLogin');"));
		
		// escrevendo o form
    	$this->view->content = array($form);
    	
    	$this->_helper->Renderizar->renderizar('default.html.phtml', true);
    }
}