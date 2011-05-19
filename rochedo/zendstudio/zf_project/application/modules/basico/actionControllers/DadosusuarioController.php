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
     * Chamada do forulario de cadastro de dados do usuario
     * 
     * @return void
     */
    public function indexAction()
    {
    	// recuperando o id da pessoa logada
    	$idPessoa = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorLogin(Basico_OPController_LoginOPController::retornaLoginUsuarioSessao());

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
				$objetoEmConflito->find($idObjetoEmConflito);
			}

			// descobrindo qual subformulario esta sendo carregado
			switch ($nomeSubFormSetarAba) {
				// caso do subformulario dados biometricos
				case 'CadastrarDadosUsuarioDadosBiometricos':
					// verificando se trata-se de uma atualizacao forcada
					if ($sobrescreverAtualizacao) {
						// adicionando o elemento hidden contendo a versao do objeto atual
						$this->adicionaElementoHiddenVersaoObjetoDadosBiometricos($formDadosUsuario, Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($objetoEmConflito));
					} else {
						// adicionando o elemento hidden contendo a versao do objeto do ultimo request
						$this->adicionaElementoHiddenVersaoObjetoDadosBiometricos($formDadosUsuario, $ultimoPost['versaoObjetoDadosBiometricos']);
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
			Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $nomeSubFormSetarAba);
		}

		// verificando se deve sobrescrever as informacoes de um objeto
		if ($sobrescreverAtualizacao) {
			// chamando metodo que submete o formulario
			Basico_OPController_UtilOPController::submeteDojoFormViaDojoJavaScript($nomeSubFormSetarAba);
		}

	    // passando o formulario para a view
		$this->view->form = $formDadosUsuario;

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
		$carregarDadosBiometricos  = ($subFormNaoCarregarDados !== 'CadastrarDadosUsuarioDadosBiometricos');
		$carregarDadosConta        = ($subFormNaoCarregarDados !== 'CadastrarDadosUsuarioConta');

    	// carregando informacoes do usuario
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
    	$idPessoa = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorLogin(Basico_OPController_LoginOPController::retornaLoginUsuarioSessao());

    	// recuperando o post
    	$arrayPost = $this->getRequest()->getPost();

    	// recuperando o formulario de dados do usuario
    	$formDadosUsuario = $this->getFormDadosUsuario();

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
		    // passando o formulario para a view
			$this->view->form = $formDadosUsuario;
	
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
			$senhaAtual = Basico_OPController_UtilOPController::retornaStringEncriptada($senhaAtual);

			// instanciando o controlador de login
			$loginOpController = Basico_OPController_LoginOPController::getInstance();

			// verificando se a senha informada corresponde a senha do usuario
			if (!$loginOpController->verificaSenhaUsuario($loginOpController->retornaIdLoginPorIdPessoa($idPessoa), $senhaAtual)) {
				// marcando o elemento do formulario com invalido
				$subFormConta->BasicoCadastrarDadosUsuarioContaSenhaAtual->addError(Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('FORM_ELEMENT_MESSAGE_SENHA_ATUAL_INVALIDA'));
				// criando array com os elementos que devem ser marcados como erro
				$arrayElementosErros = array('CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaSenhaAtual');
				// marcando os elementos com erro
				Basico_OPController_UtilOPController::marcaElementosComErroViaDojoJavaScript($arrayElementosErros);

				// selecionando a aba do subform conta
				Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormConta->getName());
				// setando foco no primeiro elemento com erro
				Basico_OPController_UtilOPController::setaFocusElementoFormularioViaDojoJavaScript($arrayElementosErros[0]);
				// recolocando o valor do div de forca da senha
				$subFormConta->BasicoCadastrarDadosUsuarioContaPasswordStrengthChecker->setValue($valorDivForcaSenha);
	    		return false;
			}
			
		} else {
			// verificando se foi informado a nova senha e/ou confirmacao de senha
			if ((trim($arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaNovaSenha']) !== '') or (trim($arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha']) !== '')) {
				// marcando o elemento do formulario com invalido
				$subFormConta->BasicoCadastrarDadosUsuarioContaSenhaAtual->addError(Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('FORM_ELEMENT_MESSAGE_SENHA_ATUAL_INVALIDA'));
				// criando array com os elementos que devem ser marcados como erro
				$arrayElementosErros = array('CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaSenhaAtual',
											 'CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaNovaSenha',
											 'CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha');
				// marcando os elementos com erro
				Basico_OPController_UtilOPController::marcaElementosComErroViaDojoJavaScript($arrayElementosErros);

				// selecionando a aba do subform conta
				Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormConta->getName());
				// setando foco no primeiro elemento com erro
				Basico_OPController_UtilOPController::setaFocusElementoFormularioViaDojoJavaScript($arrayElementosErros[0]);
				// recolocando o valor do div de forca da senha
				$subFormConta->BasicoCadastrarDadosUsuarioContaPasswordStrengthChecker->setValue($valorDivForcaSenha);
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
			Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormConta->getName());
			// recolocando o valor do div de forca da senha
			$subFormConta->BasicoCadastrarDadosUsuarioContaPasswordStrengthChecker->setValue($valorDivForcaSenha);
			// limpando as senhas digitadas
			$subFormConta->BasicoCadastrarDadosUsuarioContaSenhaAtual->setValue(null);
			$subFormConta->BasicoCadastrarDadosUsuarioContaNovaSenha->setValue(null);
			$subFormConta->BasicoCadastrarDadosUsuarioContaConfirmacaoNovaSenha->setValue(null);
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
	    		$idPessoaPerfilUsuarioValidado = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoa);

	    		// verificando o resultado do metodo de trocar senha
	    		if (!Basico_OPController_LoginOPController::getInstance()->alterarSenhaUsuario($loginOpController->retornaIdLoginPorIdPessoa($idPessoa), $novaSenha, $versaoObjetoLogin, $idPessoaPerfilUsuarioValidado)) {
	    			// invocando excessao
	    			throw new Exception(MSG_ERRO_DADOS_PESSOAIS_TROCA_SENHA);
	    		}
	    	}

	    	// setando o perfil padrao do usuario
	    	if (Basico_OPController_PessoaOPController::getInstance()->atualizaPerfilPadraoPessoaViaFormCadastrarDadosUsuarioConta($idPessoa, $arrayPost)) {
				// selecionando a aba do subform perfil padrao
				Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormConta->getName());
	
	    		// atualizando o perfil padrao do usuario na sessao
	    		Basico_OPController_PessoaOPController::registraIdPerfilPadraoUsuarioSessao(Basico_OPController_UtilOPController::retornaValorTipado($arrayPost['CadastrarDadosUsuarioConta']['BasicoCadastrarDadosUsuarioContaPerfisVinculadosDisponiveis'], TIPO_INTEIRO, true));
	
				// recuperando a versao do objeto pessoa
	    		$versaoObjetoPessoa = Basico_OPController_PessoaOPController::getInstance()->retornaVersaoObjetoPessoaPorIdPessoa($idPessoa);
	
	    		// atualizando a versao do elemento hidden do objeto pessoa
	    		$this->adicionaElementoHiddenVersaoObjetoPessoa($formDadosUsuario, $versaoObjetoPessoa);
	
		        // exibindo mensagem de sucesso
		        Basico_OPController_UtilOPController::exibirJQueryHumanizedMessageViaJavaScript(Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('FORM_ELEMENT_MESSAGE_DADOS_CONTA_SALVOS_COM_SUCESSO'));
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
    	// se a requisição nao vier do form dados Biometricos retorne
    	if (!array_key_exists('CadastrarDadosUsuarioDadosBiometricos', $arrayPost))
    	    return null;

    	// recuperando o subForm DadosBiometricos    
    	$subFormDadosBiometricos = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos');

    	// validando o subForm
    	if (!$subFormDadosBiometricos->isValid($arrayPost)) {
    		// selecionando a aba do subform DadosBiometricos
			Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormDadosBiometricos->getName());
    		return false;
    	}

    	if (Basico_OPController_DadosBiometricosOPController::getInstance()->salvarDadosBiometricosViaFormCadastrarDadosUsuarioDadosBiometricos($idPessoa, $arrayPost)) {
	    	// selecionando a aba do subform DadosBiometricos
	    	Basico_OPController_UtilOPController::setaFocusAbaTabContainerDojoFormViaJavaScript($formDadosUsuario->getName(), $subFormDadosBiometricos->getName());

	    	// recuperando ultima versao do obj dadosBiometricos da pessoa
	        $versaoObjetoDadosBiometricos = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaVersaoObjetoDadosBiometricosPorIdPessoa($idPessoa);

            // adicionando elemento hidden com o id da ultima versao do objeto dados biometricos da pessoa	    
	        $this->adicionaElementoHiddenVersaoObjetoDadosBiometricos($formDadosUsuario, $versaoObjetoDadosBiometricos);

	        // exibindo mensagem de sucesso
	        Basico_OPController_UtilOPController::exibirJQueryHumanizedMessageViaJavaScript("Dados biometricos salvos com sucesso.");
    	}
    	
    	return true;
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
    	$arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa = Basico_OPController_PessoasPerfisOPController::retornaArrayIdConstanteTextualPerfilPessoasPerfisUsuarioPorIdPessoaViaSQL($idPessoa);

    	// loop para traduzir as constantes textuais dos perfis
    	foreach ($arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa as $chave => $arrayIdConstanteTextualPerfilVinculadoDisponivelPessoa) {
    		// traduzindo constante textual
    		$arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa[$chave]['traducao'] = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL($arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa[$chave]['constante_textual']);

    		// removendo o elemento 'constante_textual'
    		unset($arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa[$chave]['constante_textual']);
    	}

    	// recuperando array de mensagens json sobre a forca da senha
    	$jsonMensagensPasswordStrengthChecker = Basico_OPController_LoginOPController::getInstance()->retornaJsonMensagensPasswordStrengthChecker();

    	// setando atributo do elemento nova senha
    	$subFormConta->BasicoCadastrarDadosUsuarioContaNovaSenha->setAttribs(array('onKeyUp' => "chkPass(document.getElementById('CadastrarDadosUsuarioConta-BasicoCadastrarDadosUsuarioContaNovaSenha').value, {$jsonMensagensPasswordStrengthChecker})"));

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
	    	$versaoObjetoLogin  = Basico_OPController_LoginOPController::getInstance()->retornaVersaoObjetoLoginPorIdPessoa($idPessoa);
	
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
		return Basico_OPController_UtilOPController::adicionaElementoForm($subformCadastrarDadosUsuarioConta, FORM_ELEMENT_HIDDEN, 'versaoObjetoPessoa', array('value' => $versaoObjetoPessoa));
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
		return Basico_OPController_UtilOPController::adicionaElementoForm($subformCadastrarDadosUsuarioConta, FORM_ELEMENT_HIDDEN, 'versaoObjetoLogin', array('value' => $versaoObjetoLogin));
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
     * Carrega os elementos do tipo select, radio e checkbox do subform DadosBiometricos
     * 
     * @param $subFormCadastrarDadosUsuarioDadosBiometricos
     * @return void
     */
    private function carregarOptionsSubFormCadastrarDadosUsuarioDadosBiometricos(&$subFormCadastrarDadosUsuarioDadosBiometricos)
    {
    	// setando options do elemento TipoSanguineo
	    $subFormCadastrarDadosUsuarioDadosBiometricos->BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo
	                            ->addMultiOptions(Basico_OPController_TipoSanguineoOPController::retornaTipoSanguineoOptions());
	    
	    // setando options do elemento sexo 
	    $subFormCadastrarDadosUsuarioDadosBiometricos->BasicoCadastrarDadosUsuarioDadosBiometricosSexo
	                            ->addMultiOptions(array(0 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_MASCULINO'), 
	                                                    1 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_FEMININO')));
	    
	    // setando options do elemento raca
	    $subFormCadastrarDadosUsuarioDadosBiometricos->BasicoCadastrarDadosUsuarioDadosBiometricosRaca
	                            ->addMultiOptions(Basico_OPController_RacaOPController::retornaArrayRacasOptions());
	    
	    // setando options do elemento sexo 
	    $subFormCadastrarDadosUsuarioDadosBiometricos->BasicoCadastrarDadosUsuarioDadosBiometricosSexo
	                            ->addMultiOptions(array(0 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_MASCULINO'), 
	                                                    1 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_FEMININO')));
	                                                    
	    //return $subFormCadastrarDadosUsuarioDadosBiometricos;
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
	    
	    // recuperando o subForm DadosBiometricos
	    $subFormDadosBiometricos = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos');
	    
	    // carregando os options do subform
	    $this->carregarOptionsSubFormCadastrarDadosUsuarioDadosBiometricos($subFormDadosBiometricos);
	    
	    // verificando se deve carregar os dados no formulario
	    if ($carregarDados) {
		    // recuperando elementos do formulario DadosBiometricos
		    $formDadosBiometricosElementos = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos')->getElements();

			// carregando o radio button do sexo
		    if ($dadosBiometricos->sexo == FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO) {
		    	// carregando valor do radio button
		        $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosSexo']->setValue(0);
		    } else if ($dadosBiometricos->sexo == FORM_RADIO_BUTTON_SEXO_OPTION_FEMININO) {
		    	// carregando valor do radio button 
		        $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosSexo']->setValue(1);
		    }
	
		    // setando valores nos campos do subform dadosBiometricos
		    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosRaca']->setValue($dadosBiometricos->constanteTextualRaca);    
		    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosPeso']->setValue($dadosBiometricos->peso);
		    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosAltura']->setValue($dadosBiometricos->altura);
		    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo']->setValue($dadosBiometricos->tipoSanguineo);
		    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico']->setValue($dadosBiometricos->historicoMedico);
		    
		    // recuperando ultima versao do obj dadosBiometricos da pessoa
		    $versaoObjetoDadosBiometricos = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($dadosBiometricos);
		    
		    $this->adicionaElementoHiddenVersaoObjetoDadosBiometricos($formDadosUsuario, $versaoObjetoDadosBiometricos);
	    }
    }
    
     /**
     * Adiciona um elemento hidden contendo o numero da versao do objeto dadosBiometricos existente no banco de dados
     * 
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * @param Integer $versaoObjetoDadosBiometricos
     * 
     * @return Boolean
     */
    private function adicionaElementoHiddenVersaoObjetoDadosBiometricos(Basico_Form_CadastrarDadosUsuario &$formDadosUsuario, $versaoObjetoDadosBiometricos)
    {
    	// recuperando o subformulario "CadastrarDadosUsuarioDadosBiometricos"
    	$subFormCadastrarDadosUsuarioDadosBiometricos = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos');
    	// adicionando elemento hidden contendo a versao do objeto pessoa
		return Basico_OPController_UtilOPController::adicionaElementoForm($subFormCadastrarDadosUsuarioDadosBiometricos, FORM_ELEMENT_HIDDEN, 'versaoObjetoDadosBiometricos', array('value' => $versaoObjetoDadosBiometricos));
    }
}