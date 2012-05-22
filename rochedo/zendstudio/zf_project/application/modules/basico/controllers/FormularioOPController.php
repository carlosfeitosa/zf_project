<?php
/**
 * Controlador Formulario
 * 
 * Controlador responsavel pelos formularios o sistema
 * 
 * @package Basico_Model_Formulario
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 * 
 * @ultimasModificacoes 03/05/2012 - Adaptação ao novo paradigma dos controladores - João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 */
class Basico_OPController_FormularioOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Formulario
	 * @var Basico_OPController_FormularioOPController object
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo Formulario.
	 * @var Basico_Model_Formulario
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.formulario
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.formulario';
	
	/**
	 * Nome do campo id da tabela basico.formulario
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * 
	 * @var Basico_OPController_FormularioElementoOPController
	 */
	protected $_formularioElementoOPController;
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 03/05/2012
	 */
	protected function initControllers()
	{
		// inicializando controladores utilizados por este controlador
		$this->_formularioElementoOPController = Basico_OPController_FormularioElementoOPController::getInstance();

		return;
	}
	
	/**
	 * Retorna instância do Controlador Formulario.
	 * 
	 * @return Basico_OPController_FormularioOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
    /**
     * Retorna se existe formulario filho
     * 
     * @param Integer $idFormulario
     * 
     * @return Boolean
     * 
     * @deprecated
     */
    public function existeFormulariosFilhosPorIdFormulario($idFormulario)
    {
	   	// recuperando formularios filhos
    	$objsFormulariosFilho = $this->retornaObjetosPorParametros("id_formulario_pai = {$idFormulario}");

    	// retornando se existe(m) formulario(s) filho(s)
    	return (count($objsFormulariosFilho) > 0);
    }

    /**
     * Retorna se existem formularios filhos, via SQL
     *
     * @param Integer $idFormulario
     * 
     * @return Boolean
     */
    public static function existeFormulariosFilhosPorIdFormularioViaSQL($idFormulario)
    {
    	// recuperando array de formularios filhos
    	$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, array('id'), "id_formulario_pai = {$idFormulario}");

    	// retornando se foi recuperado elementos
    	return (count($arrayResultado) > 0);
    }

    /**
     * Retorna se existe elementos
     * 
     * @param Integer $idFormulario
     * 
     * @return Boolean
     * 
     * @deprecated
     */
   	public function existeElementosPorIdFormulario($idFormulario)
   	{
   		// recuperando elementos do formulario
   		$objsFormularioElemento = Basico_OPController_PersistenceOPController::bdObjectFind($this->_model, $idFormulario)->getFormularioElementosObjects();

        // retornando se existe(m) elemento(s)
        return (count($objsFormularioElemento) > 0);
   	}

   	/**
   	 * Retorna se existe elementos, via SQL
   	 * 
   	 * @param Integer $idFormulario
   	 * 
   	 * @return Boolean
   	 */
   	public static function existeElementosPorIdFormularioViaSQL($idFormulario)
   	{
   		// recuperando elementos de um formulario
   		$arrayResultado = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL('basico_formulario.assoccl_elemento', array('id'), "id_formulario = {$idFormulario}");

   		// retornando se foi recuperado elementos
   		return (count($arrayResultado) > 0);
   	}   

	/**
	 * Retorna um array contendo todos os objetos de formularios existentes no sistema
	 * 
	 * @return Array
	 */
	public function retornaTodosObjsFormularios()
	{
		// retornando array de todos os objetos formulario
		return parent::retornaArrayDadosTodosObjetos();
	}

	/**
	 * Retorna se o formulario possui persistencia
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Boolean
	 */
	public static function existePersistenciaPorIdFormularioViaSQL($idFormulario)
	{
		// montando a query que verifica se o formulario eh persistente
		$queryVerificaPersistenciaFormulario = "SELECT DISTINCT fe.element_reloadable
												FROM basico.formulario f
												LEFT JOIN formulario_formulario_elemento ffe ON (ffe.id_formulario = f.id)
												LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
												WHERE f.id = {$idFormulario}
												AND fe.element_reloadable = " . Basico_OPController_PersistenceOPController::bdRetornaBoolean(true, true);

		// executando query e recuperando o resultados em um array
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryVerificaPersistenciaFormulario);

		// retornando o resultado
		return (count($arrayResultados) > 0);
	}

	/**
	 * Retorna o action de um formulario cujo nome e categoria foram passados por parametro
	 * 
	 * @param String $nomeFormulario
	 * @param Integer $idCategoria
	 * 
	 * @return String|null
	 */
	public function retornaActionFormularioPorNomeFormularioIdCategoria($nomeFormulario, $idCategoria)
	{
		// verificando se foi passado o nome do formulario e sua categoria
		if ((!$nomeFormulario) and (!$idCategoria))
			return null;

		// recuperando o formulario
		$objsFormulario = $this->retornaObjetosPorParametros("nome = '{$nomeFormulario}' and id_categoria = {$idCategoria}", null, 1, 0);

		// verificando se o formulario foi recuperado
		if (is_object($objsFormulario)) {
			// retornando o action do formulario
			return $objsFormulario->formAction;
		}

		return null;
	}

	/**
	 * Retorna um array contendo o nome da categoria de include e a uri para o include
	 * 
	 * @param String $nomeFormulario
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function retornaArrayIncludesFormulario($nomeFormulario, $nomeOutput)
	{
		// chamando metodo de recuperação de includes de formulários
		return Basico_OPController_IncludeOPController::retornaArrayIncludesFormulario($nomeFormulario, $nomeOutput);
	}

	/**
	 * Retorna se o formulario permite salvar rascunho 
	 * 
	 * @param String $formName
	 * 
	 * @return boolean 
	 */
	public function retornaPermiteRascunhoPorFormName($formName)
	{
		// checando o nome do formulario e condicionando query
		if ((isset($formName)))
			$condicaoSQL = "form_name = '{$formName}'";
	  
		// recuperando objeto formulario
		$objFormulario = $this->retornaObjetosPorParametros($condicaoSQL, null, 1, 0);
 		
	
		// verificando se o objeto foi recuperado
		if ($objFormulario[0]->permiteRascunho)
			// retornando o objeto
    	    return $objFormulario[0]->permiteRascunho;
    	    
    	return false;
	}
	
	/**
	 * Retorna o id da categoria do formulario pelo formName passado
	 * 
	 * @param String $formName
	 * @return String|false
	 */
	public function retornaIdCategoriaFormularioPorFormName($formName)
	{
		// recuperando o obj formulario pelo formName passado
		$objFormulario = $this->retornaObjetosPorParametros("form_name = '{$formName}'");
		
		// se retornou um objeto retorna o id da categoria
		if (is_object($objFormulario))
			return $objFormulario->idCategoria;
			
		return false;
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
	public static function verificaTemplateOutputAjaxViaSQL($nomeFormulario)
	{
		// retornando resultado da chamada ao método de verificação de output ajax do controlador de templates
		return Basico_OPController_TemplateOPController::verificaFormularioOutputAjaxViaSQL($nomeFormulario);
	}

	/**
	 * Manipula os decorators do formulário para permitir submissão AJAX
	 * 
	 * @param Zend_Form $formulario
	 * 
	 * @return void
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 03/04/2012
	 */
	public static function adicionaAjaxDecorator(Zend_Form $formulario)
	{
		// adicionando prefixPath
		$formulario->addPrefixPath('Rochedo_Form_Decorator', 'Rochedo/Form/Decorator', 'decorator');
		// removendo o decorator DijitForm para posterior adicao
		$formulario->removeDecorator('DijitForm');
		// adicionando decorator AjaxForm
		$formulario->addDecorators(array('AjaxForm', 'DijitForm'));
	}
}