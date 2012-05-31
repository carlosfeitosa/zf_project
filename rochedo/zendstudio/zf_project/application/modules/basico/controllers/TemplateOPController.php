<?php
/**
 * Controlador Formulario
 * 
 * Controlador responsavel pelos formularios o sistema
 * 
 * @package Basico_Model_Template
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 03/04/2012
 */
class Basico_OPController_TemplateOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Formulario
	 * 
	 * @var Basico_OPController_TemplateOPController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo Formulario.
	 * 
	 * @var Basico_Model_Formulario
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.template
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.template';
	
	/**
	 * Nome do campo id da tabela basico.template
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_TemplateOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_TemplateOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{
		// chamando inicializacao da classe pai
		parent::_init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 09/05/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador Formulario.
	 * 
	 * @return Basico_OPController_TemplateOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_TemplateOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Desabilita o layout de um actionController
	 * 
	 * @param Zend_Controller_Action $actionController
	 * 
	 * @return void
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function desabilitaLayoutView($actionController)
	{
		// desabilitando o layout
		$actionController->getHelper('layout')->disableLayout(true);
	}

	/**
	 * Habilita o layout de um actionController
	 * 
	 * @param Zend_Controller_Action $actionController
	 * 
	 * @return void
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function habilitaLayoutView($actionController)
	{
		// desabilitando o layout
		$actionController->getHelper('layout')->disableLayout(false);
	}
	
	/**
	 * Desabilita o view Renderer de um actionController
	 * 
	 * @param Zend_Controller_Action $actionController
	 * 
	 * @return void
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 13/04/2012
	 */
	public static function desabilitaViewRenderer($actionController)
	{
		// desabilitando o layout
		$actionController->getHelper('viewRenderer')->setNoRender(true);
	}
	
	/**
	 * Habilita o view Renderer de um actionController
	 * 
	 * @param Zend_Controller_Action $actionController
	 * 
	 * @return void
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 13/04/2012
	 */
	public static function habilitaViewRenderer($actionController)
	{
		// desabilitando o layout
		$actionController->getHelper('viewRenderer')->setNoRender(false);
	}

	/**
	 * Processa os includes de um formulário
	 * 
	 * @param Zend_View $view
	 * @param array $arrayFormularios
	 * @param Boolean $permiteRascunho
	 * @param String $nomeOutput
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function processaFormularios(Zend_View $view, array $arrayFormularios, &$permiteRascunho, $nomeOutput)
	{
		// limpando o pool de elementos ocultos
		Basico_OPController_SessionOPController::limpaTodasChavesPoolElementosOcultos();

		// verificando informacoes sobre o formulario
		foreach ($arrayFormularios as $form) {
			// recuperando o nome do modulo para remocação do nome do form
			$nomeModulo = ucfirst(strtolower(Basico_OPController_UtilOPController::retornaUserRequest()->getModuleName()));

			// recuperando o nome do form se o modulo
			$nomeForm = str_replace($nomeModulo, "", $form->getName());

			// recuperando includes do formulário
			$arrayIncludesFormulario = Basico_OPController_FormularioOPController::retornaArrayIncludesFormulario($nomeForm, $nomeOutput);

			// verificando é necessário incluir arquivos
			if (count($arrayIncludesFormulario)) {
				// processando includes do formulário
				Basico_OPController_IncludeOPController::processaIncludes($view, $arrayIncludesFormulario);
			}

			// verificando se precisa adicionar decorators AJAX
			if (Basico_OPController_FormularioOPController::verificaTemplateOutputAjaxViaSQL($nomeForm)) {
				// adicionando decoratos do AJAX
				Basico_OPController_FormularioOPController::adicionaAjaxDecorator($form);
			}

			// processando o elemento hash do formulario, se houver
			$chaveArrayPool = self::processaHash($form);
			// localizando e processando os elementos ocultos
			$elementosOcultos = self::processaElementosOcultos($form);

			// verificando se existe a $chaveArrayPool e elementos no array de elementos ocultos.
			if (isset($chaveArrayPool) and count($elementosOcultos) > 0) {
				// registrando elementos na sessão			
				Basico_OPController_SessionOPController::registraPostPoolElementosOcultos($chaveArrayPool, $elementosOcultos);
			}

			// verificando se existe rascunho no form
			Basico_OPController_TemplateOPController::getInstance()->processaRascunho($view, $form, $permiteRascunho);
		}
	}

	/**
	 * Verifica se um determinado formulário possui algum template com output ajax
	 * 
	 * @param String $nomeFormulario
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function verificaFormularioOutputAjaxViaSQL($nomeFormulario)
	{
		// retornando resultado da chamada ao método de verificação de output ajax do controlador de outputs
		return Basico_OPController_OutputOPController::verificaFormularioTemplateOutputAjaxViaSQL($nomeFormulario);
	}

	/**
	 * Processa o elemento hash de um formulário
	 * 
	 * @param Zend_Form $formulario
	 * 
	 * @return String|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	private static function processaHash(Zend_Form $formulario)
	{
		// recuperando elementos do form
		$arrayElementos = $formulario->getElements();
		// invertendo os elementos do array
		$arrayElementos = array_reverse($arrayElementos, true);
		
		// loop para verificar os elementos do formulario
		foreach ($arrayElementos as $elemento) {
	
			// verificando o tipo do elemento
			if ($elemento instanceof Zend_Form_Element_Hash) {													
				// renderizando elemento hash para ser gerado o value.
				$elemento->render();
				// recuperando chave do arrayPool
				$chaveArrayPool = $elemento->getValue();
				// retornando a chave do arrayPool
				return $chaveArrayPool;
			}
		}

		return null;
	}

	/**
	 * Processa os elementos ocultos de um formulário
	 * 
	 * @param Zend_Form $formulario
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	private static function processaElementosOcultos(Zend_Form $formulario)
	{
		// inicializando variáveis
		$arrayElementosOcultos = array();

		// percorre todos os elementos do form
		foreach ($formulario->getElements() as $elementoForm){
			// verificando o tipo do elemento
			if ($elementoForm->getType() == 'Rochedo_Form_Element_Oculto') {
				// montando array de elementos ocultos.
				$arrayElementosOcultos[$elementoForm->getName()] = $elementoForm->getValue();
				// removendo elemento do formulário
				$formulario->removeElement($elementoForm->getName());
			}
		}

		// retornando array com os valores ocultos
		return $arrayElementosOcultos;
	}

	/**
	 * Processa atributos do rascunho
	 * 
	 * @param Zend_View $view
	 * @param Zend_Form $formulario
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	private function processaRascunho(Zend_View &$view, Zend_Form $formulario, &$permiteRascunho)
	{
		// verificando se existe rascunho no form
		if ($formulario->getAttrib('rascunho')) {
			// Adicionando o formulário com o atributo rascunho, no dojo(). Isto permitindo que o parametro seja reconhecido pelo dojo.
			$view->dojo()->addDijit($formulario->getName(), array('rascunho'=>'true'));
			
			// setando variavel que determina a insercao, ou nao, do script de inicializacao do rascunho
			$permiteRascunho = true;
		}
	}
}