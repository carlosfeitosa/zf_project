<?php
/**
 * Basico_WebsiteController
 * @author João Henrique M.Bione
 *
 */

class Basico_WebsiteController extends Zend_Controller_Action
{	
    /**
	* @var object
	*/    
	private $request;
	
    /**
	 * Inicializa controlador website 
	 */
	public function init()
    {
    	// recuperando requisicao
        $this->request = Zend_Controller_Front::getInstance()->getRequest();
    }
	
   /**
	 * Valida Formulário de cadastro de website.
	 * 
	 * @param  Basico_Form_CadastrarWebsite $formEntrada 
	 * 
	 * @return Boolean
	 */
	private function validaForm(Basico_Form_CadastrarWebsite  $formEntrada)
	{
		// verificando se a requisicao eh foi enviada por post
		if (!$this->getRequest()->isPost()) {
			// redirecionando para o proprio formulario
            return $this->_helper->redirector($formEntrada->getName());
        }
        
        // verificando se o formulario passou pela validacao
		if (!$formEntrada->isValid($this->getRequest()->getPost())) {
			// recuperando o formulario
            $this->view->form = $formEntrada;
            
            return;
        }
        return true;
	}
    
    /**
	 * Ação principal do controlador website. Seta o form na view
	 * 
	 * @return void
	 */
    public function indexAction()
    {
    	// setando o form na view
        $this->view->form = $this->getForm();
    }
    
    
    /**
	 * Retorna Formulário de Cadastro de Website
	 * 
	 * @return Basico_Form_CadastrarUsuarioValidado
	 */
    public function getFormCadastroWebsite()
    {                  
        return new Basico_Form_CadastrarWebsite();
    }

    /**
	 * Ação salvar do controlador website.
	 * 
	 * @return void
	 */
    public function salvarwebsiteAction()
    {
    	
		// Recuperando o formulaŕio de cadastro 
    	$form = $this->getFormCadastroWebsite();
		
    	//if($this->validaForm($form) == true){

    		// iniciando a transacao
    		Basico_OPController_PersistenceOPController::bdControlaTransacao();

           	try{

           		// Instaciando o modelo da classe 
				$novoWebsite = Basico_OPController_WebsiteOPController::getInstance()->retornaNovoObjetoWebsite();
		
				// recuperando a queisição do form
				$request = $this->getRequest();
		
				//instanciando o controlador de de ação  
				$controladorWebsite = Basico_OPController_WebsiteOPController::getInstance();
				$controladorRowInfo = Basico_OPController_RowinfoOPController::getInstance();
				
				// populando o modelo com a requisição do form
				$novoWebsite->categoria=1;// $request->getParam('BasicoCadastrarWebsiteWebSiteTipo');

				// atribuindo o request da url para uma variavel
				$url = $request->getParam('BasicoCadastrarWebsiteWebSitelEndereco');
				
				// utilizando validaUrl para validar o endereço do website
				$urlValida = Basico_OPController_UtilOPController::validaUrl($url);
				
				// carregando modelo website
				$novoWebsite->url = $url;
				$novoWebsite->descricao = $request->getParam('BasicoCadastrarWebsiteWebSiteDescricao');
				$novoWebsite->idGenericoProprietario = 1;
				//preparando objeto no formato XML
				$controladorRowInfo->prepareXml($novoWebsite, true);
				$novoWebsite->rowinfo = $controladorRowInfo->getXml();

				// verificando se a url é valida
				if($urlValida){
				   // executando metodo de salvar 
				   $controladorWebsite->inserirWebsite($novoWebsite);
				   Basico_OPController_UtilOPController::print_debug('WEBSITE CADASTARDO COM SUCESSO',true,false,true);
				}else{
				   Basico_OPController_UtilOPController::print_debug(MSG_ERRO_URL_INVALIDA,true,false,true);
				}
				
				
           	}catch(Exception $e) {
            	// cancelando a transacao
            	Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);
            	throw new Exception($e->getMessage());
	       	}
				
    	//}
    }
    
    
}