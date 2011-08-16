<?php
/**
 * TemplateFormulario model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_TemplateFormularioMapper
 * @subpackage Model
 */
class Basico_Model_TemplateFormulario
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_TemplateFormularioMapper
     */
    protected $_mapper;

    /**
     * @var Template
     */
    protected $_template;
    
    /**
     * @var Formulario
     */
    protected $_formulario;
    
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
     * @return Basico_Model_TemplateFormulario
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
    * Set template
    * 
    * @param int $ 
    * @return Basico_Model_Template
    */
    public function setTemplate($template)
    {
        $this->_template = Basico_OPController_UtilOPController::retornaValorTipado($template, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get template
    * 
    * @return null|int
    */
    public function getTemplate()
    {
        return $this->_template;
    }
 
    /**
     * Get template object
     * @return null|Template
     */
    public function getTemplateObject()
    {
        $model = new Basico_Model_Template();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_template);
        return $object;
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
    * Set entry id
    * 
    * @param  int $id 
    * @return Basico_Model_TemplateFormulario
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
	* Set rowinfo
	* 
	* @param String $xml 
	* @return Basico_Model_TemplateFormulario
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
    * Set data mapper
    * 
    * @param  mixed $mapper 
    * @return Basico_Model_TemplateFormulario
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_TemplateFormularioMapper instance if no mapper registered.
    * 
    * @return Basico_Model_TemplateFormularioMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_TemplateFormularioMapper());
        }
        return $this->_mapper;
    }
}
