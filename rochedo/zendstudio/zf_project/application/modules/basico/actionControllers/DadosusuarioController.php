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

    private function getFormDadosUsuario()
    {
    	// retornando uma nova instancia do formulario de submissao de dados do usuario
    	return new Basico_Form_CadastrarDadosUsuario();
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

    	// recuperando o formulario de submissao de dados do usuario
    	$formDadosUsuario = $this->getFormDadosUsuario();

    	// carregando informacoes do usuario
    	$this->carregarDadosBiometricos($idPessoa, $formDadosUsuario);
    	
    	$this->carregarPerfisVinculadosDisponiveis($idPessoa, $formDadosUsuario);

	    // passando o formulario para a view
		$this->view->form = $formDadosUsuario;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();	
    }
    
    /**
     * Salva os dados do usuario
     * 
     */
    public function salvarAction()
    {
    	
    	$formSubmissao = $this->getFormDadosUsuario();
    	
	    $this->carregarOptionsSubFormCadastrarDadosUsuarioDadosBiometricos($formSubmissao->getSubForm('CadastrarDadosUsuarioDadosBiometricos'));
	    /*
    	if (!$formSubmissao->isValid($this->getRequest()->getPost())) {
    		$this->view->form = $formSubmissao;
    		$this->_helper->Renderizar->renderizar();
    		return;
    	}
	    */
	    
	    //renderizando a view
    	$this->view->form = $formSubmissao;
    	
	    // recuperando o id da pessoa logada
    	$idPessoa = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorLogin(Basico_OPController_LoginOPController::retornaLoginUsuarioSessao());
    	
    	$this->salvarDadosBiometricos($idPessoa);
    	
    	$this->_helper->Renderizar->renderizar();
    	
    }
    
    private function salvarDadosBiometricos($idPessoa)
    {
    	// recuperando array de campos e valores do formulario submetido
    	$arrayFormPostValues = $this->getRequest()->getPost();
    	
    	// recuperando o formulario DadosUsuario (TabContainer)
    	$form = $this->getFormDadosUsuario();
    	    	
    	// se a requisição nao vier do form dados Biometricos retorne
    	if (!array_key_exists('CadastrarDadosUsuarioDadosBiometricos', $arrayFormPostValues))
    	    return false;

    	// recuperando o subForm DadosBiometricos    
    	$subFormDadosBiometricos = $form->getSubForm('CadastrarDadosUsuarioDadosBiometricos');
        
    	// carregando opções dos campos do tipo select e radio
    	$this->carregarOptionsSubFormCadastrarDadosUsuarioDadosBiometricos($subFormDadosBiometricos);
        
    	// validando o subForm
    	if (!$subFormDadosBiometricos->isValid($arrayFormPostValues)) {
    		// selecionando a aba do subform DadosBiometricos
    	    $subFormDadosBiometricos->setAttrib('selected', 'yes');
    		$this->view->form = $form;
    		return false;
    	}
    	
    	// recuperando valores do formulario
    	$sexo            = $arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosSexo'];
    	$altura          = $arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosAltura'];
	    $peso            = $arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosPeso'];  
        $raca            = $arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosRaca'];
	    $tipoSanguineo   = $arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo'];
	    $historicoMedico = $arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico'];
	    
    	// recuperando o objeto dados biometricos da pessoa
    	$dadosBiometricos = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaObjetoDadosBiometricosPorIdPessoa($idPessoa);
    	
    	// carregando valores no objeto dadosBiometricos
    	// carregando o radio button do sexo
	    if ($sexo == 0)
	        $dadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO;
	    elseif($sexo == 1) 
	        $dadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_FEMININO;

        // carregando dados no objeto dados biometricos
        $dadosBiometricos->altura          = $altura;
        $dadosBiometricos->peso            = $peso;
   	    $dadosBiometricos->raca            = $raca;
   	    $dadosBiometricos->tipoSanguineo   = $tipoSanguineo;
   	    $dadosBiometricos->historicoMedico = $historicoMedico;
  	
    	// recuperando a versao do objeto dados biometricos
    	$ultimaVersaoDadosBiometricos = Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($dadosBiometricos);
    	
    	// recuperando o objeto PessoaPerfil UsuarioValidado do usuario logado
    	$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoa);

    	// salvando o objeto dadosBiometricos
    	Basico_OPController_DadosBiometricosOPController::getInstance()->salvarObjeto($dadosBiometricos, $ultimaVersaoDadosBiometricos, $idPessoaPerfilCriador->id);

    	// carregando dados da pessoa no subform DadosBiometricos
    	$this->carregarDadosBiometricos($idPessoa, $form);
    	// selecionando a aba do subform DadosBiometricos
    	$subFormDadosBiometricos->setAttrib('selected', 'yes');
    	// exibindo mensagem de sucesso
    	Basico_OPController_UtilOPController::exibirDialogMensagem('dialogMensagem', $this->view->tradutor('VIEW_TITULO_MESSAGEM_SUCESSO'), $this->view->tradutor('VIEW_MESSAGEM_SUCESSO_SALVAR_DADOS_BIOMETRICOS'));
    	// carregando formulario na view
    	$this->view->form = $form;
    	
    	return true;
    }
    
    /**
     * Carrega o subformulario PERFIL
     * 
     * @param Integer $idPessoa
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * 
     * @return void
     */
    private function carregarPerfisVinculadosDisponiveis($idPessoa, &$formDadosUsuario)
    {
    	
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
     */
    private function carregarDadosBiometricos($idPessoa, &$formDadosUsuario)
    {
	    // recuperando os dados biometricos da pessoa logada;
	    $dadosBiometricos = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaObjetoDadosBiometricosPorIdPessoa($idPessoa);
	    
	    // recuperando o subForm DadosBiometricos
	    $subFormDadosBiometricos =  $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos');
	    
	    // carregando os options do subform
	    $this->carregarOptionsSubFormCadastrarDadosUsuarioDadosBiometricos($subFormDadosBiometricos);
	    
	    // recuperando elementos do formulario DadosBiometricos
	    $formDadosBiometricosElementos =  $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos')->getElements();
	    
	    // carregando valores no formulario
	    
	    // carregando o radio button do sexo
	    if ($dadosBiometricos->sexo == FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO)
	        $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosSexo']->setValue(0);
	    else 
	        $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosSexo']->setValue(1);

	    // setando valores nos campos do subform dadosBiometricos
	    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosRaca']->setValue($dadosBiometricos->raca);    
	    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosPeso']->setValue($dadosBiometricos->peso);
	    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosAltura']->setValue($dadosBiometricos->altura);
	    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo']->setValue($dadosBiometricos->tipoSanguineo);
	    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico']->setValue($dadosBiometricos->historicoMedico);
    }
}