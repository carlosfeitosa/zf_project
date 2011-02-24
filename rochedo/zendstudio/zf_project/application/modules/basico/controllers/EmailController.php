<?php

/**
 * Controlador Email
 *
 */

// include dos controladores
require_once("CategoriaControllerController.php");
require_once("EmailControllerController.php");
require_once("LoginControllerController.php");
require_once("DadosPessoaisControllerController.php");

/**
 * Controlador Email
 * 
 * @uses Basico_Model_Email
 */
class Basico_EmailController extends Zend_Controller_Action
{
    /**
	* @var object
	*/
	private $request;
	
	/**
	 * Função que inicializa o action controller
	 * 
	 * @see library/Zend/Controller/Zend_Controller_Action#init()
	 */
	public function init()
    {
    	// recuperando a requisicao
        $this->request = Zend_Controller_Front::getInstance()->getRequest();
    }

    /**
     * Valida um e-mail
     * 
     * @return void
     */
    public function validaremailAction()
    {
    	// instanciando os controladores
    	$controladorCategoria = Basico_CategoriaControllerController::getInstance();
    	$controladorEmail     = Basico_EmailControllerController::getInstance();
    	$controladorToken     = Basico_TokenControllerController::getInstance();
    	$controladorLogin     = Basico_LoginControllerController::getInstance();
    	
    	// recuperando o token da sessao
    	$token                = $this->request->getParam('t');

    	// recuperando o objeto token e-mail
    	$tokenObj             = $controladorToken->retornaObjetoTokenEmailPorToken($token);

    	// verificando se o objeto existe
    	if ($tokenObj == NULL){
    		// redirecionando para view de erro token invalido
    		$this->_helper->redirector('errotokeninvalido');  
    	}
    	
    	// recuperando o id do e-mail
    	$idEmail = $tokenObj->idGenerico;
    	// recuperando o e-mail
    	$email   = $controladorEmail->retornaObjetoEmailPorId($idEmail);

    	// recuperando data hora de expiracao
    	$dataHoraExpiracaoUnixTimeStamp = Basico_UtilControllerController::retornaTimestamp($tokenObj->datahoraExpiracao);
    	// recuperando a data hora atual
    	$dataHoraAtualUnixTimeStamp = Basico_UtilControllerController::retornaTimestamp();

    	// verificando se o objeto existe
    	if ($email != NULL) {
			// checando expiracao do token
	    	if ($dataHoraExpiracaoUnixTimeStamp < $dataHoraAtualUnixTimeStamp){
	    		// redirecionando para view de token expirado
	    		$this->_helper->redirector('errotokenexpirado');   		
	    	}
	    	
	    	// recuperando o objeto pessoa do dono do email
	    	$proprietarioEmail = $this->retornaObjetoProprietarioEmail($email);
	    	
	    	// recuperando dadosPessoais da pessoa
	    	$dadosPessoais = Basico_DadosPessoaisControllerController::getInstance()->retornaObjetoDadosPessoaisPorIdPessoa($proprietarioEmail->id);
	    	
	    	// recuperando a versao da tupla de dadosPessoais
	    	$versaoDadosPessoais = Basico_PersistenceControllerController::bdRetornaUltimaVersaoCVC($dadosPessoais, true);
    	
    	    // carregando o titulo e subtitulo da view
		    $tituloView     = $this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_TITULO');
		    $subtituloView  = $this->view->tradutor('VIEW_LOGIN_SUCESSO_VALIDAR_EMAIL_SUBTITULO');

		    // carregando array do cabecalho da view
		    $cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView);
		    
		    // carregando o cabecalho na view
			$this->view->cabecalho = $cabecalho;

			// formando a url do metodo que verifica disponibilidade de login via json
			$urlMetodo = Basico_UtilControllerController::retornaStringEntreCaracter(Basico_UtilControllerController::retornaServerHost() . Basico_UtilControllerController::retornaBaseUrl() . "/basico/login/verificadisponibilidadelogin/stringPesquisa/", "'");

			// instanciando o formulario de cadastrar usuario validado
			$formCadastrarUsuarioValidado = new Basico_Form_CadastrarUsuarioValidado();
			$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoNome->setValue($dadosPessoais->nome);
			$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoLogin->setAttribs(array('onBlur' => "verificaDisponibilidade('login', 'login', this.value, {$urlMetodo})", 'onkeyup' => "validaString(this, 'login')", 'onblur' => "validaString(this, 'login')"));
			
            //adicionando chamada a função do password strength checker para o campo senha
		    $formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenha->setAttribs(array('onKeyUp' => "chkPass(document.forms['CadastrarUsuarioValidado'].BasicoCadastrarUsuarioValidadoSenha.value, {$controladorLogin->retornaJsonMensagensPasswordStrengthChecker()})"));
			
			//adicionando multiOptions do radioButton sexo
			$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSexo->addMultiOptions(array(0 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_MASCULINO'), 1 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_FEMININO')));

			// setando valores dos hiddens do formulario
			$formCadastrarUsuarioValidado->addElement('hidden', 'idPessoa', array('value' => $proprietarioEmail->id));
			$formCadastrarUsuarioValidado->addElement('hidden', 'versaoDadosPessoais', array('value' => $versaoDadosPessoais));
			
			$formCadastrarUsuarioValidado->idPessoa->removeDecorator('Label');
			$formCadastrarUsuarioValidado->versaoDadosPessoais->removeDecorator('Label');
			
			$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getValidator('Identical')->setMessages(array(Zend_Validate_Identical::NOT_SAME => $this->view->tradutor('FORM_ELEMENT_VALIDATOR_INDETICAL_NOT_SAME_SENHA_CONFIRMACAO')));
			$formCadastrarUsuarioValidado->BasicoCadastrarUsuarioValidadoSenhaConfirmacao->getValidator('Identical')->setToken('BasicoCadastrarUsuarioValidadoSenha');
			
			// carregando painel no form
			$this->view->form = $formCadastrarUsuarioValidado;
			
			// renderizando a view
			$this->_helper->Renderizar->renderizar();
    	}
    }
    
    /**
     * Retorna objeto proprietario do email passado
     * @param Basico_Model_Email $email
     * @return Object
     */
    public function retornaObjetoProprietarioEmail(Basico_Model_Email $email)
    {
    	//recuperando a categoria chave estrangeira do email passado 
    	$categoriaChaveEstrangeira = Basico_CategoriaChaveEstrangeiraControllerController::getInstance()->retornaObjetoCategoriaChaveEstrangeiraPorIdCategoria($email->categoria);
    	   	
    	//setando o nome da classe a ser instanciada
    	$moduloName = strtolower($categoriaChaveEstrangeira->getModuloObject()->nome);
    	$moduloName = ucfirst($moduloName);
    	
    	$nomeClasse = $moduloName . '_Model_' . ucfirst($categoriaChaveEstrangeira->tabelaEstrangeira);
    	
    	//instanciando a classe
    	$model = new $nomeClasse();
    	
    	//retornando o objeto proprietario
    	return $model->find($email->idGenericoProprietario);
    	
    }

    /**
     * Redireciona para view de Token Expirado
     * 
     * @return void
     */
    public function errotokenexpiradoAction() 
    {
    	// carregando titulo, link para re-cadastro e mensagem
        $tituloView            = $this->view->tradutor(MSG_TOKEN_EMAIL_VALIDACAO_EXPIRADO);
        $linkRecomecarCadastro = $this->view->tradutor(LINK_FORM_CADASTRO_USUARIO_NAO_VALIDADO);
        $mensagemView          = "<a href='../login/cadastrarUsuarioNaoValidado/'>{$linkRecomecarCadastro}</a>";
        
        // carregando array com o cabecalho da view
    	$cabecalho             = array('tituloView' => $tituloView, 'mensagemView' => $mensagemView);
    
	    // carregando cabelhaco na view
		$this->view->cabecalho = $cabecalho;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }    

    /**
     * Redireciona para a view de Token Invalido
     * 
     *  @return void
     */
    public function errotokeninvalidoAction() 
    {
    	// carregando titulo, link para re-cadastro e mensagem
        $tituloView            = $this->view->tradutor(MSG_TOKEN_EMAIL_VALIDACAO_INVALIDO);
        $cabecalho =  array('tituloView' => $tituloView);
    
	    // carregando array com o cabecalho da view
		$this->view->cabecalho = $cabecalho;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }    
}