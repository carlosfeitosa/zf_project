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
	protected $_formularioElementoFilter;
	
	/**
	 * @var Integer
	 */
	protected $_ajuda;
	
	/**
	 * @var Integer
	 */
	protected $_decorator;
	
    /**
     * @var Integer
     */
    protected $_componente;
	
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
		$this->_nome = Basico_UtilControllerController::retornaValorTipado($nome, TIPO_STRING,true);
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
		$this->_descricao = Basico_UtilControllerController::retornaValorTipado($descricao, TIPO_STRING,true);
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
		$this->_constanteTextualLabel = Basico_UtilControllerController::retornaValorTipado($constanteTextualLabel, TIPO_STRING,true);
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
		$this->_elementName = Basico_UtilControllerController::retornaValorTipado($elementName, TIPO_STRING,true); 
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
		$this->_elementAttribs = Basico_UtilControllerController::retornaValorTipado($elementAttribs, TIPO_STRING,true);
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
		$this->_element = Basico_UtilControllerController::retornaValorTipado($element, TIPO_STRING,true);
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
    	$this->_elementReloadable = Basico_UtilControllerController::retornaValorTipado($elementReloadable, TIPO_STRING,true);
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
	* @return Basico_Model_Componente
	*/
	public function setComponente($componente)
	{
		$this->_componente = Basico_UtilControllerController::retornaValorTipado($componente, TIPO_INTEIRO,true);
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
        $object = $model->find($this->_componente);
        return $object;
    }

    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_FormularioElemento
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_UtilControllerController::retornaValorTipado($rowinfo, TIPO_STRING,true);
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
		$this->_categoria = Basico_UtilControllerController::retornaValorTipado($categoria, TIPO_INTEIRO,true);
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
	* Set entry decorator
	* 
	* @param  int $decorator
	* @return Basico_Model_FormularioElemento
	*/
	public function setDecorator($decorator)
	{
		$this->_decorator = Basico_UtilControllerController::retornaValorTipado($decorator, TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Retrieve entry decorator
	* 
	* @return null|int
	*/
	public function getDecorator()
	{
		return $this->_decorator;
	}
	
    /**
     * Get formularioElementoDecorator object
     * @return null|formularioElementoDecorator
     */
    public function getDecoratorObject()
    {
        $model = new Basico_Model_Decorator();
        $object = $model->find($this->_decorator);
        return $object;
    }
	
    /**
	* Set entry id
	* 
	* @param  int $id
	* @return Basico_Model_FormularioElemento
	*/
	public function setId($id)
	{
		$this->_id = Basico_UtilControllerController::retornaValorTipado($id, TIPO_INTEIRO,true);
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
	* Set entry formularioElementoFilter
	* 
	* @param  int $formularioElementoFilter 
	* @return Basico_Model_FormularioElemento
	*/
	public function setFormularioElementoFilter($formularioElementoFilter)
	{
		$this->_formularioElementoFilter = Basico_UtilControllerController::retornaValorTipado($formularioElementoFilter, TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Retrieve entry formularioElementoFilter
	* 
	* @return null|int
	*/
	public function getFormularioElementoFilter()
	{
		return $this->_formularioElementoFilter;
	}
	
    /**
	* Set entry ajuda
	* 
	* @param  int $ajuda 
	* @return Basico_Model_FormularioElemento
	*/
	public function setAjuda($ajuda)
	{
		$this->_ajuda = Basico_UtilControllerController::retornaValorTipado($ajuda, TIPO_INTEIRO,true);
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
        $object = $model->find($this->_categoria);
        return $object;
    }
	
    /**
     * Get formularioElementoFilter object
     * @return null|formularioElementoFilter
     */
    public function getFormularioElementoFilterObject()
    {
        $model = new Basico_Model_FormularioElementoFilter();
        $object = $model->find($this->_formularioElementoFilter);
        return $object;
    }
    
    /**
     * Get ajuda object
     * @return null|ajuda
     */
    public function getAjudaObject()
    {
        $model = new Basico_Model_Ajuda();
        $object = $model->find($this->_ajuda);
        return $object;
    }
      
    /**
     * Get formularioFormularioElemento object
     * @return null|formularioFormularioElemento
     */
    public function getFormularioFormularioElementoObject()
    {
        $model = new Basico_Model_FormularioFormularioElemento();
        $object = $model->fetchList("id_formulario_elemento = {$this->_id}");
        return $object[0];
    }
    
    /**
     * Get formularioElementoValidators objects
     * @return null|formularioElementoValidatods
     */   
    public function getFormularioElementoValidatorsObjects()
    {
    	$modelFormularioElementoFormularioElementoValidator = new Basico_Model_FormularioElementoFormularioElementoValidator();
    	$arrayFormularioElementoFormularioElementoValidatorObjects = $modelFormularioElementoFormularioElementoValidator->fetchList("id_formulario_elemento = {$this->_id}");
    	$modelFormularioElementoValidator = new Basico_Model_FormularioElementoValidator();

        $arrayIdsFormularioElementoValidators = array();

        foreach ($arrayFormularioElementoFormularioElementoValidatorObjects as $formularioElementoFormularioElementoValidatorObject){
            $arrayIdsFormularioElementoValidators[] = $formularioElementoFormularioElementoValidatorObject->formularioElementoValidator;
        }
        
        $stringIdsFormularioElementoValidators = implode(',', $arrayIdsFormularioElementoValidators);
        
        if ($stringIdsFormularioElementoValidators)
            $arrayObjects = $modelFormularioElementoValidator->fetchList("id IN ({$stringIdsFormularioElementoValidators})");
        else
            $arrayObjects = array();
       
        return $arrayObjects; 	
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
    	$objFormularioFormularioElemento = $modelFormularioFormularioElemento->fetchList("id_formulario = {$objFormulario->id} and id_formulario_elemento = {$this->_id}", "ordem", 1, $offset);
    	
    	// instancia o modelo de FormularioFormularioElementoFormulario
    	$modelFormularioFormularioElementoFormulario = new Basico_Model_FormularioFormularioElementoFormulario();
    	
    	// localiza o formulario pelo id de FormularioElemento
    	$objFormularioFormularioElementoFormulario = $modelFormularioFormularioElementoFormulario->fetchList("id_formulario_formulario_elemento = {$objFormularioFormularioElemento[0]->id}", null, 1, 0);
    	
    	if ($objFormularioFormularioElementoFormulario[0]->id){
    		// instancia o modelo de formulario
    		$modelFormulario = new Basico_Model_Formulario();
    		
    		return $modelFormulario->find($objFormularioFormularioElementoFormulario[0]->formulario);
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
    	$objFormularioFormularioElemento = $modelFormularioFormularioElemento->fetchList("id_formulario = {$objFormulario->id} and id_formulario_elemento = {$this->_id}", "ordem", 1, $offset);
    	
    	// instancia o modelo de FormularioFormularioElementoFormulario
    	$modelFormularioFormularioElementoFormulario = new Basico_Model_FormularioFormularioElementoFormulario();
    	
    	// localiza o formulario pelo id de FormularioElemento
    	$objFormularioFormularioElementoFormulario = $modelFormularioFormularioElementoFormulario->fetchList("id_formulario_formulario_elemento = {$objFormularioFormularioElemento[0]->id}", null, 1, 0);
    	
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

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_FormularioElemento
	*/
	public function find($id)
	{
		$this->getMapper()->find((Int) $id, $this);
		return $this;
	}

	/**
	* Fetch all entries
	* 
	* @return array
	*/
	public function fetchAll()
	{
		return $this->getMapper()->fetchAll();
	}
	
	/**
	* Fetch a list of entries that satisfy the parameters <params>
	* 
	* @return array
	*/
	public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		return $this->getMapper()->fetchList($where, $order, $count, $offset);
	}

}
