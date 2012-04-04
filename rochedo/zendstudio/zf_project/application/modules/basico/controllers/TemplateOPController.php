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
	 * Nome da tabela categoria
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.template';

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
	private $_model;

	/**
	 * Construtor do Controlador Basico_OPController_TemplateOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_TemplateOPController
	 * 
	 * @return void
	 */
	protected function init()
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
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_TemplateOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

   	/**
	 * Salva o objeto formulario no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Template $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Template', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_TEMPLATE, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_TEMPLATE;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_TEMPLATE, true);
	    		$mensagemLog    = LOG_MSG_NOVO_TEMPLATE;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}

	/**
	 * Apaga o objeto dados pessoas perfis do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Template $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Template', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_TEMPLATE, true);
	    	$mensagemLog    = LOG_MSG_DELETE_TEMPLATE;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
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
	public static function desabiltaLayoutView($actionController)
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
			$permiteRascunho = Basico_OPController_TemplateOPController::getInstance()->processaRascunho($view, $form);
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
		Basico_OPController_OutputOPController::verificaFormularioTemplateOutputAjaxViaSQL($nomeFormulario);
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
	private function processaRascunho(Zend_View $view, Zend_Form $formulario)
	{
		// verificando se existe rascunho no form
		if ($formulario->getAttrib('rascunho')) {
			// Adicionando o formulário com o atributo rascunho, no dojo(). Isto permitindo que o parametro seja reconhecido pelo dojo.
			$view->dojo()->addDijit($formulario->getName(), array('rascunho'=>'true'));
			
			// setando variavel que determina a insercao, ou nao, do script de inicializacao do rascunho
			return true;
		}

		return false;
	}
}