<?php
class Basico_DadosBiometricosController extends Zend_Controller_Action
{
	/**
	* @var object
	*/
	private $request;
	
    /**
	 * Inicializa controlador DadosBiometricos
	 * 
	 * @return void
	 */
	public function init()
    {
    	// recuperando a requisicao
        $this->request = Zend_Controller_Front::getInstance()->getRequest();

		// definindo o contexto
		$pdfParametros = array('suffix' => 'pdf', 'headers' => array('Content-Type' => 'application/pdf'));
		$xlsParametros = array('suffix' => 'xls', 'headers' => array('Content-Type' => 'application/xls'));
		$plaintextParametros = array('suffix' => 'plaintext', 'headers' => array('Content-Type' => 'application/plaintext'));
		$impressaoParametros = array('suffix' => 'impressao', 'headers' => array('Content-Type' => 'application/impressao'));
        
		// adicionando os contextos e definindo as permissoes por acao
    	$this->_helper->contextSwitch()
    					->addContext('pdf', $pdfParametros)
    					->addContext('xls', $xlsParametros)
    					->addContext('plaintext', $plaintextParametros)
    					->addContext('impressao', $impressaoParametros)
        	            ->addActionContext('cadastrarusuarionaovalidado', array('pdf', 'plaintext', 'impressao'))
						->setAutoJsonSerialization(true)
						->initContext();
    }
    
    public function salvarAction()
    {
    	
    	// inicializando controladores
    	$controladorDadosBiometricos = Basico_DadosBiometricosControllerController::init();
    	
    	
    	// recuperando dados da submissão do formulario
    	$params = $this->getRequest()->getParams();
    	
    	// recuperando o valor do campo sexo postado pelo usuario
    	$sexo = $params['CadastrarDadosUsuarioDadosBiometricosSexo'];
    	
    	// recuperando o id da pessoa do usuario logado
    	$idPessoa = 2;
    	
    	// instanciando o objeto dadosBiometricos
    	$objDadosBiometricos = new Basico_Model_DadosBiometricos();
    	// recuperando os dados biometricos do usuario
    	$dadosBiometricos = $controladorDadosBiometricos->retornaObjetoDadosBiometricosPessoa($idPessoa);
    	
    	
    	
    	// carregando objeto com valores da requisicao

    	// verificando o valor submetido pelo formulario para o campo sexo e setando o sexo no Objeto (M ou F);
    	if ($sexo === 0)
    	    $objDadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO;
    	else if ($sexo === 1)
    	    $objDadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_FEMININO;

    	$objDadosBiometricos->id              = $dadosBiometricos->id;
    	$objDadosBiometricos->peso            = $params['CadastrarDadosUsuarioDadosBiometricosPeso'];
    	$objDadosBiometricos->altura          = $params['CadastrarDadosUsuarioDadosBiometricosAltura'];
    	$objDadosBiometricos->raca            = $params['CadastrarDadosUsuarioDadosBiometricosRaca'];
    	$objDadosBiometricos->tipoSanguinio   = $params['CadastrarDadosUsuarioDadosBiometricosTipoSanguinio'];
    	$objDadosBiometricos->historicoMedico = $params['CadastrarDadosUsuarioDadosBiometricosHistoricoMedico']; 
    	
    	// comparando os dois objetos 
    	if ($dadosBiometricos != $objDadosBiometricos) {
    		echo "salvar"; exit;
    		
    	}else{
    		echo "não salvar"; exit;
    	}
    	
    	
    	
    	
    	
    	
    	
    	
    	
    }
    
}