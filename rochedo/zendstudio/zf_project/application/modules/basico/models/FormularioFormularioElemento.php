<?php
/**
 * FormularioFormularioElemento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioFormularioElementoMapper
 * @subpackage Model
 */
class Basico_Model_FormularioFormularioElemento
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_FormularioFormularioElementoMapper
     */
    protected $_mapper;

    /**
     * @var Formulario
     */
    protected $_formulario;
    
    /**
     * @var FormularioElemento
     */
    protected $_formularioElemento;
    /**
     * @var FormularioElemento
     */
    protected $_decorator;
    /**
     * @var FormularioElemento
     */
    protected $_grupoFormularioElemento;
    /**
     * @var ElementRequired
     */
    protected $_elementRequired;
    
    /**
     * @var ordem
     */
    protected $_ordem;
    
    /**
     * @var rowinfo
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
     * @return Basico_Model_FormularioFormularioElemento
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
    * Set formulario
    * 
    * @param int $ 
    * @return Basico_Model_Formulario
    */
    public function setFormulario($formulario)
    {
    	$this->_formulario = Basico_OPController_UtilOPController::retornaValorTipado($formulario, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get formulario
    * 
    * @return null|int
    */
    public function getFormulario()
    {
        return $this->_formulario;
    }
 
    /**
     * Get formulario object
     * @return null|Formulario
     */
    public function getFormularioObject()
    {
        $model = new Basico_Model_Formulario();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_formulario);
        return $object;
    }
    
    /**
    * Set formularioElemento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElemento
    */
    public function setFormularioElemento($formularioElemento)
    {
    	$this->_formularioElemento = Basico_OPController_UtilOPController::retornaValorTipado($formularioElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get formularioElemento
    * 
    * @return null|int
    */
    public function getFormularioElemento()
    {
        return $this->_formularioElemento;
    }
    
    /**
    * Set decorator
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElemento
    */
    public function setDecorator($decorator)
    {
    	$this->_decorator = Basico_OPController_UtilOPController::retornaValorTipado($decorator, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get decorator
    * 
    * @return null|int
    */
    public function getDecorator()
    {
        return $this->_decorator;
    }
    
    /**
    * Set grupoFormularioElemento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElemento
    */
    public function setGrupoFormularioElemento($grupoFormularioElemento)
    {
    	$this->_grupoFormularioElemento = Basico_OPController_UtilOPController::retornaValorTipado($grupoFormularioElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get grupoFormularioElemento
    * 
    * @return null|int
    */
    public function getGrupoFormularioElemento()
    {
        return $this->_grupoFormularioElemento;
    }
    
	/**
    * Set elementRequired
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElemento
    */
    public function setElementRequired($elementRequired)
    {
    	$this->_elementRequired = Basico_OPController_UtilOPController::retornaValorTipado($elementRequired, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get elementRequired
    * 
    * @return null|int
    */
    public function getElementRequired()
    {
        return $this->_elementRequired;
    }
 
    /**
     * Get formularioelemento object
     * @return null|Basico_Model_FormularioElemento
     */
    public function getFormularioElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_formularioElemento);
        return $object;
    }
    
    /**
     * Get decorator object
     * @return null|Basico_Model_Decorator
     */
    public function getDecoratorObject()
    {
        $model = new Basico_Model_Decorator();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_decorator);
        return $object;
    }
    
    /**
     * Get grupoFormularioElemento object
     * @return null|Basico_Model_GrupoFormularioElemento
     */
    public function getGrupoFormularioElementoObject()
    {
        $model = new Basico_Model_GrupoFormularioElemento();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_grupoFormularioElemento);
        return $object;
    }

    /**
	* Set ordem
	* 
	* @param Integer $ordem 
	* @return Basico_Model_FormularioFormularioElemento
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get ordem
	* 
	* @return null|String
	*/
	public function getOrdem()
	{
		return $this->_ordem;
	}
    
    
    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_FormularioFormularioElemento
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING, true);
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
    * Set entry id
    * 
    * @param  int $id 
    * @return Basico_Model_FormularioFormularioElemento
    */
    public function setId($id)
    {
    	$this->_id = Basico_OPController_UtilOPController::retornaValorTipado($id, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry id
    * 
    * @return null|int
    */
    public function getId()
    {
        return $this->_id;
    }

    /**
    * Set data mapper
    * 
    * @param  mixed $mapper 
    * @return Basico_Model_FormularioFormularioElemento
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioFormularioElementoMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioFormularioElementoMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormularioFormularioElementoMapper());
        }
        return $this->_mapper;
    }
}
