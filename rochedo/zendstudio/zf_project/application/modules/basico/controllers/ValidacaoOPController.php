<?php
/**
 * Controlador Validacao
 * 
 */
class Basico_OPController_ValidacaoOPController
{
	/**
	 * 
	 */
	private static $_singleton;
	/**
	 * Request 
	 * @var Request Object
	 */
	protected $_request;
	
    /**
     * Construtor do controlador Basico_OPController_ValidacaoOPController
     * 
     * @return void
     */
	private function __construct()
	{
		// recuperando a requisicao
		$this->_request = Zend_Controller_Front::getInstance()->getRequest();

		// inicializando o controlador
		$this->init();
	}
	
	/**
	 * Inicializa o controlador
	 * @return void
	 */
	public function _init()
	{
		return;
	}
	
	/**
	 * Retorna a instancia do controlador de validação
	 * @return Basico_OPController_ValidacaoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ValidacaoOPController();
		}
		// retornando a instancia
		return self::$_singleton;
	}
	
	/**
	 * Salva o objeto formulario na sessão
	 * @param $objFormulario
	 * @return Boolean
	 */
	public function salvaFormularioSessao($objFormulario)
	{
		// recuperando o nome do campo que tera seu valor utilizado como chave para registrar o formulario na sessao
		$nomeCampoChaveFormularioSessao = $objFormulario->getName() . FORM_TOKEN_ELEMENT_NAME;
		// recuperando o valor do campo para ser utilizado como chave
		$valorChaveSessaoFormulario     = $objFormulario->getElement($nomeCampoChaveFormularioSessao)->getValue();
		
		// retornando se o valor foi registrado na sessao
		return Basico_OPController_UtilOPController::registraValorSessao($valorChaveSessaoFormulario, $objFormulario);
	}

	/**
	 * Recupera o objeto formulario da sessão
	 * @param $formularioNome
	 * @return NULL|Object
	 */
	public function recuperaFormularioSessao($chave)
	{
		// retornando o valor registrado na sessao (se a chave existir)
		return Basico_OPController_UtilOPController::retornaValorSessao($chave);
	}

	/**
	 * Compara os dados de um formulário existente com os dados de uma nova requisicao
	 * para definir se é preciso salvar ou não.
	 * @param $objFormulario
	 * @param $request
	 * @return Boolean
	 */
	public function comparaFormularios($formulario1, $formulario2)
	{
		if ($formulario1 === $formulario2)
		    return true;
		else
		    return false;
	}
	
	/**
	 * Função para validação padrão de formularios.
	 * 
	 * @param $form
	 * 
	 * @return Boolean
	 */
	public function validaForm($form)
	{
		// verificando se a requisicao foi enviada por post
		if (!Zend_Controller_Front::getInstance()->getRequest()->isPost()) {
			// redirecionando para o proprio formulario
            return $this->_helper->redirector($form->getName());
        }
        
        // verificando se o formulario passou pela validacao
		if (!$form->isValid(Zend_Controller_Front::getInstance()->getRequest()->getPost())) {
			// recuperando o formulario
            $this->view->form = $form;
            
            return;
        }
        return true;
	} 
}