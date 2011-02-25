<?php
// incluindo controladores
require_once("DadosBiometricosControllerController.php");
require_once("RacaControllerController.php");

/**
 * Controlador Dados do Usuario
 * 
 */
class Basico_DadosusuarioController extends Zend_Controller_Action
{
    
    /**
	* @var object
	*/
	private $request;
	
	/**
	 * @see library/Zend/Controller/Zend_Controller_Action#init()
	 */
	public function init()
    {
        $this->request = Zend_Controller_Front::getInstance()->getRequest();
    }

    /**
     * Chamada do forulario de cadastro de dados do usuario
     * 
     * @return void
     */
    public function indexAction()
    {
    	// recuperando o id da pessoa logada
    	$idPessoa = 2;
    	
    	// instanciando controladores
    	$controladorDadosBiometricos = Basico_DadosBiometricosControllerController::getInstance();
    	
    	// instanciando o formulario
	    $formDadosUsuario = new Basico_Form_CadastrarDadosUsuario();
	    
	    // recuperando os dados biometricos da pessoa logada;
	    $dadosBiometricos = $controladorDadosBiometricos->retornaObjetoDadosBiometricosPorIdPessoa($idPessoa);
	    
	    // recuperando elementos do formulario DadosBiometricos
	    $formDadosBiometricosElementos =  $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos')->getElements();
	    
	    // setando options do elemento tipoSanguinio
	    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguinio']->addMultiOptions(Basico_Model_TipoSanguinio::retornaTiposSanguinios());
	    
	    // setando options do elemento sexo 
	    $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos')->BasicoCadastrarDadosUsuarioDadosBiometricosSexo->addMultiOptions(array(0 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_MASCULINO'), 1 => $this->view->tradutor('FORM_ELEMENT_RADIO_BUTTON_SEXO_LABEL_FEMININO')));
	    
	    // setando options do elemento raca
	    $formDadosUsuario->getSubForm('CadastrarDadosUsuarioDadosBiometricos')->BasicoCadastrarDadosUsuarioDadosBiometricosRaca->addMultiOptions(Basico_RacaControllerController::retornaArrayRacasOptions());
	    
	    // carregando valores no formulario
	    
	    // carregando o radio button do sexo
	    if ($dadosBiometricos->sexo == FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO)
	        $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosSexo']->setValue(0);
	    else 
	        $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosSexo']->setValue(1);
	        
	    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosRaca']->setValue("");    
	    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosPeso']->setValue($dadosBiometricos->peso);
	    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosAltura']->setValue($dadosBiometricos->altura);
	    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguinio']->setValue($dadosBiometricos->tipoSanguinio);
	    $formDadosBiometricosElementos['BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico']->setValue($dadosBiometricos->historicoMedico);
	    
	    // passando o formulario para a view
		$this->view->form = $formDadosUsuario;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
}