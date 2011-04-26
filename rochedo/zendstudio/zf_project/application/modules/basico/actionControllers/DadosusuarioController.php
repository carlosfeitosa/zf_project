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
     * Enter description here ...
     */
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

		// inicializando o formulario dados usuario
		$this->initFormDadosUsuario($idPessoa, $formDadosUsuario);

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
     * 
     * @return void
     */
    private function initFormDadosUsuario($idPessoa, Basico_Form_CadastrarDadosUsuario $formDadosUsuario)
    {
    	// carregando informacoes do usuario
    	$this->carregarDadosBiometricos($idPessoa, $formDadosUsuario);

    	// carregando informacoes sobre o perfil padrao
    	$this->carregarPerfisVinculadosDisponiveis($idPessoa, $formDadosUsuario);
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

    	// invocando metodos de salvar os dados do usuario
    	$this->salvarDadosBiometricos($idPessoa, $arrayPost, $formDadosUsuario);

    	// setando o formulario na view
    	$this->view->form = $formDadosUsuario;

    	// renderizando a view
    	$this->_helper->Renderizar->renderizar();  	
    }

    /**
     * Salva os dados biometricos de um usuario
     * 
     * @param Integer $idPessoa
     * @param Array $arrayPost
     * @param Basico_Form_CadastrarDadosUsuario $formDadosUsuario
     * 
     * @return Boolean
     */
    private function salvarDadosBiometricos($idPessoa, $arrayPost, Basico_Form_CadastrarDadosUsuario $formDadosUsuario)
    {  	
    	// se a requisição nao vier do form dados Biometricos retorne
    	if (!array_key_exists('CadastrarDadosUsuarioDadosBiometricos', $arrayPost))
    	    return false;

    	// recuperando o subForm DadosBiometricos    
    	$subFormDadosBiometricos = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos');

    	// carregando opções dos campos do tipo select e radio
    	$this->carregarOptionsSubFormCadastrarDadosUsuarioDadosBiometricos($subFormDadosBiometricos);

    	// validando o subForm
    	if (!$subFormDadosBiometricos->isValid($arrayPost)) {
    		// selecionando a aba do subform DadosBiometricos
    	    $subFormDadosBiometricos->setAttrib('selected', 'yes');
    		$this->view->form = $formDadosUsuario;
    		return false;
    	}
    	
    	// recuperando valores do formulario
    	$sexo            = $arrayPost['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosSexo'];
    	$altura          = $arrayPost['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosAltura'];
	    $peso            = $arrayPost['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosPeso'];  
        $raca            = $arrayPost['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosRaca'];
	    $tipoSanguineo   = $arrayPost['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo'];
	    $historicoMedico = $arrayPost['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico'];
	    
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

    	// selecionando a aba do subform DadosBiometricos
    	$subFormDadosBiometricos->setAttrib('selected', 'yes');

    	// exibindo mensagem de sucesso
    	Basico_OPController_UtilOPController::exibirDialogMensagem('dialogMensagem', $this->view->tradutor('VIEW_TITULO_MESSAGEM_SUCESSO'), $this->view->tradutor('VIEW_MESSAGEM_SUCESSO_SALVAR_DADOS_BIOMETRICOS'));
    	
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
    private function carregarPerfisVinculadosDisponiveis($idPessoa, Basico_Form_CadastrarDadosUsuario &$formDadosUsuario)
    {
    	// recuperando subformulario de perfis vinculados disponiveis
    	$subFormPerfisVinculadosDisponveis = $formDadosUsuario->getSubForm('CadastrarDadosUsuarioPerfil');

    	// recuperando array de objetos dos perfis vinculados disponiveis para selecao de perfil padrao
    	$arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaArrayIdDescricaoPerfilPessoasPerfisUsuarioPorIdPessoa($idPessoa);

    	// recuperando id do perfil padrao do usuario
    	$idPerfilPadrao = Basico_OPController_PessoaOPController::retornaIdPerfilPadraoUsuarioSessao();
    	
    	// setando options do combobox perfil vinculado padrao
    	$this->carregarOptionsPerfisVinculadosDisponiveis($arrayIdsDescricoesPerfisVinculadosDisponiveisPessoa, $subFormPerfisVinculadosDisponveis->BasicoCadastrarDadosUsuarioPerfilPerfisVinculadosDisponiveis, $idPerfilPadrao);
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
    		$elemento->addMultiOption($arrayIdDescricaoPerfisVinculadosDisponiveisPessoa['id'], $arrayIdDescricaoPerfisVinculadosDisponiveisPessoa['descricao']);
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
     * 
     * @return void
     */
    private function carregarDadosBiometricos($idPessoa, Basico_Form_CadastrarDadosUsuario &$formDadosUsuario)
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