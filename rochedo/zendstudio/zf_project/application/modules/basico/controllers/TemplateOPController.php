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

			// recuperando templates do formulario
			$arrayTemplatesFormulario = Basico_OPController_FormularioOPController::retornaArraysTemplateStylesheetFullFilenameJavascriptFullFilenamePorNomeFormularioViaSQL($nomeForm);

			// verificando se houve recuperacao do(s) template(s)
			if (count($arrayTemplatesFormulario) > 0) {
				// recuperando caminho do url base
				$applicationHttpBaseUrl = $this->getFrontController()->getInstance()->getBaseUrl();

				// loop para colocar os includes necessarios na view, de acordo com o template
				foreach($arrayTemplatesFormulario as $arrayTemplateFormulario) {

					// verificando se o template possui arquivo css
					if ($arrayTemplateFormulario['stylesheetfullfilename']) {
						// verificando se o stylesheet eh local ou remoto
						if (strpos($arrayTemplateFormulario['stylesheetfullfilename'], 'http://' === 0))
							// adicionando stylesheet remoto
							$this->_view->headLink()->appendStylesheet($arrayTemplateFormulario['stylesheetfullfilename']);
						else
							// adicionando stylesheet local
							$this->_view->headLink()->appendStylesheet($applicationHttpBaseUrl . $arrayTemplateFormulario['stylesheetfullfilename']);
					}

					// verificando se o template possui arquivo javascript
					if ($arrayTemplateFormulario['javascriptfullfilename']) {
						// verificando se o javascript eh local ou remoto
						if (strpos($arrayTemplateFormulario['javascriptfullfilename'], 'http://' === 0))
							// adicionando javascript remoto
							$this->_view->headScript()->appendFile($arrayTemplateFormulario['javascriptfullfilename']);
						else
							// adicionando javascript local
							$this->_view->headScript()->appendFile($applicationHttpBaseUrl . $arrayTemplateFormulario['javascriptfullfilename']);
					}

					// verificando se o formulario possui saida AJAX para inclusao de prefixPath e decorator
					if ($arrayTemplateFormulario['output'] === FORM_GERADOR_OUTPUT_AJAX) {
						// adicionando prefixPath
						$form->addPrefixPath('Rochedo_Form_Decorator', 'Rochedo/Form/Decorator', 'decorator');

						// removendo o decorator DijitForm para posterior adicao
						$form->removeDecorator('DijitForm');

						// adicionando decorator AjaxForm
						$form->addDecorators(array('AjaxForm', 'DijitForm'));
					}
				}
			}
			
			$elementosOcultos = array();
			// percorre todos os elementos do form
			foreach ($form->getElements() as $elementoForm){
												
				// verifica se o elemento e do tipo hash
				if ($elementoForm->getType() == 'Zend_Form_Element_Hash') {									
					
					// renderizando elemento hash para ser gerado o value.
					$elementoForm->render();
					// recuperando chave do arrayPool
					$chaveArrayPool = $elementoForm->getValue();
					$arrayPool[] = $elementoForm->getValue();
				}
				
				if ($elementoForm->getType() == 'Rochedo_Form_Element_Oculto') {

					// montando array de elementos ocultos.
					$elementosOcultos[$elementoForm->getName()] = $elementoForm->getValue();
					// removendo elemento do formulário
					$form->removeElement($elementoForm->getName());
				}
			}
			// verificando se existe a $chaveArrayPool e  elementos no array de elementos ocultos.
			if (isset($chaveArrayPool) and count($elementosOcultos)> 0) {
				// registrando elementos na sessão
				
				Basico_OPController_SessionOPController::registraPostPoolElementosOcultos($chaveArrayPool, $elementosOcultos);
			}
			
			// verificando se existe rascunho no form
			if ($form->getAttrib('rascunho')) {
				// Adicionando o formulário com o atributo rascunho, no dojo(). Isto permitindo que o parametro seja reconhecido pelo dojo.
				$this->_view->dojo()->addDijit($form->getName(), array('rascunho'=>'true'));
				
				// setando variavel que determina a insercao, ou nao, do script de inicializacao do rascunho
				$permiteRascunho = true;
			}
		}
	}
}