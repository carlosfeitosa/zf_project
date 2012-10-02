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
class Basico_OPController_FormularioOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Formulario
	 * @var Basico_OPController_FormularioOPController object
	 */
	protected static $_singleton;

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
	 * Controlador de associações entre formulário e elementos
	 * 
	 * @var Basico_OPController_FormularioAssocclElementoOPController object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	protected $_formularioAssocclElementoOPController;

	/**
	 * Controlador de associações entre formulário e decorators
	 * 
	 * @var Basico_OPController_FormularioAssocclDecorator object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	protected $_formularioAssocclDecoratorOPController;

	/**
	 * Controlador de decorators
	 * 
	 * @var Basico_OPController_FormularioDecoratorOPController object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	protected $_formularioDecoratorOPController;

	/**
	 * Controlador de componentes dos formulários e elementos
	 * 
	 * @var Basico_OPController_ComponenteOPController object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	protected $_componenteOPController;

	/**
	 * Controlador de categorias
	 * 
	 * @var Basico_OPController_CategoriaOPController object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	protected $_categoriaOPController;

	/**
	 * Controlador de controle de versão de objetos
	 * 
	 * @var Basico_OPController_CVCOPController object
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasconcelos@rochedoframework.com)
	 * @since 21/06/2012
	 */
	protected $_CVCOPController;

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
	 * @since 03/05/2012
	 */
	protected function _initControllers()
	{
		// inicializando controladores utilizados por este controlador
		$this->_formularioElementoOPController 		   = Basico_OPController_FormularioElementoOPController::getInstance();
		$this->_formularioAssocclElementoOPController  = Basico_OPController_FormularioAssocclElementoOPController::getInstance();
		$this->_formularioAssocclDecoratorOPController = Basico_OPController_FormularioAssocclDecorator::getInstance();
		$this->_formularioDecoratorOPController        = Basico_OPController_FormularioDecoratorOPController::getInstance();
		$this->_componenteOPController                 = Basico_OPController_ComponenteOPController::getInstance();
		$this->_categoriaOPController                  = Basico_OPController_CategoriaOPController::getInstance();
		$this->_CVCOPController                        = Basico_OPController_CVCOPController::getInstance();

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
		if (self::$_singleton == null){
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
    	$objsFormulariosFilho = $this->_retornaObjetosPorParametros("id_formulario_pai = {$idFormulario}");

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
	private function retornaTodosObjsFormularios()
	{
		// recuperando array de retorno
		$arrayRetorno = parent::_retornaArrayDadosTodosObjetos();

		// retornando array de todos os objetos formulario
		return $arrayRetorno;
	}

	/**
	 * Retorna um array contendo todos os atributos do formulário, através do id passado
	 * 
	 * @param Integer $idFormulario - id do formulário que deseja recuperar as informações
	 * 
	 * @return Array|false - array contendo todos os atributos do formulário ou falso caso não consiga recuperar as informações
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 19/06/2012
	 */
	public function retornaArrayDadosFormularioPorIdFormulario($idFormulario)
	{
		// verificando se foi passado o parametro do id do formulário
		if ((!$idFormulario) or (!is_int($idFormulario))) {
			// retornando falso
			return false;
		}

		// retornando os atributos do objeto
		return $this->_retornaArrayDadosObjetoPorId($idFormulario);
	}

	/**
	 * Retorna um array contendo informações sobre a versão de um formulário
	 * 
	 * @param Integer $idFormulario - id do formulário que deseja recuperar informações sobre a versão
	 * 
	 * @return Array|false - array contendo informações sobre a versão ou falso caso não consiga recuperar as informações
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 21/06/2012
	 */
	public function retornaArrayDadosVersaoFormularioPorIdFormulario($idFormulario)
	{
		// verificando se foi passado o id do formulário
		if ((!$idFormulario) or (!is_int($idFormulario))) {
			// retornando falso
			return false;
		}

		// recuperando objeto formulario
		$objetoFormulario = $this->_retornaObjetosPorParametros("id = {$idFormulario}", null, 1, 0);

		// verificando se o objeto não foi recuperado
		if (!is_object($objetoFormulario)) {
			// retornando falso
			return false;
		}

		// retornando os dados sobre a versão do objeto
		return $this->_CVCOPController->retornaArrayDadosUltimaVersaoObjeto($objetoFormulario);
	}

	/**
	 * Retorna um array contendo os ids e formNames de todos os formulários do sistema
	 * 
	 * @return Array
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 18/06/2012
	 */
	public function retornaArrayIdsFormsNamesTodosFormulariosOrdenadoPorFormName()
	{
		// retornando array com o resultado
		return $this->_retornaArrayDadosObjetosPorParametros("id_formulario_pai is null", 'form_name', null, null, array('id', 'formName'));
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
		$objsFormulario = $this->_retornaObjetosPorParametros("nome = '{$nomeFormulario}' and id_categoria = {$idCategoria}", null, 1, 0);

		// verificando se o formulario foi recuperado
		if (is_object($objsFormulario)) {
			// retornando o action do formulario
			return $objsFormulario->formAction;
		}

		return null;
	}
	
	/**
	 * Retorna o formName de um formulario cujo id foi passado por parametro
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return String|null
	 */
	public function retornaFormNamePorIdFormulario($idFormulario)
	{
		// verificando se foi passado o nome do formulario e sua categoria
		if (!$idFormulario)
			return null;

		// recuperando o formulario
		$objsFormulario = $this->_retornaObjetosPorParametros("id = {$idFormulario}", null, 1, 0);

		// verificando se o formulario foi recuperado
		if (is_object($objsFormulario)) {
			// retornando o action do formulario
			return $objsFormulario->formName;
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
	public static function retornaArrayIncludesFormulario($nomeFormulario)
	{
		// chamando metodo de recuperação de includes de formulários
		return Basico_OPController_IncludeOPController::retornaArrayIncludesFormulario($nomeFormulario);
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
		$objFormulario = $this->_retornaObjetosPorParametros($condicaoSQL, null, 1, 0);
 		
	
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
	 * @return Integer|false
	 */
	public function retornaIdCategoriaFormularioPorFormName($formName)
	{
		// recuperando o obj formulario pelo formName passado
		$objFormulario = $this->_retornaObjetosPorParametros("form_name = '{$formName}'");
		
		// se retornou um objeto retorna o id da categoria
		if (is_object($objFormulario))
			return $objFormulario->idCategoria;
			
		return false;
	}

	/**
	 * Retorna o id da categoria do formulario que o id passado
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Integer|false
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	public function retornaIdCategoriaFormularioPorIdFormulario($idFormulario)
	{
		// verificando se foi passado o id do formulário
		if ((!$idFormulario) or (!is_int($idFormulario))) {
			// retornando falso
			return false;
		}

		// recuperando array de dados
		$arrayIdCategoriaFormulario = $this->_retornaArrayDadosObjetoPorId($idFormulario, array('idCategoria'));

		// se retornou um objeto retorna o id da categoria
		if (is_array(($arrayIdCategoriaFormulario))) {
			// retornando o id da categoria
			return (int) $arrayIdCategoriaFormulario['idCategoria'];
		}

		return false;
	}

	/**
	 * Retorna o id do componente do formulario
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Integer|false
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	public function retornaIdComponenteFormularioPorIdFormulario($idFormulario)
	{
		// verificando se foi passado o id do formulário
		if ((!$idFormulario) or (!is_int($idFormulario))) {
			// retornando falso
			return false;
		}

		// recuperando array de dados
		$arrayIdComponenteFormulario = $this->_retornaArrayDadosObjetoPorId($idFormulario, array('idComponente'));

		// se retornou um objeto retorna o id da categoria
		if (is_array(($arrayIdComponenteFormulario))) {
			// retornando o id da categoria
			return (int) $arrayIdComponenteFormulario['idComponente'];
		}

		return false;
	}

	/**
	 * Retorna um array contendo os ids dos componentes de formulários
	 * 
	 * @param array $arrayIdsFormulario - array contendo os ids dos formulários que deseja recuperar os ids dos componentes
	 * 
	 * @return Array|false - array contendo os ids dos componentes dos formulários ou falso caso não consiga
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	public function retornaArrayIdsComponentesFormulariosPorArrayIdsFormulario(array $arrayIdsFormulario)
	{
		// verificando se foram passados elementos no array de ids de formulários
		if (!count($arrayIdsFormulario)) {
			// retornando falso
			return false;
		}

		// tranformando o array em string
		$stringIdsFormuarios = implode(',', $arrayIdsFormulario);

		// recuperando array com os ids dos componentes
		$arrayIdsComponentes = $this->_retornaArrayDadosObjetosPorParametros("id in ({$stringIdsFormuarios})", null, null, null, array('idComponente'));

		// limpando memória
		unset($stringIdsFormuarios);

		// verificando se foram recuperados os dados
		if (!count($arrayIdsComponentes)) {
			// retornando falso
			return false;
		}

		// inicializando variáveis
		$arrayRetorno = array();

		// loop para popular o array de retorno
		foreach ($arrayIdsComponentes as $arrayValor) {
			// setando o valor no array
			$arrayRetorno[] = $arrayValor['idComponente'];

			// limpando memória
			unset($arrayValor);
		}

		// limpando memória
		unset($arrayIdsComponentes);

		// retornando array
		return $arrayRetorno;
	}

	/**
	 * Retorna um array contendo os ids e nome dos módulos associados a um formulário
	 * 
	 * @param Integer $idFormulario - id do formulário que se deseja recuperar informações sobre os módulos associados
	 * 
	 * @return Array|false - array contendo os ids e nomes dos módulos associados ao formulário ou false caso não haja associação
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 19/06/2012
	 */
	public function retornaArrayIdsNomesModulosFormularioPorIdFormulario($idFormulario)
	{
		// verificando se foi passado o id do formulário
		if ((!$idFormulario) or (!is_int($idFormulario))) {
			// retornando falso
			return false;
		}

		// inicializando variáveis
		$arrayRetorno = array();

		// recuperando o objeto formulario
	 	$this->_model = $this->_retornaObjetosPorParametros("id = {$idFormulario}", null, 1, 0);

	 	// recuperando os objetos módulos associados ao objeto formulário
	 	$arrayModulosAssociadosFormulario = $this->_model->getModulosObjects();

	 	// loop para montar a array de resposta
	 	foreach ($arrayModulosAssociadosFormulario as $objetoModulo) {
	 		// montando array de resultados
	 		$arrayRetorno[$objetoModulo->id] = strtolower($objetoModulo->nome);

	 		// limpando memória
	 		unset($objetoModulo);
	 	}

	 	// limpando memória
	 	unset($arrayModulosAssociadosFormulario);

	 	// retornando array de resultados
	 	return $arrayRetorno;
	}

	/**
	 * Retorna um array contendo os ids dos sub-formulários de um formulário
	 * 
	 * @param Integer $idFormulario - id do formulário que deseja recuperar os ids dos sub-formulários
	 * 
	 * @return Array - array contendo os ids dos sub-formulários de um formulário ou false se não haver nenhum sub-formulário
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	public function retornaArrayIdsSubFormulariosPorIdFormulario($idFormulario)
	{
		// inicializando variáveis
		$arrayRetorno = array();

		// verificando se foi passado o id do formulário
		if ((!$idFormulario) or (!is_int($idFormulario))) {
			// retornando array vazio
			return $arrayRetorno;
		}

		// recuperando o objeto formulario
	 	$arrayIdsFormulariosFilhos = $this->_retornaArrayDadosObjetosPorParametros("id_formulario_pai = {$idFormulario}", 'ordem', null, null, array('id'));

	 	// verificando o resultado da recuperação
	 	if (!is_array($arrayIdsFormulariosFilhos)) {
	 		// retornando array vazio
	 		return $arrayRetorno;
	 	}

	 	// loop para montar a array de resposta
	 	foreach ($arrayIdsFormulariosFilhos as $arrayValor) {
	 		// montando array de resultados
	 		$arrayRetorno[] = $arrayValor['id'];

	 		// verificando se o sub-formulário possui sub-formulários
	 		if ($this->existeFormulariosFilhosPorIdFormularioViaSQL($idFormulario)) {
	 			// recuperando os ids dos sub-formulários e mesclando com o array de retorno
	 			$arrayRetorno = array_merge($arrayRetorno, $this->retornaArrayIdsSubFormulariosPorIdFormulario($arrayValor['id']));
	 		}

	 		// limpando memória
	 		unset($arrayValor);
	 	}

	 	// limpando memória
	 	unset($arrayIdsFormulariosFilhos);

	 	// retornando array de resultados
	 	return $arrayRetorno;
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

	/**
	 * Verifica se todos os elementos associados a um formulário (incluindo sub-formulários) podem ser utilizados (não possuem problemas de compatibilidade)
	 * 
	 * @param Integer $idFormulario - id do formulário que deseja verificar
	 * 
	 * @return Boolean - true se todos os elementos associados são compatíveis e false caso não
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 20/06/2012
	 */
	public function verificaCompatibilidadeElementosFomularioPorIdFormulario($idFormulario)
	{
		// verificando se foi passado o id do formulário
		if ((!$idFormulario) or (!is_int($idFormulario))) {
			// retornando falso
			return false;
		}

		// inicializando variáveis
		$arrayIdsSubFormularios = array();

		// recuperando a categoria do componente do formulário
		$idCategoriaComponenteFormulario = $this->_componenteOPController->retornaIdCategoriaComponentePorIdComponente($this->retornaIdComponenteFormularioPorIdFormulario($idFormulario));

		// verificando se o formulário possui sub-formulários
		if ($this->existeFormulariosFilhosPorIdFormularioViaSQL($idFormulario)) {
			// recuperando os ids dos formulários filhos
			$arrayIdsSubFormularios = $this->retornaArrayIdsSubFormulariosPorIdFormulario($idFormulario);

			// recuperando as categorias dos componentes dos sub-formulários
			$arrayIdsCategoriasComponentesSubFormulario = $this->_componenteOPController->retornaArrayIdsCategoriasCompoentesPorArrayIdsComponentes($this->retornaArrayIdsComponentesFormulariosPorArrayIdsFormulario($arrayIdsSubFormularios));
		}

		// recuperando os ids dos elementos do formulário e sub-formulários (caso existam)
		$arrayIdsElementosFormularios = $this->_formularioAssocclElementoOPController->retornaArrayIdsElementosFormularioOrdenadoPorIdFormularioOrdemPorArrayIdsFormularios(array_merge(array($idFormulario), $arrayIdsSubFormularios));

		// verificando o resultado da recuperação dos ids dos elementos e subforms e elementos de subforms
		if ((!is_array($arrayIdsElementosFormularios)) or (!count($arrayIdsElementosFormularios))) {
			// retornando falso
			return false;
		}

		// verificando se, caso haja sub-formulários, as categorias dos componentes deles são compatíveis
		if ((isset($arrayIdsCategoriasComponentesSubFormulario)) and (!$this->_categoriaOPController->verificaCompatibilidadeCategoriaComponenteFormularioCategoriasComponentesSubFormularios($idCategoriaComponenteFormulario, $arrayIdsCategoriasComponentesSubFormulario))) {
			// retornando falso
			return false;
		}

		// recuperando os ids das categorias dos componentes dos elementos dos formulários
		$arrayIdsCategoriasComponentesElementos = $this->_componenteOPController->retornaArrayIdsCategoriasCompoentesPorArrayIdsComponentes($this->_formularioElementoOPController->retornaArrayIdsComponentesElementosPorArrayIdsElementos($arrayIdsElementosFormularios));

		// verificando se a categoria dos componentes dos elementos é compatível com a categoria do componente do formulário
		if (!$this->_categoriaOPController->verificaCompatibilidadeCategoriaComponenteFormularioCategoriasComponentesElementos($idCategoriaComponenteFormulario, $arrayIdsCategoriasComponentesElementos)) {
			// retornando falso
			return false;
		}

		// retornando sucesso
		return true;	
	}

	/**
	 * Verifica se todos os decorators associados a um formulário (incluíndo sub-formulários) podem ser utilizados (não possuem problemas de compatibilidade)
	 * 
	 * @param Integer $idFormulario - id do formulário que deseja verificar
	 * 
	 * @return Boolean - true se todos os decorators associados são compatíveis e false caso não
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 * 
	 * @todo adicionar verificação sobre os decorators dos elementos do formulário
	 */
	public function verificaCompatibilidadeDecoratorsFomularioPorIdFormulario($idFormulario)
	{
		// verificando se foi passado o id do formulário
		if ((!$idFormulario) or (!is_int($idFormulario))) {
			// retornando falso
			return false;
		}

		// inicializando variáveis
		$arrayIdsSubFormularios = array();

		// recuperando a categoria do componente do formulário
		$idCategoriaComponenteFormulario = $this->_componenteOPController->retornaIdCategoriaComponentePorIdComponente($this->retornaIdComponenteFormularioPorIdFormulario($idFormulario));

		// verificando se o formulário possui sub-formulários
		if ($this->existeFormulariosFilhosPorIdFormularioViaSQL($idFormulario)) {
			// recuperando os ids dos formulários filhos
			$arrayIdsSubFormularios = $this->retornaArrayIdsSubFormulariosPorIdFormulario($idFormulario);

			// recuperando as categorias dos componentes dos sub-formulários
			$arrayIdsCategoriasComponentesSubFormulario = $this->_componenteOPController->retornaArrayIdsCategoriasCompoentesPorArrayIdsComponentes($this->retornaArrayIdsComponentesFormulariosPorArrayIdsFormulario($arrayIdsSubFormularios));
		}

		// recuperando os ids dos decorators do formulário e sub-formulários (caso existam)
		$arrayIdsDecoratorsFormularios = $this->_formularioAssocclDecoratorOPController->retornaArrayIdsDecoratorsPorArrayIdsFormularios(array_merge(array($idFormulario), $arrayIdsSubFormularios));

		// verificando o resultado da recuperação dos ids dos elementos e subforms e elementos de subforms
		if ((!is_array($arrayIdsDecoratorsFormularios)) or (!count($arrayIdsDecoratorsFormularios))) {
			// retornando falso
			return false;
		}

		// recuperando os ids das categorias dos componentes dos decorators dos formulários
		$arrayIdsCategoriasComponentesDecorators = $this->_componenteOPController->retornaArrayIdsCategoriasCompoentesPorArrayIdsComponentes($this->_formularioDecoratorOPController->retornaArrayIdsComponentesDecoratorsPorArrayIdsDecorators($arrayIdsDecoratorsFormularios));

		// verificando se a categoria dos componentes dos decorators é compatível com a categoria do formulário
		if (!$this->_categoriaOPController->verificaCompatibilidadeCategoriaComponenteFormularioCategoriasComponentesDecorators($idCategoriaComponenteFormulario, $arrayIdsCategoriasComponentesDecorators)) {
			// retornando falso
			return false;
		}

		// retornando sucesso
		return true;
	}

	/**
	 * Verifica se algum registro dentro de um grupo de registros das entidades passadas por parametro estão desativadas
	 * 
	 * @param $arrayIdsRegistros - array contendo os ids dos registros que deseja verificar.
	 * 
	 * @return Array|Boolean - array contendo o nome das entidades e ids com registros desativados, false se não conseguir recuperar a infomração e true se todos os registros estiverem ativados
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 31/07/2012
	 */
	public static function checaRegistrosAssociadosDesativadosPorArrayIdsRegistros(array $arrayIdsRegistros)
	{
		return true;
		// verificando se foi passado o array de parametros
		if (!count($arrayIdsRegistros)) {
			// retornando falso
			return false;
		}

		// recuperando associações diretas
		$arrayNomesTabelasIdsRegistrosAssociacaoDireta = Basico_OPController_DBCheckOPController::recuperaArrayRelacoesDiretas(array('basico.formulario' => $arrayIdsRegistros));

		// montando o array de associações globais
		$arrayNomesTabelasIdsRegistrosAssociacaoGlobal = array_merge_recursive(array('basico.formulario' => $arrayIdsRegistros), $arrayNomesTabelasIdsRegistrosAssociacaoDireta);

		// verificando se foi recuperado algum componente
		if (array_key_exists('basico.componente', $arrayNomesTabelasIdsRegistrosAssociacaoDireta)) {
			// recuperando relações indiretas do componente (includes)
			$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaComponenteFormulario = Basico_OPController_DBCheckOPController::recuperaArrayRelacoesIndiretas(array('basico.componente' => $arrayNomesTabelasIdsRegistrosAssociacaoDireta['basico.componente']));

			// verificando se foi recuperado algum include
			if (array_key_exists('basico_componente.assoccl_include', $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaComponenteFormulario)) {
				// setando o array
				$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaComponenteFormulario = array('basico_componente.assoccl_include' => $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaComponenteFormulario['basico_componente.assoccl_include']);

				// eliminando elemetos já recuperados na associação global
				$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaComponenteFormulario = Basico_OPController_UtilOPController::retornaArrayDiffBiDimensional($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaComponenteFormulario);
				// adicionando elementos no array de associações globais
				$arrayNomesTabelasIdsRegistrosAssociacaoGlobal = array_merge_recursive($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaComponenteFormulario);

				// recuperando associações diretas das associações indiretas do componente do formulario, excluindo informações sobre o componente
				$arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndiretaComponenteFormulario = Basico_OPController_DBCheckOPController::recuperaArrayRelacoesDiretas($arrayNomesTabelasIdsRegistrosAssociacaoIndiretaComponenteFormulario, array('basico.componente'));

				// eliminando elementos já recuperados na associação global
				$arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndiretaComponenteFormulario = Basico_OPController_UtilOPController::retornaArrayDiffBiDimensional($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndiretaComponenteFormulario);
				// adicionando elementos no array de associações globais
				$arrayNomesTabelasIdsRegistrosAssociacaoGlobal = array_merge_recursive($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndiretaComponenteFormulario);
			}
		}

		// recuperando associações indiretas
		$arrayNomesTabelasIdsRegistrosAssociacaoIndireta = Basico_OPController_DBCheckOPController::recuperaArrayRelacoesIndiretas(array('basico.formulario' => $arrayIdsRegistros));

//$arrayNomesTabelasIdsRegistrosAssociacaoIndireta = array('basico.formulario' => $arrayNomesTabelasIdsRegistrosAssociacaoIndireta['basico.formulario']);
$arrayNomesTabelasIdsRegistrosAssociacaoIndireta = array('basico_formulario.assoccl_decorator' => $arrayNomesTabelasIdsRegistrosAssociacaoIndireta['basico_formulario.assoccl_decorator']);
//$arrayNomesTabelasIdsRegistrosAssociacaoIndireta = array('basico_formulario.assoccl_modulo' => $arrayNomesTabelasIdsRegistrosAssociacaoIndireta['basico_formulario.assoccl_modulo']);
//$arrayNomesTabelasIdsRegistrosAssociacaoIndireta = array('basico_formulario.assoccl_include' => $arrayNomesTabelasIdsRegistrosAssociacaoIndireta['basico_formulario.assoccl_include']);
//$arrayNomesTabelasIdsRegistrosAssociacaoIndireta = array('basico_formulario.assoccl_evento' => $arrayNomesTabelasIdsRegistrosAssociacaoIndireta['basico_formulario.assoccl_evento']);
//$arrayNomesTabelasIdsRegistrosAssociacaoIndireta = array('basico_formulario.assoccl_elemento' => $arrayNomesTabelasIdsRegistrosAssociacaoIndireta['basico_formulario.assoccl_elemento']);

		// eliminando elementos já recuperados na associação global
		$arrayNomesTabelasIdsRegistrosAssociacaoIndireta = Basico_OPController_UtilOPController::retornaArrayDiffBiDimensional($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoIndireta);
		// adicionando elementos no array de associações globais
		$arrayNomesTabelasIdsRegistrosAssociacaoGlobal = array_merge_recursive($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoIndireta);

		// recuperando associações diretas das associações indiretas, excluindo associações com o formulário
		$arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndireta = Basico_OPController_DBCheckOPController::recuperaArrayRelacoesDiretas($arrayNomesTabelasIdsRegistrosAssociacaoIndireta, array('basico.formulario'));

		// eliminando elementos já recuperados na associação global
		$arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndireta = Basico_OPController_UtilOPController::retornaArrayDiffBiDimensional($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndireta);
		// adicionando elementos no array de associações globais
		$arrayNomesTabelasIdsRegistrosAssociacaoGlobal = array_merge_recursive($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndireta);

		// verificando se foi recuperado algum componente
		if (array_key_exists('basico.componente', $arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndireta)) {
			// recuperando relações indiretas do componente (includes), excluindo informações sobre o formulário
			$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario = Basico_OPController_DBCheckOPController::recuperaArrayRelacoesIndiretas(array('basico.componente' => $arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndireta['basico.componente']), array('basico.formulario'));

			// verificando se foi recuperado algum include
			if (array_key_exists('basico_componente.assoccl_include', $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario)) {
				// setando o array
				$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario = array('basico_componente.assoccl_include' => $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario['basico_componente.assoccl_include']);

				// eliminando elementos já recuperados na associação global
				$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario = Basico_OPController_UtilOPController::retornaArrayDiffBiDimensional($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario);
				// adicionando elementos no array de associações globais
				$arrayNomesTabelasIdsRegistrosAssociacaoGlobal = array_merge_recursive($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario);

				// recuperando associações diretas das associações indiretas do componente do formulario, excluindo informações sobre o componente
				$arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario = Basico_OPController_DBCheckOPController::recuperaArrayRelacoesDiretas($arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario, array('basico.componente'));

				// eliminando elementos já recuperados na associação global
				$arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario = Basico_OPController_UtilOPController::retornaArrayDiffBiDimensional($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario);
				// adicionando elementos no array de associações globais
				$arrayNomesTabelasIdsRegistrosAssociacaoGlobal = array_merge_recursive($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario);
			}
		}

		// verificando se foi recuperado algum grupo de decorator
		if (array_key_exists('basico_formulario_decorator.grupo', $arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndireta)) {
			// inicializando variáveis
			$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaDecorators = array();

			// recuperando relações indiretas do grupo (decorators), excluindo informações sobre o basico_formulario.assoccl_decorator
			$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators = Basico_OPController_DBCheckOPController::recuperaArrayRelacoesIndiretas(array('basico_formulario_decorator.grupo' => $arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndireta['basico_formulario_decorator.grupo']), array('basico_formulario.assoccl_decorator'));

			// eliminando elementos já recuperados na associação global
			$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators = Basico_OPController_UtilOPController::retornaArrayDiffBiDimensional($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators);

			// loop para recuperar recursivamente os grupos de decoratos associados a outros grupos
			while (array_key_exists('basico_form_decorator_grupo.assocag_grupo', $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators)) {
				// setando o array
				$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators = array('basico_form_decorator_grupo.assocag_grupo' => $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators['basico_form_decorator_grupo.assocag_grupo']);

				// adicionando elementos no array de associações globais
				$arrayNomesTabelasIdsRegistrosAssociacaoGlobal = array_merge_recursive($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators);

				// recuperando associações diretas das associacoes indiretas das associações diretas das associações indiretas com grupo decorators
				$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators = Basico_OPController_DBCheckOPController::recuperaArrayRelacoesDiretas($arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators);

				// verificando o resultado da recuperação
				if (false !== $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators) {
					// eliminando elementos já recuperados na associação global
					$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators = Basico_OPController_UtilOPController::retornaArrayDiffBiDimensional($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators);
					// adicionando elementos no array de associações globais
					$arrayNomesTabelasIdsRegistrosAssociacaoGlobal = array_merge_recursive($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators);
				
					// fazendo merge nos arrays de resultados
					$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaDecorators = array_merge($arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaDecorators, $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators);

					// verificando se foi recuperado algum grupo de decorator
					if (array_key_exists('basico_formulario_decorator.grupo', $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators)) {
						// recuperando relações indiretas do grupo (decorators), excluindo informações sobre o basico_formulario.assoccl_decorator
						$arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators = Basico_OPController_DBCheckOPController::recuperaArrayRelacoesIndiretas(array('basico_formulario_decorator.grupo' => $arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators['basico_formulario_decorator.grupo']), array('basico_formulario.assoccl_decorator'));
					}
				}
			}
		}

		echo '01 formularios (ids):';
		Basico_OPController_UtilOPController::print_debug($arrayIdsRegistros, true);
		echo '02 relacoes diretas:';
		Basico_OPController_UtilOPController::print_debug($arrayNomesTabelasIdsRegistrosAssociacaoDireta, true);
		echo '03 relacoes indiretas com os componentes do formulario:';
		Basico_OPController_UtilOPController::print_debug($arrayNomesTabelasIdsRegistrosAssociacaoIndiretaComponenteFormulario, true);
		echo '04 relacoes diretas das relacoes indiretas com os componentes do formulario:';
		Basico_OPController_UtilOPController::print_debug($arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndiretaComponenteFormulario, true);
		echo '05 relacoes indiretas:';
		Basico_OPController_UtilOPController::print_debug($arrayNomesTabelasIdsRegistrosAssociacaoIndireta, true);
		echo '06 relacoes diretas das relacoes indiretas:';
		Basico_OPController_UtilOPController::print_debug($arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoIndireta, true);
		echo '07 relacoes indiretas com os componentes do formulario com relacao indireta:';
		Basico_OPController_UtilOPController::print_debug($arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario, true);
		echo '08 relacoes diretas das relacoes indiretas com os componentes do formulario com relacao indireta:';
		Basico_OPController_UtilOPController::print_debug($arrayNomesTabelasIdsRegistrosAssociacaoDiretaAssociacaoDiretaAssociacaoIndiretaComponenteFormulario, true);
		echo '09 relacoes indiretas das relacoes diretas das relacoes indiretas com os grupo decorators do formulario:';
		Basico_OPController_UtilOPController::print_debug($arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaGrupoDecorators, true);
		echo '10 relacoes diretas das relacoes indiretas das relacoes diretas das relacoes indiretas com os grupo decorators do formulario:';
		Basico_OPController_UtilOPController::print_debug($arrayNomesTabelasIdsRegistrosAssociacaoIndiretaAssociacaoDiretaAssociacaoIndiretaDecorators, true);
		echo 'GLOBAL:';
		Basico_OPController_UtilOPController::print_debug($arrayNomesTabelasIdsRegistrosAssociacaoGlobal, true, false, true);
	}
}