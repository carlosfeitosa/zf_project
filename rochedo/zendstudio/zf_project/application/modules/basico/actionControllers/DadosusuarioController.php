<?php

/**
 * Controlador Dados do Usuario
 * 
 */
class Basico_DadosusuarioController extends Zend_Controller_Action
{
	/**
	 * @see library/Zend/Controller/Zend_Controller_Action#init()
	 */
	public function init()
    {
		return;
    }

    /**
     * Retorna uma nova instancia do formulario dados usuario
     * 
     * @param Array $options
     * 
     * @return Basico_Form_CadastrarDadosUsuario
     */
    private function getFormDadosUsuario(array $options = array())
    {
    	// retornando uma nova instancia do formulario de submissao de dados do usuario
    	return new Basico_Form_CadastrarDadosUsuario($options);
    }

    /**
     * Retorna uma nova instancia do formulario de troca de senha
     * 
     * @param array $options
     * 
     * @return Basico_Form_TrocaDeSenha
     */
    private function getFormTrocaDeSenha(array $options = array())
    {
    	// retornando uma nova instancia do formulario de submissao de troca de senha
    	return new Basico_Form_TrocaDeSenha($options);
    }

    /**
     * Chamada do forulario de cadastro de dados do usuario
     * 
     * @return void
     */
    public function indexAction()
    {
    	// recuperando o id da pessoa logada
    	$idPessoa = Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorLogin(Basico_OPController_PessoaLoginOPController::retornaLoginUsuarioSessao());

		// recuperando parametros
		$nomeSubFormSetarAba     = $this->_request->getParam(CVC_PARAM_CHAVE_POST_ULTIMO_REQUEST);
		$sobrescreverAtualizacao = $this->_request->getParam(CVC_PARAM_SOBRESCREVER_ATUALIZACAO);
		$cancelarSubmissao       = $this->_request->getParam(CVC_PARAM_CANCELAR);
		$nomeObjetoEmConflito    = $this->_request->getParam(CVC_PARAM_NOME_OBJETO_EM_CONFLITO);
		$idObjetoEmConflito      = $this->_request->getParam(CVC_PARAM_ID_OBJETO_EM_CONFLITO);

		// verificando se deve carregar as informacoes do formulario do ultimo post
		if (isset($cancelarSubmissao) or (isset($sobrescreverAtualizacao))) {
			// recuperando o ultimo post
			$ultimoPost = Basico_OPController_SessionOPController::retornaPostUltimoRequest();

			// recuperando o formulario de submissao de dados do usuario, com o utimo post carregado
			$formDadosUsuario = $this->getFormDadosUsuario($ultimoPost);

			// verificandp se deve instanciar e recuperar objeto em conflito
			if ($sobrescreverAtualizacao) {
				// instanciando objeto em conflito
				$objetoEmConflito = new $nomeObjetoEmConflito();

				// recuperando informacoes
				$objetoEmConflito = Basico_OPController_PersistenceOPController::bdObjectFind($objetoEmConflito, $idObjetoEmConflito);
			}

			// descobrindo qual subformulario esta sendo carregado
			switch ($nomeSubFormSetarAba) {
				// caso do subformulario dados pessoais
				case 'CadastrarDadosUsuarioDadosPessoais':
					// verificando se trata-se de uma atualizacao forcada
					if ($sobrescreverAtualizacao) {
						// adicionando o elemento hidden contendo a versao do objeto atual
						$this->adicionaElementoOcultoVersaoObjetoDadosPessoais($formDadosUsuario, Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($objetoEmConflito));
					} else {
						// adicionando o elemento hidden contendo a versao do objeto do ultimo request
						$this->adicionaElementoOcultoVersaoObjetoDadosPessoais($formDadosUsuario, $ultimoPost['versaoObjetoDadosPessoais']);
					}
				break;
				
				// caso do subformulario dados biometricos
				case 'CadastrarDadosUsuarioDadosBiometricos':
					// verificando se trata-se de uma atualizacao forcada
					if ($sobrescreverAtualizacao) {
						// adicionando o elemento hidden contendo a versao do objeto atual
						$this->adicionaElementoOcultoVersaoObjetoDadosBiometricos($formDadosUsuario, Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($objetoEmConflito));
					} else {
						// adicionando o elemento hidden contendo a versao do objeto do ultimo request
						$this->adicionaElementoOcultoVersaoObjetoDadosBiometricos($formDadosUsuario, $ultimoPost['versaoObjetoDadosBiometricos']);
					}
				break;
				// caso do subformulario perfil padrao
				case 'CadastrarDadosUsuarioConta';
					// verificando se trata-se de uma atualizacao forcada
					if ($sobrescreverAtualizacao) {
						// adicionando o elemento hidden contendo a versao do objeto atual
						$this->adicionaElementoHiddenVersaoObjetoPessoa($formDadosUsuario, Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($objetoEmConflito));
					} else {
						// adicionando o elemento hidden contendo a versao do objeto do ultimo request
						$this->adicionaElementoHiddenVersaoObjetoPessoa($formDadosUsuario, $ultimoPost['versaoObjetoPessoa']);
					}
				break;
			}

			// inicializando o formulario dados usuario com as informacoes do banco de dados
			$this->initFormDadosUsuario($idPessoa, $formDadosUsuario, $nomeSubFormSetarAba);
		} else {
	    	// recuperando o formulario de submissao de dados do usuario
			$formDadosUsuario = $this->getFormDadosUsuario();

			// inicializando o formulario dados usuario com as informacoes do banco de dados
			$this->initFormDadosUsuario($idPessoa, $formDadosUsuario);
		}

        // verificando se deve setar uma aba
		if (isset($nomeSubFormSetarAba)) {
			// selecionando a aba do subform perfil padrao
			$scripts[] = Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $nomeSubFormSetarAba);
		}

		// verificando se deve sobrescrever as informacoes de um objeto
		if ($sobrescreverAtualizacao) {
			// chamando metodo que submete o formulario
			$scripts[] = Basico_OPController_UtilOPController::submeteDojoFormViaDojoJavaScript($nomeSubFormSetarAba);
		}
		
		//$formDadosUsuario->isValid($_POST);
		$content[] = $formDadosUsuario;
		
		// enviado conteúdo para a view
		$this->view->content = $content;

		// verificando se deve setar os scripts na view
		if (isset($scripts)) {
			// adicionando scripts na view
			$this->view->scripts = $scripts;
		}

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    /**
     * Inicializa o formulario dados usuario
     * 
     * @param Integer $idPessoa
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * @param String $subFormNaoCarregarDados
     * 
     * @return void
     */
    private function initFormDadosUsuario($idPessoa, Basico_Form_CadastrarDadosUsuario $formDadosUsuario, $subFormNaoCarregarDados = null)
    {
    	// recuperando informacao sobre qual formulario nao recuperar os dados do banco de dados
    	$carregarDadosPessoais     = ($subFormNaoCarregarDados !== 'CadastrarDadosUsuarioDadosPessoais');
		$carregarDadosBiometricos  = ($subFormNaoCarregarDados !== 'CadastrarDadosUsuarioDadosBiometricos');
		$carregarDadosConta        = ($subFormNaoCarregarDados !== 'CadastrarDadosUsuarioConta');

    	// carregando informacoes do usuario
    	$this->carregarDadosPessoais($idPessoa, $formDadosUsuario, $carregarDadosPessoais);
		$this->carregarDadosBiometricos($idPessoa, $formDadosUsuario, $carregarDadosBiometricos);

    	// carregando informacoes sobre o perfil padrao
    	$this->carregarDadosConta($idPessoa, $formDadosUsuario, $carregarDadosConta);
    }

    /**
     * Salva os dados do usuario
     * 
     * @return void
     */
    public function salvarAction()
    {
	    // recuperando o id da pessoa logada
    	$idPessoa = Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorLogin(Basico_OPController_PessoaLoginOPController::retornaLoginUsuarioSessao());

    	// recuperando o post
    	$arrayPost = $this->getRequest()->getPost();

    	// recuperando o formulario de dados do usuario
    	$formDadosUsuario = $this->getFormDadosUsuario($arrayPost);

    	// inicializando o formulario
    	$this->initFormDadosUsuario($idPessoa, $formDadosUsuario);

    	// invocando metodos de salvar os dados do usuario e verificando se houve houve erro
    	$podeContinuar = $this->salvarDadosBiometricos($idPessoa, $arrayPost, $formDadosUsuario);

    	// verificando resultado de salvar os dados biometricos
    	if ($podeContinuar !== false) {
    		// salvando dados da conta do usuario
    		$podeContinuar = $this->salvarDadosConta($idPessoa, $arrayPost, $formDadosUsuario);
    	}

    	// verificando se a acao deve redirecionar o usuario para o index
    	if ($podeContinuar !== false) {
    		// redirecionando para o index
			$this->_forward('index');
    	} else {
			// carregando formulário para a view
			$content[] = $formDadosUsuario;

			// enviado conteúdo para a view
			$this->view->content = $content;

			// renderizando a view
			$this->_helper->Renderizar->renderizar();
    	}
    }

    /**
     * Salva os dados da conta de um usuario
     * 
     * @param Integer $idPessoa
     * @param Array $arrayPost
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * 
     * @return Boolean|null
     */
    private function salvarDadosConta($idPessoa, $arrayPost, Basico_Form_CadastrarDadosUsuario $formDadosUsuario)
    {
    	// inicializando array de javascripts de retorno para o cliente
    	$scripts = array();

    	// verificando se deve processar o request (post)
    	if (!array_key_exists('CadastrarDadosUsuarioConta', $arrayPost))
    		return null;

    	// recuperando o subform Perfil
    	$subFormConta = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioConta');

    	// recuperando conteudo do div de forca da senha
    	$valorDivForcaSenha = $subFormConta->BasicoCadastrarDadosUsuarioContaPasswordStrengthChecker->getValue();

		// recuperando a senha atual informada no formulario
		$senhaAtual = $arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaSenhaAtual'];

		// verificando se a senha atual foi preenchida
		if (trim($senhaAtual) !== '') {
			// encriptando a senha informada
			$senhaAtual = Basico_OPController_UtilOPController::retornaStringEncriptadaCryptMd5($senhaAtual);

			// instanciando o controlador de login
			$loginOpController = Basico_OPController_PessoaLoginOPController::getInstance();

			// verificando se a senha informada corresponde a senha do usuario
			if (!$loginOpController->verificaSenhaUsuario($loginOpController->retornaIdLoginPorIdPessoa($idPessoa), $senhaAtual)) {
				// marcando o elemento do formulario com invalido
				$subFormConta->BasicoCadastrarDadosUsuarioContaSenhaAtual->addError($this->view->tradutor('FORM_ELEMENT_MESSAGE_SENHA_ATUAL_INVALIDA'));
				// criando array com os elementos que devem ser marcados como erro
				$arrayElementosErros = array('CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaSenhaAtual');
				
				// marcando os elementos com erro
				$scripts[] = Basico_OPController_UtilOPController::marcaElementosComErroViaDojoJavaScript($arrayElementosErros);

				// selecionando a aba do subform conta
				$scripts[] = Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormConta->getName());
				
				// setando foco no primeiro elemento com erro
				$scripts[] = Basico_OPController_UtilOPController::setaFocusElementoFormularioViaDojoJavaScript($arrayElementosErros[0]);

				// recolocando o valor do div de forca da senha
				$subFormConta->BasicoCadastrarDadosUsuarioContaPasswordStrengthChecker->setValue($valorDivForcaSenha);

				// setando os scripts na view
				$this->view->scripts = $scripts;

	    		return false;
			} else {
				// setando campos como requerido
				$subFormConta->BasicoCadastrarDadosUsuarioContaSenhaAtual->setRequired(true);
				$subFormConta->BasicoCadastrarDadosUsuarioContaNovaSenha->setRequired(true);
				$subFormConta->BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha->setRequired(true);
			}
			
		} else {
			// verificando se foi informado a nova senha e/ou confirmacao de senha
			if ((trim($arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaNovaSenha']) !== '') or (trim($arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha']) !== '')) {
				// marcando o elemento do formulario com invalido
				$subFormConta->BasicoCadastrarDadosUsuarioContaSenhaAtual->addError($this->view->tradutor('FORM_ELEMENT_MESSAGE_SENHA_ATUAL_INVALIDA'));
				// criando array com os elementos que devem ser marcados como erro
				$arrayElementosErros = array('CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaSenhaAtual',
											 'CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaNovaSenha',
											 'CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha');
				// marcando os elementos com erro
				$scripts[] = Basico_OPController_UtilOPController::marcaElementosComErroViaDojoJavaScript($arrayElementosErros);

				// selecionando a aba do subform conta
				$scripts[] = Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormConta->getName());

				// setando foco no primeiro elemento com erro
				$scripts[] = Basico_OPController_UtilOPController::setaFocusElementoFormularioViaDojoJavaScript($arrayElementosErros[0]);

				// recolocando o valor do div de forca da senha
				$subFormConta->BasicoCadastrarDadosUsuarioContaPasswordStrengthChecker->setValue($valorDivForcaSenha);

				// setando scripts na view
				$this->view->scripts = $scripts;

	    		return false;
			}

			// removendo campos de senha do post
			unset($arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaSenhaAtual']);
			unset($arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaNovaSenha']);
			unset($arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha']);
		}

    	// validando o sub formulario
    	if (!$subFormConta->isValid($arrayPost)) {
			// selecionando a aba do subform conta
			$scripts[] = Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormConta->getName());

			// recolocando o valor do div de forca da senha
			$subFormConta->BasicoCadastrarDadosUsuarioContaPasswordStrengthChecker->setValue($valorDivForcaSenha);
			// limpando as senhas digitadas
			$subFormConta->BasicoCadastrarDadosUsuarioContaSenhaAtual->setValue(null);
			$subFormConta->BasicoCadastrarDadosUsuarioContaNovaSenha->setValue(null);
			$subFormConta->BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha->setValue(null);

			// criando array com os elementos que devem ser marcados como erro
			$arrayElementosErros = array('CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaSenhaAtual',
										 'CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaNovaSenha',
										 'CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha');
			// marcando os elementos com erro
			$scripts[] = Basico_OPController_UtilOPController::marcaElementosComErroViaDojoJavaScript($arrayElementosErros);

			// setando foco no primeiro elemento com erro
			$scripts[] = Basico_OPController_UtilOPController::setaFocusElementoFormularioViaDojoJavaScript($arrayElementosErros[0]);

			// setando scripts na view
			$this->view->scripts = $scripts;

    		return false;
    	}

    	// verificando se a senha atual eh igual a nova senha
    	if ((trim($senhaAtual) !== '') and ($senhaAtual === Basico_OPController_UtilOPController::retornaStringEncriptadaCryptMd5($arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaNovaSenha']))) {
			// limpando as senhas digitadas
			$subFormConta->BasicoCadastrarDadosUsuarioContaSenhaAtual->setValue(null);
			$subFormConta->BasicoCadastrarDadosUsuarioContaNovaSenha->setValue(null);
			$subFormConta->BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha->setValue(null);

			// marcando o elemento do formulario com invalido
			$subFormConta->BasicoCadastrarDadosUsuarioContaNovaSenha->addError($this->view->tradutor('VIEW_TROCA_DE_SENHA_SENHAS_IGUAIS_MENSAGEM'));
			// criando array com os elementos que devem ser marcados como erro
			$arrayElementosErros = array('CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaSenhaAtual',
										 'CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaNovaSenha',
										 'CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha');
			// marcando os elementos com erro
			$scripts[] = Basico_OPController_UtilOPController::marcaElementosComErroViaDojoJavaScript($arrayElementosErros);

			// selecionando a aba do subform conta
			$scripts[] = Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormConta->getName());

			// setando foco no primeiro elemento com erro
			$scripts[] = Basico_OPController_UtilOPController::setaFocusElementoFormularioViaDojoJavaScript($arrayElementosErros[0]);

			// recolocando o valor do div de forca da senha
			$subFormConta->BasicoCadastrarDadosUsuarioContaPasswordStrengthChecker->setValue($valorDivForcaSenha);

			// setando scripts na view
			$this->view->scripts = $scripts;

    		return false;
    	}

    	// tentando salvar as informacoes sobre a conta
    	try {
    		// iniciando transacao
    		Basico_OPController_PersistenceOPController::bdControlaTransacao();

    	   	// verificando se foi solicitado a troca de senhas
	    	if (trim($senhaAtual) !== '') {
	    		// recuperando a nova senha
	    		$novaSenha         = $arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaNovaSenha'];
	    		$versaoObjetoLogin = (int) $arrayPost['CadastrarDadosUsuarioConta']['versaoObjetoLogin'];
	    		$idPessoaPerfilUsuarioValidado = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoa);

	    		// verificando o resultado do metodo de trocar senha
	    		if (!Basico_OPController_PessoaLoginOPController::getInstance()->alterarSenhaUsuario($loginOpController->retornaIdLoginPorIdPessoa($idPessoa), $novaSenha, $versaoObjetoLogin, $idPessoaPerfilUsuarioValidado)) {
	    			// invocando excessao
	    			throw new Exception(MSG_ERRO_DADOS_PESSOAIS_TROCA_SENHA);
	    		}
	    	}

	    	// setando o perfil padrao do usuario
	    	if (Basico_OPController_PessoaOPController::getInstance()->atualizaPerfilPadraoPessoaViaFormCadastrarDadosUsuarioConta($idPessoa, $arrayPost)) {
				// selecionando a aba do subform perfil padrao
				$scripts[] = Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormConta->getName());
	
	    		// atualizando o perfil padrao do usuario na sessao
	    		Basico_OPController_PessoaOPController::registraIdPerfilPadraoUsuarioSessao(Basico_OPController_UtilOPController::retornaValorTipado($arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaPerfisVinculadosDisponiveis'], TIPO_INTEIRO, true));
	
				// recuperando a versao do objeto pessoa
	    		$versaoObjetoPessoa = Basico_OPController_PessoaOPController::getInstance()->retornaVersaoObjetoPessoaPorIdPessoa($idPessoa);
	
	    		// atualizando a versao do elemento hidden do objeto pessoa
	    		$this->adicionaElementoHiddenVersaoObjetoPessoa($formDadosUsuario, $versaoObjetoPessoa);
	
		        // exibindo mensagem de sucesso
		        $scripts[] =  Basico_OPController_UtilOPController::retornaJavaScriptDojoPopMessage(Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL("FORM_ELEMENT_MESSAGE_DADOS_CONTA_SALVOS_COM_SUCESSO"));

				// setando scripts na view
				$this->view->scripts = $scripts;
	    	}   	

    		// salvando a transacao
    		Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

    		// retornando o resultado
    		return true;
    	} catch (Exception $e) {
    		// voltando transacao
    		Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

    		// estourando excesao
    		throw new Exception(MSG_ERRO_DADOS_PESSOAIS_DADOS_CONTA . $e->getMessage());
    	}
    }

    /**
     * Salva os dados biometricos de um usuario
     * 
     * @param Integer $idPessoa
     * @param Array $arrayPost
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * 
     * @return Boolean|null
     */
    private function salvarDadosBiometricos($idPessoa, $arrayPost, Basico_Form_CadastrarDadosUsuario $formDadosUsuario)
    {
    	// inicializando array de javascripts de retorno para o cliente
    	$scripts = array();

    	// se a requisição nao vier do form dados Biometricos retorne
    	if (!array_key_exists('CadastrarDadosUsuarioDadosBiometricos', $arrayPost))
    	    return null;

    	// recuperando o subForm DadosBiometricos    
    	$subFormDadosBiometricos = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos');

    	// validando o subForm
    	if (!$subFormDadosBiometricos->isValid($arrayPost)) {
			// enviando formulario com problemas
			$this->view->content = array($formDadosUsuario);

    		// selecionando a aba do subform DadosBiometricos
			$scripts[] = Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormDadosBiometricos->getName());

			// setando os scripts na view
			$this->view->scripts = $scripts;
			
    		return false;
    	}

    	if (Basico_OPController_DadosBiometricosOPController::getInstance()->salvarDadosBiometricosViaFormCadastrarDadosUsuarioDadosBiometricos($idPessoa, $arrayPost)) {
	    	// selecionando a aba do subform DadosBiometricos
	    	$scripts[] = Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormDadosBiometricos->getName());

	    	// recuperando ultima versao do obj dadosBiometricos da pessoa
	        $versaoObjetoDadosBiometricos = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaVersaoObjetoDadosBiometricosPorIdPessoa($idPessoa);

            // adicionando elemento hidden com o id da ultima versao do objeto dados biometricos da pessoa	    
	        $this->adicionaElementoOcultoVersaoObjetoDadosBiometricos($formDadosUsuario, $versaoObjetoDadosBiometricos);

	        // setando mensagem
			$scripts[] = Basico_OPController_UtilOPController::retornaJavaScriptDojoPopMessage(Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL("VIEW_MESSAGEM_SUCESSO_SALVAR_DADOS_BIOMETRICOS"));
	        
			// setando os scripts na view
			$this->view->scripts = $scripts;
			
			// processando rascunho
			$this->_helper->Rascunho->processar();
			
			return true;
    	}
    	
    	return false;
    }
    
    /**
     * Carrega o subformulario PERFIL
     * 
     * @param Integer $idPessoa
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * @param Boolean $carregarDados
     * 
     * @return void
     */
    private function carregarDadosConta($idPessoa, Basico_Form_CadastrarDadosUsuario &$formDadosUsuario, $carregarDados = true)
    {
    	// recuperando subformulario de perfis vinculados disponiveis
    	$subFormConta = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioConta');

    	// recuperando array de objetos dos perfis vinculados disponiveis para selecao de perfil padrao
    	$arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaArrayIdConstanteTextualPerfilPessoasPerfisUsuarioPorIdPessoa($idPessoa);

    	// loop para traduzir as constantes textuais dos perfis
    	foreach ($arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa as $chave => $arrayIdConstanteTextualPerfilVinculadoDisponivelPessoa) {
    		// traduzindo constante textual
    		$arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa[$chave]['traducao'] = $this->view->tradutor($arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa[$chave]['constante_textual']);

    		// removendo o elemento 'constante_textual'
    		unset($arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa[$chave]['constante_textual']);
    	}

    	// recuperando array de mensagens json sobre a forca da senha
    	$jsonMensagensPasswordStrengthChecker = Basico_OPController_PessoaLoginOPController::getInstance()->retornaJsonMensagensPasswordStrengthChecker();

    	// setando atributo do elemento nova senha
    	$subFormConta->BasicoCadastrarDadosUsuarioContaNovaSenha->setAttribs(array('onKeyUp' => "chkPass(document.getElementById('CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaNovaSenha').value, {$jsonMensagensPasswordStrengthChecker});"));

    	// setando o campo que tem que ser identico ao campo senhaConfirmacao
		$subFormConta->BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha->getValidator('Identical')->setToken("BasicoCadastrarDadosUsuarioContaNovaSenha");
    	// setando mensagens do validator Identical para o campo senhaConfirmacao
    	$subFormConta->BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha->getValidator('Identical')->setMessages(array(Zend_Validate_Identical::NOT_SAME => $this->view->tradutor('FORM_ELEMENT_VALIDATOR_INDETICAL_NOT_SAME_NOVA_SENHA_CONFIRMACAO')));

    	// verificando se deve carregar os dados
    	if ($carregarDados) {
	    	// recuperando id do perfil padrao do usuario
	    	$idPerfilPadrao = Basico_OPController_PessoaOPController::getInstance()->retornaIdPerfilPadraoPorIdPessoa($idPessoa);
	
	    	// setando options do combobox perfil vinculado padrao
	    	$this->carregarOptionsPerfisVinculadosDisponiveis($arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa, $subFormConta->BasicoCadastrarDadosUsuarioContaPerfisVinculadosDisponiveis, $idPerfilPadrao);
	
	    	// recuperando a versao do objeto pessoa e login
	    	$versaoObjetoPessoa = Basico_OPController_PessoaOPController::getInstance()->retornaVersaoObjetoPessoaPorIdPessoa($idPessoa);
	    	$versaoObjetoLogin  = Basico_OPController_PessoaLoginOPController::getInstance()->retornaVersaoObjetoLoginPorIdPessoa($idPessoa);
	
			// adicionando elemento hidden contendo a versao do objeto pessoa e login
			$this->adicionaElementoHiddenVersaoObjetoPessoa($formDadosUsuario, $versaoObjetoPessoa);
			$this->adicionaElementoHiddenVersaoObjetoLogin($formDadosUsuario, $versaoObjetoLogin);
    	} else {
    		// setando options do combobox perfil vinculado padrao
	    	$this->carregarOptionsPerfisVinculadosDisponiveis($arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa, $subFormConta->BasicoCadastrarDadosUsuarioContaPerfisVinculadosDisponiveis);
    	}
    }

    /**
     * Adiciona um elemento hidden contendo o numero da versao do objeto pessoa existente no banco de dados
     * 
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * @param Integer $versaoObjetoPessoa
     * 
     * @return Boolean
     */
    private function adicionaElementoHiddenVersaoObjetoPessoa(Basico_Form_CadastrarDadosUsuario &$formDadosUsuario, $versaoObjetoPessoa)
    {
    	// recuperando o subformulario "CadastrarDadosUsuarioConta"
    	$subformCadastrarDadosUsuarioConta = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioConta');
    	// adicionando elemento hidden contendo a versao do objeto pessoa
		return Basico_OPController_UtilOPController::adicionaElementoForm($subformCadastrarDadosUsuarioConta, FORM_ELEMENT_OCULTO, 'versaoObjetoPessoa', array('value' => $versaoObjetoPessoa));
    }

    /**
     * Adiciona um elemento hidden contendo o numero da versao do objeto login existente no banco de dados
     * 
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * @param Integer $versaoObjetoLogin
     * 
     * @return Boolean
     */
    private function adicionaElementoHiddenVersaoObjetoLogin(Basico_Form_CadastrarDadosUsuario &$formDadosUsuario, $versaoObjetoLogin)
    {
    	// recuperando o subformulario "CadastrarDadosUsuarioConta"
    	$subformCadastrarDadosUsuarioConta = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioConta');
    	// adicionando elemento hidden contendo a versao do objeto pessoa
		return Basico_OPController_UtilOPController::adicionaElementoForm($subformCadastrarDadosUsuarioConta, FORM_ELEMENT_OCULTO, 'versaoObjetoLogin', array('value' => $versaoObjetoLogin));
    }

	/**
	 * Carrega os elementos do combobox Perfil vinculado padrão:
	 * 
	 * @param Array $arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa
	 * @param Zend_Dojo_Form_Element_FilteringSelect $elemento
	 * @param Integer $idPerfilPadrao
	 * 
	 * @return void
	 */
    private function carregarOptionsPerfisVinculadosDisponiveis($arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa, Zend_Dojo_Form_Element_FilteringSelect &$elemento, $idPerfilPadrao = null)
    {
    	// loop para carregar os elementos
    	foreach ($arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa as $arrayIdDescricaoPerfisVinculadosDisponiveisPessoa) {
    		// setando a opcao
    		$elemento->addMultiOption($arrayIdDescricaoPerfisVinculadosDisponiveisPessoa['id'], $arrayIdDescricaoPerfisVinculadosDisponiveisPessoa['traducao']);
    	}

    	// adicionando a opcao "nao desejo informar"
    	$elemento->addMultiOption(0, $this->view->tradutor('SELECT_OPTION_NAO_DESEJO_INFORMAR'));

    	// verificando se foi passado o valor para setar no combobox
    	if ($idPerfilPadrao) {
    		// setando o valor no elemento
    		$elemento->setValue($idPerfilPadrao);
    	} else {
    		// setando o valor no elemento, como "nao desejo informar"
    		$elemento->setValue(0);
    	}
    }

    /**
     * Carrega os elementos do tipo select, radio e checkbox do subform DadosPessoais
     * 
     * @param $subFormCadastrarDadosUsuarioDadosPessoais
     * @return void
     */
    private function carregarOptionsSubFormCadastrarDadosUsuarioDadosPessoais(&$subFormCadastrarDadosUsuarioDadosPessoais)
    {
    	
    	
    	// setando options do elemento PaisNascimento
	    $subFormCadastrarDadosUsuarioDadosPessoais->BasicoCadastrarDadosUsuarioDadosPessoaisComboboxPaisNascimento
	                            ->addMultiOptions(Basico_OPController_PaisOPController::retornaPaisOptions());
	                            
		// setando options do elemento UfNascimento
	    //$subFormCadastrarDadosUsuarioDadosPessoais->BasicoCadastrarDadosUsuarioDadosPessoaisComboboxUfNascimento
	                            //->addMultiOptions(Basico_OPController_EstadoOPController::retornaEstadoOptions());
	                            
		// setando options do elemento UfNascimento
	   // $subFormCadastrarDadosUsuarioDadosPessoais->BasicoCadastrarDadosUsuarioDadosPessoaisComboboxMunicipioNascimento
	                           // ->addMultiOptions(Basico_OPController_MunicipioOPController::retornaMunicipioOptions());
    }
    
    /**
     * Carrega os elementos do tipo select, radio e checkbox do subform DadosBiometricos
     * 
     * @param $subFormCadastrarDadosUsuarioDadosBiometricos
     * @return void
     */
    private function carregarOptionsSubFormCadastrarDadosUsuarioDadosBiometricos(&$subFormCadastrarDadosUsuarioDadosBiometricos)
    {
    	
    	// recuperando os tipos sanguineos
    	$arrayTiposSanguineoOptions = Basico_OPController_CategoriaOPController::retornaArrayTiposSanguineosOptions();
    	
    	// setando options do elemento TipoSanguineo
	    $subFormCadastrarDadosUsuarioDadosBiometricos->BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo
	                            ->addMultiOptions(Basico_OPController_CategoriaOPController::getInstance()->retornaArrayTiposSanguineosOptions());
	    
	    // setando options do elemento sexo 
	    $subFormCadastrarDadosUsuarioDadosBiometricos->BasicoCadastrarDadosUsuarioDadosBiometricosSexo
	                            ->addMultiOptions(array(0 => $this->view->tradutor('GENERO_MASCULINO'), 
	                                                    1 => $this->view->tradutor('GENERO_FEMININO')));
	    
	    // setando options do elemento raca
	    $subFormCadastrarDadosUsuarioDadosBiometricos->BasicoCadastrarDadosUsuarioDadosBiometricosRaca
	                            ->addMultiOptions(Basico_OPController_CategoriaOPController::getInstance()->retornaArrayRacasOptions());
	    
	    // setando options do elemento sexo 
	    $subFormCadastrarDadosUsuarioDadosBiometricos->BasicoCadastrarDadosUsuarioDadosBiometricosSexo
	                            ->addMultiOptions(array(0 => $this->view->tradutor('GENERO_MASCULINO'), 
	                                                    1 => $this->view->tradutor('GENERO_FEMININO')));
	                                                    
	    //return $subFormCadastrarDadosUsuarioDadosBiometricos;
    }

    /**
     * Carrega os dados pessoais da pessoa passada no subform dadosPessoais
     * 
     * @param Int $idPessoa
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * @param Boolean $carregarDados
     * 
     * @return void
     */
    private function carregarDadosPessoais($idPessoa, Basico_Form_CadastrarDadosUsuario &$formDadosUsuario, $carregarDados = true)
    {
	    // recuperando os dados pessoais da pessoa logada;
	    $dadosPessoais = Basico_OPController_PessoaAssocDadosOPController::getInstance()->retornaObjetoDadosPessoaisPorIdPessoa($idPessoa);
	    
	    // recuperando o subForm DadosPessoais
	    $subFormDadosPessoais = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosPessoais');
	    
	    // carregando os options do subform
	    $this->carregarOptionsSubFormCadastrarDadosUsuarioDadosPessoais($subFormDadosPessoais);
	    
	    // verificando se deve carregar os dados no formulario
	    if ($carregarDados) {
		    // recuperando elementos do formulario DadosPessoais
		    $formDadosPessoaisElementos = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosPessoais')->getElements();

		    // setando valores nos campos do subform dadosPessoais
		    $formDadosPessoaisElementos['BasicoCadastrarDadosUsuarioDadosPessoaisTextboxNomePai']->setValue($dadosPessoais->nomePai);    
		    $formDadosPessoaisElementos['BasicoCadastrarDadosUsuarioDadosPessoaisTextboxNomeMae']->setValue($dadosPessoais->nomeMae);
		    
		    // recuperando ultima versao do obj dadosPessais da pessoa
		    $versaoObjetoDadosPessoais = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($dadosPessoais);
		    
		    $this->adicionaElementoOcultoVersaoObjetoDadosPessoais($formDadosUsuario, $versaoObjetoDadosPessoais);	    
	    }
    }
    
    /**
     * Carrega os dados biometricos da pessoa passada no subform dadosBiometricos
     * 
     * @param Int $idPessoa
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * @param Boolean $carregarDados
     * 
     * @return void
     */
    private function carregarDadosBiometricos($idPessoa, Basico_Form_CadastrarDadosUsuario &$formDadosUsuario, $carregarDados = true)
    {
	    // recuperando os dados biometricos da pessoa logada;
	    $dadosBiometricos = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaObjetoDadosBiometricosPorIdPessoa($idPessoa);
	    
	    // recuperando a especializacao de dados biometricos para pessoa
	    $dadosBiometricosPessoa = Basico_OPController_DadosBiometricosAssocPessoaOPController::getInstance()->retornaObjetoDadosBiometricosPessoaPorIdDadosBiometricos($dadosBiometricos->id);
	    
	    // recuperando o subForm DadosBiometricos
	    $subFormDadosBiometricos = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos');
	    
	    // carregando os options do subform
	    $this->carregarOptionsSubFormCadastrarDadosUsuarioDadosBiometricos($subFormDadosBiometricos);
	    
	    // verificando se deve carregar os dados no formulario
	    if ($carregarDados) {
		    // recuperando elementos do formulario DadosBiometricos
		    $formDadosBiometricosElementos = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos')->getElements();

			// carregando o radio button do sexo
		    if ($dadosBiometricosPessoa->idCategoriaSexo == Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai('GENERO_MASCULINO')) {
		    	// carregando valor do radio button
		        $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosSexo']->setValue(0);
		    } else if ($dadosBiometricosPessoa->idCategoriaSexo == Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai('GENERO_FEMININO')) {
		    	// carregando valor do radio button 
		        $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosSexo']->setValue(1);
		    }
	
		    // setando valores nos campos do subform dadosBiometricos
		    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosRaca']->setValue($dadosBiometricosPessoa->idCategoriaRaca);    
		    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosPeso']->setValue($dadosBiometricosPessoa->peso);
		    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosAltura']->setValue($dadosBiometricosPessoa->altura);
		    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo']->setValue($dadosBiometricosPessoa->idCategoriaTipoSanguineo);
		    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico']->setValue($dadosBiometricosPessoa->historicoMedico);
		    
		    // recuperando ultima versao do obj dadosBiometricos da pessoa
		    $versaoObjetoDadosBiometricosPessoa = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($dadosBiometricosPessoa);
		    
		    $this->adicionaElementoOcultoVersaoObjetoDadosBiometricos($formDadosUsuario, $versaoObjetoDadosBiometricosPessoa);
	    }
    }

     /**
     * Adiciona um elemento hidden contendo o numero da versao do objeto dadosPessoais existente no banco de dados
     * 
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * @param Integer $versaoObjetoDadosPessoais
     * 
     * @return Boolean
     */
    private function adicionaElementoOcultoVersaoObjetoDadosPessoais(Basico_Form_CadastrarDadosUsuario &$formDadosUsuario, $versaoObjetoDadosPessoais)
    {
    	// recuperando o subformulario "CadastrarDadosUsuarioDadosPessoais"
    	$subFormCadastrarDadosUsuarioDadosPessoais = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosPessoais');
    	// adicionando elemento hidden contendo a versao do objeto pessoa
		return Basico_OPController_UtilOPController::adicionaElementoRochedoForm($subFormCadastrarDadosUsuarioDadosPessoais, FORM_ELEMENT_OCULTO, 'versaoObjetoDadosPessoais', array('value' => $versaoObjetoDadosPessoais));
    }
    
     /**
     * Adiciona um elemento hidden contendo o numero da versao do objeto dadosBiometricos existente no banco de dados
     * 
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * @param Integer $versaoObjetoDadosBiometricos
     * 
     * @return Boolean
     */
    private function adicionaElementoOcultoVersaoObjetoDadosBiometricos(Basico_Form_CadastrarDadosUsuario &$formDadosUsuario, $versaoObjetoDadosBiometricos)
    {
    	// recuperando o subformulario "CadastrarDadosUsuarioDadosBiometricos"
    	$subFormCadastrarDadosUsuarioDadosBiometricos = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos');
    	// adicionando elemento hidden contendo a versao do objeto pessoa
		return Basico_OPController_UtilOPController::adicionaElementoRochedoForm($subFormCadastrarDadosUsuarioDadosBiometricos, FORM_ELEMENT_OCULTO, 'versaoObjetoDadosBiometricos', array('value' => $versaoObjetoDadosBiometricos));
    }

     /**
     * Adiciona um elemento hidden contendo uma url para redirecionamento
     * 
     * @param Basico_Form_TrocaDeSenha $formDadosTrocaSenha
     * @param String $urlRedirect
     * 
     * @return Boolean
     */
    private function adicionaElementoOcultoUrlRedirect(Basico_Form_TrocaDeSenha &$formDadosTrocaSenha, $urlRedirect)
    {
    	// adicionando elemento hidden contendo a url para redirecionamento
		return Basico_OPController_UtilOPController::adicionaElementoRochedoForm($formDadosTrocaSenha, FORM_ELEMENT_OCULTO, 'urlRedirect', array('value' => $urlRedirect));
    }

    /**
     * Mostra o formulario de troca de senha de usuario e faz a troca, quando os dados forem postados
     * 
     * @return void
     */
    public function trocarsenhaexpiradaAction()
    {
    	// recuperando urlRedirect
		$urlRedirect = $this->getRequest()->getParam('urlRedirect');

    	// carregando o formulario de troca de senha
		$formTrocaDeSenha = self::getFormTrocaDeSenha();

		// setando action do formulario
		$formTrocaDeSenha->setAction($this->view->urlEncryptModuleControllerAction('basico', 'dadosusuario', 'trocarsenhaexpirada', null));

    	// recuperando conteudo do div de forca da senha
    	$valorDivForcaSenha = $formTrocaDeSenha->BasicoTrocaDeSenhaPasswordStrengthChecker->getValue();

		// inicializando o formulario de troca de senha
		self::carregaFormularioTrocaDeSenha($formTrocaDeSenha);

		// verificando se nao trata-se de um post
		if (!$this->getRequest()->isPost()) {
			// incluindo o titulo da view de troca de senha no conteudo que sera renderizado
			$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_TROCA_DE_SENHA_TITULO'));
			// incluindo o subtitulo da view de troca de senha no conteudo que sera renderizado
			$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_TROCA_DE_SENHA_SUBTITULO'));

			// verificando se existe url para redirect
			if ($urlRedirect) {
				// adicionando hidden ao formulario contendo a url para redirecionamento
				self::adicionaElementoOcultoUrlRedirect($formTrocaDeSenha, $urlRedirect);
			}

			// incluindo o formulario de troca de senha no conteudo que sera renderizado
			$content[] = $formTrocaDeSenha;
		} else {
			// recuperando o post
			$post = $this->getRequest()->getPost();

			// verificando se o formulario eh valido
			if ($formTrocaDeSenha->isValid($post)) {
				// recuperando o id da pessoa logada
				$idPessoa = Basico_OPController_PessoaLoginOPController::retornaIdPessoaPorIdLoginViaSQL(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao());

				// recuperando a senha atual informada no formulario e encriptando-a
				$senhaAtual = Basico_OPController_UtilOPController::retornaStringEncriptadaCryptMd5($post['BasicoTrocaDeSenhaSenhaAtual']);

				// instanciando o controlador de login
				$loginOpController = Basico_OPController_PessoaLoginOPController::getInstance();
	
				// verificando se a senha informada nao corresponde a senha do usuario
				if (!$loginOpController->verificaSenhaUsuario($loginOpController->retornaIdLoginPorIdPessoa($idPessoa), $senhaAtual)) {
					// marcando o elemento do formulario com invalido
					$formTrocaDeSenha->BasicoTrocaDeSenhaSenhaAtual->addError($this->view->tradutor('FORM_ELEMENT_MESSAGE_SENHA_ATUAL_INVALIDA'));
					// criando array com os elementos que devem ser marcados como erro
					$arrayElementosErros = array('BasicoTrocaDeSenhaSenhaAtual');
					// marcando os elementos com erro
					$scripts[] = Basico_OPController_UtilOPController::marcaElementosComErroViaDojoJavaScript($arrayElementosErros);
	
					// limpando os campos de senha
					$formTrocaDeSenha->BasicoTrocaDeSenhaSenhaAtual->setValue(null);
					$formTrocaDeSenha->BasicoTrocaDeSenhaNovaSenha->setValue(null);
					$formTrocaDeSenha->BasicoTrocaDeSenhaConfirmacaoNovaSenha->setValue(null);

					// recolocando o valor do div de forca da senha
					$formTrocaDeSenha->BasicoTrocaDeSenhaPasswordStrengthChecker->setValue($valorDivForcaSenha);
	
					// incluindo o titulo da view de troca de senha no conteudo que sera renderizado
					$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_TROCA_DE_SENHA_TITULO'));
					// incluindo o subtitulo da view de troca de senha no conteudo que sera renderizado
					$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_TROCA_DE_SENHA_SUBTITULO'));

					// verificando se existe url para redirect
					if ($urlRedirect) {
						// adicionando hidden ao formulario contendo a url para redirecionamento
						self::adicionaElementoOcultoUrlRedirect($formTrocaDeSenha, $urlRedirect);
					}
				
					// incluindo o formulario de troca de senha no conteudo que sera renderizado
					$content[] = $formTrocaDeSenha;
				} else { // trocando a senha do usuario
					// recuperando a nova senha
		    		$novaSenha = $post['BasicoTrocaDeSenhaNovaSenha'];

		    		// verificando se a senha nova eh igual a senha antiga
		    		if ($senhaAtual === Basico_OPController_UtilOPController::retornaStringEncriptadaCryptMd5($novaSenha)) {
						// incluindo o titulo da view de troca de senha no conteudo que sera renderizado
						$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_TROCA_DE_SENHA_TITULO'));
						// incluindo o subtitulo da view de troca de senha no conteudo que sera renderizado
						$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_TROCA_DE_SENHA_SUBTITULO'));
						// incluindo a mensagem da view de troca de senha no conteudo que sera renderizado
						$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_TROCA_DE_SENHA_SENHAS_IGUAIS_MENSAGEM'));

						// marcando o elemento do formulario com invalido
						$formTrocaDeSenha->BasicoTrocaDeSenhaNovaSenha->addError($this->view->tradutor('VIEW_TROCA_DE_SENHA_SENHAS_IGUAIS_MENSAGEM'));
						// criando array com os elementos que devem ser marcados como erro
						$arrayElementosErros = array('BasicoTrocaDeSenhaNovaSenha');
						// marcando os elementos com erro
						$scripts[] = Basico_OPController_UtilOPController::marcaElementosComErroViaDojoJavaScript($arrayElementosErros);

						// limpando os campos de senha
						$formTrocaDeSenha->BasicoTrocaDeSenhaSenhaAtual->setValue(null);
						$formTrocaDeSenha->BasicoTrocaDeSenhaNovaSenha->setValue(null);
						$formTrocaDeSenha->BasicoTrocaDeSenhaConfirmacaoNovaSenha->setValue(null);
	
						// recolocando o valor do div de forca da senha
						$formTrocaDeSenha->BasicoTrocaDeSenhaPasswordStrengthChecker->setValue($valorDivForcaSenha);

						// verificando se existe url para redirect
						if ($urlRedirect) {
							// adicionando hidden ao formulario contendo a url para redirecionamento
							self::adicionaElementoOcultoUrlRedirect($formTrocaDeSenha, $urlRedirect);
						}
					
						// incluindo o formulario de troca de senha no conteudo que sera renderizado
						$content[] = $formTrocaDeSenha;
		    		} else { // senhas diferentes (nova e antiga)
			    		// recuperando a versao do objeto login
			    		$versaoObjetoLogin = $loginOpController->retornaVersaoObjetoLoginPorIdPessoa($idPessoa);
	
			    		// recuperando o id da pessoa perfil vinculado ao usuario (perfil de usuario validado)
			    		$idPessoaPerfilUsuarioValidado = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoa);
		
			    		// verificando o resultado do metodo de trocar senha
			    		if (!$loginOpController->alterarSenhaUsuario($loginOpController->retornaIdLoginPorIdPessoa($idPessoa), $novaSenha, $versaoObjetoLogin, $idPessoaPerfilUsuarioValidado)) {
			    			// invocando excessao
			    			throw new Exception(MSG_ERRO_DADOS_PESSOAIS_TROCA_SENHA);
			    		} else {
			    			// verificando se existe uma url para redirecionamento
			    			if ($urlRedirect) {
								// removendo o baseUrl do redirect
								$realUrlRedirect = Basico_OPController_UtilOPController::decodificaBarrasUrl(str_replace(Basico_OPController_UtilOPController::retornaBaseUrl(), '', $urlRedirect));
	
								// redirecionando para a url de redirect
								$this->_redirect($realUrlRedirect);
			    			} else {
								// incluindo o titulo da view de troca de senha no conteudo que sera renderizado
								$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_TROCA_DE_SENHA_TITULO'));
								// incluindo o subtitulo da view de troca de senha no conteudo que sera renderizado
								$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_TROCA_DE_SENHA_SUCESSO_SUBTITULO'));
								// incluindo a mensagem da view de troca de senha no conteudo que sera renderizado
								$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoMensagem($this->view->tradutor('VIEW_TROCA_DE_SENHA_SUCESSO_MENSAGEM'));
			    			}
			    		}
		    		}
				}
				
			} else { // o formulario nao passou pela validacao
				// recolocando o valor do div de forca da senha
				$formTrocaDeSenha->BasicoTrocaDeSenhaPasswordStrengthChecker->setValue($valorDivForcaSenha);

				// limpando os campos de senha
				$formTrocaDeSenha->BasicoTrocaDeSenhaSenhaAtual->setValue(null);
				$formTrocaDeSenha->BasicoTrocaDeSenhaNovaSenha->setValue(null);
				$formTrocaDeSenha->BasicoTrocaDeSenhaConfirmacaoNovaSenha->setValue(null);

				// incluindo o titulo da view de troca de senha no conteudo que sera renderizado
				$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo($this->view->tradutor('VIEW_TROCA_DE_SENHA_TITULO'));
				// incluindo o subtitulo da view de troca de senha no conteudo que sera renderizado
				$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoSubTitulo($this->view->tradutor('VIEW_TROCA_DE_SENHA_SUBTITULO'));

				// verificando se existe url para redirect
				if ($urlRedirect) {
					// adicionando hidden ao formulario contendo a url para redirecionamento
					self::adicionaElementoOcultoUrlRedirect($formTrocaDeSenha, $urlRedirect);
				}
			
				// incluindo o formulario de troca de senha no conteudo que sera renderizado
				$content[] = $formTrocaDeSenha;
			}
		}

		// passando o conteudo para a view
		$this->view->content = $content;

		$scripts[] = Basico_OPController_UtilOPController::setaFocusElementoFormularioViaDojoJavaScript('BasicoTrocaDeSenhaSenhaAtual');

		// verificando se existem scripts para inclusao na view
		if (isset($scripts)) {
			$this->view->scripts = $scripts;
		}

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    /**
     * Inicializa o formulario de troca de senha
     * 
     * @param Basico_Form_TrocaDeSenha $formTrocaDeSenha
     * 
     * @return Boolean
     */
    private function carregaFormularioTrocaDeSenha(Basico_Form_TrocaDeSenha &$formTrocaDeSenha)
    {
    	// recuperando array de mensagens json sobre a forca da senha
    	$jsonMensagensPasswordStrengthChecker = Basico_OPController_PessoaLoginOPController::getInstance()->retornaJsonMensagensPasswordStrengthChecker();

    	// setando atributo do elemento nova senha
    	$formTrocaDeSenha->BasicoTrocaDeSenhaNovaSenha->setAttribs(array('onKeyUp' => "chkPass(document.getElementById('BasicoTrocaDeSenhaNovaSenha').value, {$jsonMensagensPasswordStrengthChecker})"));

    	// setando o campo que tem que ser identico ao campo senhaConfirmacao
		$formTrocaDeSenha->BasicoTrocaDeSenhaConfirmacaoNovaSenha->getValidator('Identical')->setToken("BasicoTrocaDeSenhaNovaSenha");
    	// setando mensagens do validator Identical para o campo senhaConfirmacao
    	$formTrocaDeSenha->BasicoTrocaDeSenhaConfirmacaoNovaSenha->getValidator('Identical')->setMessages(array(Zend_Validate_Identical::NOT_SAME => $this->view->tradutor('FORM_ELEMENT_VALIDATOR_INDETICAL_NOT_SAME_NOVA_SENHA_CONFIRMACAO')));
    }
}