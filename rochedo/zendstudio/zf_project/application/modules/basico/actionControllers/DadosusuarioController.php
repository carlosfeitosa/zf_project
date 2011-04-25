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
    	
    	$formSubmissao = new Basico_Form_CadastrarDadosUsuario();
	    
	    $subFormCadastrarDadosUsuarioDadosBiometricos = $this->carregaOptionsSubFormCadastrarDadosUsuarioDadosBiometricos($formSubmissao->getSubForm('CadastrarDadosUsuarioDadosBiometricos'));
	    
        var_dump($subFormDadosBiometricos);exit;
	    
	    // validando o formulario                        
    	if (!$formSubmissao->isValid($this->getRequest()->getPost())) {
    		$this->view->form = $formSubmissao;
    		$this->_helper->Renderizar->renderizar();
    		return;
    	}
    	
    	// recuperando array de campos e valores do formulario submetido
    	$arrayFormPostValues = $this->getRequest()->getPost();
    	
    	//var_dump($arrayFormPostValues); exit;
    	// recuperando o id da pessoa logada
    	$idPessoa = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorLogin(Basico_OPController_LoginOPController::retornaLoginUsuarioSessao());
    	
    	// recuperando o objeto dados biometricos da pessoa
    	$novoDadosBiometricos = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaObjetoDadosBiometricosPorIdPessoa($idPessoa);
    	
    	// carregando valores no objeto dadosBiometricos
    	// carregando o radio button do sexo
	    if ($arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosSexo'] == 0)
	        $novoDadosBiometricos->setSexo(FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO);
	    else 
	        $novoDadosBiometricos->setSexo(FORM_RADIO_BUTTON_SEXO_OPTION_FEMININO);
    	
	    $novoDadosBiometricos->setAltura($arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosAltura']);
    	$novoDadosBiometricos->setPeso($arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosPeso']);
    	$novoDadosBiometricos->setRaca($arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosRaca']);
    	$novoDadosBiometricos->setTipoSanguineo($arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo']);
    	$novoDadosBiometricos->setHistoricoMedico($arrayFormPostValues['CadastrarDadosUsuarioDadosBiometricos']['BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico']);
    	
    	// recuperando a versao do objeto dados biometricos
    	$ultimaVersaoDadosBiometricos = Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($novoDadosBiometricos);
    	
    	// recuperando o objeto PessoaPerfil UsuarioValidado do usuario logado
    	$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoa);
    	
    	//var_dump($novoDadosBiometricos); exit;
    	
    	// salvando o objeto dadosBiometricos
    	Basico_OPController_DadosBiometricosOPController::getInstance()->salvarObjeto($novoDadosBiometricos, $ultimaVersaoDadosBiometricos, $idPessoaPerfilCriador->id);
    	
    	//renderizando a view
    	$this->view->form = $formSubmissao;
    	$this->_helper->Renderizar->renderizar();
    	
    }

    public function salvarDadosBiometricos($idPessoa)
    {
    	
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