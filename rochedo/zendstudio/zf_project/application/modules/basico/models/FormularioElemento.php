<?php
/**
 * FormularioElemento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioElementoMapper
 * @subpackage Model
 */
class Basico_Model_FormularioElemento
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_FormularioElementoMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var String
	 */
	protected $_constanteTextualLabel;
	/**
	 * @var String
	 */
	protected $_elementName;
	/**
	 * @var String
	 */
	protected $_elementAttribs;
	/**
	 * @var String
	 */
	protected $_element;
    /**
     * @var Boolean
     */
    protected $_elementReloadable;
	/**
	 * @var Integer
	 */
	protected $_categoria;
	/**
	 * @var Integer
	 */
	protected $_ajuda;
	/**
     * @var Integer
     */
    protected $_componente;
    /**
	 * @var Date
	 */
	protected $_dataHoraCriacao;
	/**
	 * @var Date
	 */
	protected $_dataHoraUltimaAtualizacao;
	/**
	 * @var String
	 */
	protected $_rowinfo;
	
	/**
	 * Constructor
	 * 
	 * @param  array|null $options 
	 * @return void
	 */
	public function __construct(array $options = null)
	{
		if (is_array($options)) 
		{
			$this->setOptions($options);
		}
	}

	/**
	 * Overloading: allow property access
	 * 
	 * @param  string $name 
	 * @param  mixed $value 
	 * @return void
	 */
	public function __set($name, $value)
	{
		$method = 'set' . $name;
		if ('mapper' == $name || !method_exists($this, $method)) 
		{
			throw new Exception(MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA);
		}
		$this->$method($value);
	}

	/**
	 * Overloading: allow property access
	 * 
	 * @param  string $name 
	 * @return mixed
	 */
	public function __get($name)
	{
		$method = 'get' . $name;
		if ('mapper' == $name || !method_exists($this, $method)) 
		{
			throw new Exception(MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA);
		}
		return $this->$method();
	}

	/**
	 * Set object state
	 * 
	 * @param  array $options 
	 * @return Basico_Model_FormularioElemento
	 */
	public function setOptions(array $options)
	{
		$methods = get_class_methods($this);
		foreach ($options as $key => $value) 
		{
			$method = 'set' . ucfirst($key);
			if (in_array($method, $methods)) 
			{
			    $this->$method($value);
			}
		}
		return $this;
	}
    
	/**
	* Set nome
	* 
	* @param String $nome 
	* @return String
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get nome
	* 
	* @return null|String
	*/
	public function getNome()
	{
		return $this->_nome;
	}
     
	/**
	* Set descricao
	* 
	* @param String $descricao 
	* @return String
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_OPController_UtilOPController::retornaValorTipado($descricao, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get descricao
	* 
	* @return null|String
	*/
	public function getDescricao()
	{
		return $this->_descricao;
	}
     
	/**
	* Set constanteTextualLabel
	* 
	* @param String $constanteTextualLabel 
	* @return String
	*/
	public function setConstanteTextualLabel($constanteTextualLabel)
	{
		$this->_constanteTextualLabel = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualLabel, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constanteTextualLabel
	* 
	* @return null|String
	*/
	public function getConstanteTextualLabel()
	{
		return $this->_constanteTextualLabel;
	}
     
	/**
	* Set elementName
	* 
	* @param String $elementName 
	* @return String
	*/
	public function setElementName($elementName)
	{
		$this->_elementName = Basico_OPController_UtilOPController::retornaValorTipado($elementName, TIPO_STRING,true); 
		return $this;
	}

	/**
	* Get elementName
	* 
	* @return null|String
	*/
	public function getElementName()
	{
		return $this->_elementName;
	}
	
    /**
	* Set elementAttribs
	* 
	* @param String $elementAttribs
	* @return String
	*/
	public function setElementAttribs($elementAttribs)
	{
		$this->_elementAttribs = Basico_OPController_UtilOPController::retornaValorTipado($elementAttribs, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get elementAttribs
	* 
	* @return null|String
	*/
	public function getElementAttribs()
	{
		return $this->_elementAttribs;
	}
     
	/**
	* Set element
	* 
	* @param String $element 
	* @return String
	*/
	public function setElement($element)
	{
		$this->_element = Basico_OPController_UtilOPController::retornaValorTipado($element, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get element
	* 
	* @return null|String
	*/
	public function getElement()
	{
		return $this->_element;
	}
	
    /**
    * Set element
    * 
    * @param String $element 
    * @return String
    */
    public function setElementReloadable($elementReloadable)
    {
    	$this->_elementReloadable = Basico_OPController_UtilOPController::retornaValorTipado($elementReloadable, TIPO_STRING,true);
        return $this;
    }

    /**
    * Get element
    * 
    * @return null|String
    */
    public function getElementReloadable()
    {
        return $this->_elementReloadable;
    }
    
	/**
	* Set componente
	* 
	* @param int $componente 
	* @return Basico_Model_FormularioElemento
	*/
	public function setComponente($componente)
	{
		$this->_componente = Basico_OPController_UtilOPController::retornaValorTipado($componente, TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get componente
	* 
	* @return null|int
	*/
	public function getComponente()
	{
		return $this->_componente;
	}

    /**
     * Get componente object
     * @return null|componente
     */
    public function getComponenteObject()
    {
        $model = new Basico_Model_Componente();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_componente);
        return $object;
    }

    /**
     * Get mascaras objects
     * @return null|componente
     */
    public function getMascarasObjects()
    {
        $model = new Basico_Model_FormulariosElementosMascaras();
        $objects = Basico_OPController_PersistenceOPController::bdObjectFetchList($model, "id_formulario_elemento = {$this->_id}");
        return $objects;
    }
    
	/**
	* Set dataHoraCriacao
	* 
	* @param String $dataHoraCriacao 
	* @return DateTime
	*/
	public function setDataHoraCriacao($dataHoraCriacao)
	{
		$this->_dataHoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get dataHoraCriacao
	* 
	* @return null|String
	*/
	public function getDataHoraCriacao()
	{
		return $this->_dataHoraCriacao;
	}
	
	/**
	* Set dataHoraUltimaAtualizacao
	* 
	* @param String $dataHoraUltimaAtualizacao 
	* @return DateTime
	*/
	public function setDataHoraUltimaAtualizacao($dataHoraUltimaAtualizacao)
	{
		$this->_dataHoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaAtualizacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get dataHoraUltimaAtualizacao
	* 
	* @return null|String
	*/
	public function getDataHoraUltimaAtualizacao()
	{
		return $this->_dataHoraUltimaAtualizacao;
	}

    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_FormularioElemento
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get rowinfo
	* 
	* @return null|String
	*/
	public function getRowinfo()
	{
		return $this->_rowinfo;
	}

    /**
	* Set entry categoria
	* 
	* @param  int $categoria 
	* @return Basico_Model_FormularioElemento
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria, TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Retrieve entry categoria
	* 
	* @return null|int
	*/
	public function getCategoria()
	{
		return $this->_categoria;
	}
	
    /**
	* Set entry id
	* 
	* @param  int $id
	* @return Basico_Model_FormularioElemento
	*/
	public function setId($id)
	{
		$this->_id = Basico_OPController_UtilOPController::retornaValorTipado($id, TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Retrieve entry formularioElementoFilter
	* 
	* @return null|int
	*/
	public function getId()
	{
		return $this->_id;
	}
 
    /**
	* Set entry ajuda
	* 
	* @param  int $ajuda 
	* @return Basico_Model_FormularioElemento
	*/
	public function setAjuda($ajuda)
	{
		$this->_ajuda = Basico_OPController_UtilOPController::retornaValorTipado($ajuda, TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Retrieve entry ajuda
	* 
	* @return null|int
	*/
	public function getAjuda()
	{
		return $this->_ajuda;
	}
	
    /**
     * Get categoria object
     * @return null|categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_categoria);
        return $object;
    }
	
    /**
     * Get ajuda object
     * @return null|ajuda
     */
    public function getAjudaObject()
    {
        $model = new Basico_Model_Ajuda();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_ajuda);
        return $object;
    }
      
    /**
     * Get formularioFormularioElemento object
     * @return null|formularioFormularioElemento
     */
    public function getFormularioFormularioElementoObject()
    {
    	// instanciando modelo de formulario formulario elemento
        $model = new Basico_Model_FormularioFormularioElemento();

        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFetchList($model, "id_formulario_elemento = {$this->_id}");

        // verificando se o objeto existe
        if (count($object))
        	return $object[0];

		return null;
    }

    /**
     * Get formularioFormularioElemento object
     * 
     * @param Integer $idFormulario
     * 
     * @return null|formularioFormularioElemento
     */
    public function getFormularioFormularioElementoObjectPorIdFormulario($idFormulario)
    {
    	// verificando se foi passado o id do formulario
    	if (!$idFormulario)
    		return null;

    	// instanciando modelo de formulario formulario elemento
        $model = new Basico_Model_FormularioFormularioElemento();

        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFetchList($model, "id_formulario_elemento = {$this->_id} and id_formulario = {$idFormulario}");

        // verificando se o objeto existe
        if (count($object))
        	return $object[0];

		return null;
    }

    /**
     * Get formularioElementoValidators objects
     * @return null|formularioElementoValidatods
     */   
    public function getFormularioElementoValidatorsObjects()
    {
    	$modelFormularioElementoFormularioElementoValidator = new Basico_Model_FormularioElementoFormularioElementoValidator();
    	$arrayFormularioElementoFormularioElementoValidatorObjects = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelFormularioElementoFormularioElementoValidator, "id_formulario_elemento = {$this->_id}");
    	$modelFormularioElementoValidator = new Basico_Model_FormularioElementoValidator();

        $arrayIdsFormularioElementoValidators = array();

        foreach ($arrayFormularioElementoFormularioElementoValidatorObjects as $formularioElementoFormularioElementoValidatorObject){
            $arrayIdsFormularioElementoValidators[] = $formularioElementoFormularioElementoValidatorObject->formularioElementoValidator;
        }
        
        $stringIdsFormularioElementoValidators = implode(',', $arrayIdsFormularioElementoValidators);
        
        if ($stringIdsFormularioElementoValidators)
            $arrayObjects = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelFormularioElementoValidator, "id IN ({$stringIdsFormularioElementoValidators})");
        else
            $arrayObjects = array();
       
        return $arrayObjects; 	
    }

    /**
     * Retorna os objetos FormularioElementoFormularioElementoValidator
     * 
     * @return Array|null
     */
    public function getFormularioElementoFormularioElementoValidatorObjects()
    {
    	// recuperando modelo
    	$modelFormularioElementoFormularioElementoValidator = new Basico_Model_FormularioElementoFormularioElementoValidator();
    	// recuperando objetos
    	$arrayFormularioElementoFormularioElementoValidatorObjects = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelFormularioElementoFormularioElementoValidator, "id_formulario_elemento = {$this->_id}");

    	// verificando o resultado da recuperacao
    	if (count($arrayFormularioElementoFormularioElementoValidatorObjects) > 0) {
    		// retornando array de objetos FormularioElementoFormularioElementoValidator
    		return $arrayFormularioElementoFormularioElementoValidatorObjects;
    	}

    	return null;
    }

    /**
     * Get formularioElementoFormularioVinculado object
     * @param $objFormulario
     * @param $offset
     * @return null|Basico_Model_Formulario
     */
    public function getFormularioElementoFormularioVinculadoObject(&$objFormulario, $offset)
    {
    	// instancia o modelo de FormularioFormularioElemento
    	$modelFormularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();
    	
    	// localiza o elemento na relacao de formulario com formulario elemento
    	$objFormularioFormularioElemento = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelFormularioFormularioElemento, "id_formulario = {$objFormulario->id} and id_formulario_elemento = {$this->_id}", "ordem", 1, $offset);
    	
    	// instancia o modelo de FormularioFormularioElementoFormulario
    	$modelFormularioFormularioElementoFormulario = new Basico_Model_FormularioFormularioElementoFormulario();
    	
    	// localiza o formulario pelo id de FormularioElemento
    	$objFormularioFormularioElementoFormulario = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelFormularioFormularioElementoFormulario, "id_formulario_formulario_elemento = {$objFormularioFormularioElemento[0]->id}", null, 1, 0);
    	
    	if ($objFormularioFormularioElementoFormulario[0]->id){
    		// instancia o modelo de formulario
    		$modelFormulario = new Basico_Model_Formulario();
    		
    		return Basico_OPController_PersistenceOPController::bdObjectFind($modelFormulario, $objFormularioFormularioElementoFormulario[0]->formulario);
    	}
    	else
    		throw new Exception(MSG_ERRO_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_SEM_FORMULARIO);
    }
    
    /**
     * Get constanteTextualTitulo string
     * @param $objFormulario
     * @param $offset
     * @return null|string
     */
    public function getFormularioElementoConstanteTextualTitulo(&$objFormulario, $offset)
    {
    	// instancia o modelo de FormularioFormularioElemento
    	$modelFormularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();
    	
    	// localiza o elemento na relacao de formulario com formulario elemento
    	$objFormularioFormularioElemento = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelFormularioFormularioElemento, "id_formulario = {$objFormulario->id} and id_formulario_elemento = {$this->_id}", "ordem", 1, $offset);
    	
    	// instancia o modelo de FormularioFormularioElementoFormulario
    	$modelFormularioFormularioElementoFormulario = new Basico_Model_FormularioFormularioElementoFormulario();
    	
    	// localiza o formulario pelo id de FormularioElemento
    	$objFormularioFormularioElementoFormulario = Basico_OPController_PersistenceOPController::bdObjectFetchList($modelFormularioFormularioElementoFormulario, "id_formulario_formulario_elemento = {$objFormularioFormularioElemento[0]->id}", null, 1, 0);
    	
    	return $objFormularioFormularioElementoFormulario[0]->constanteTextualLabel;
    }

	/**
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_FormularioElemento
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioElementoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioElementoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_FormularioElementoMapper());
		}
		return $this->_mapper;
	}
}
