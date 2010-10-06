<?php
/**
 * FormularioElementoFormularioElementoValidator model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioElementoFormularioElementoValidatorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioElementoFormularioElementoValidator
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_FormularioElementoFormularioElementoValidatorMapper
     */
    protected $_mapper;

    /**
     * @var FormularioElementoValidator
     */
    protected $_formularioElementoValidator;
    
    /**
     * @var FormularioElemento
     */
    protected $_formularioElemento;
    
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
     * @return Basico_Model_FormularioElementoFormularioElementoValidator
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
    * Set formularioelementovalidator
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElementoValidator
    */
    public function setFormularioElementoValidator($formularioElementoValidator)
    {
        $this->_formularioElementoValidator = Basico_UtilControllerController::retornaValorTipado($formularioElementoValidator, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get formularioelementovalidator
    * 
    * @return null|int
    */
    public function getFormularioElementoValidator()
    {
        return $this->_formularioElementoValidator;
    }
 
    /**
     * Get formularioelementovalidator object
     * @return null|FormularioElementoValidator
     */
    public function getFormularioElementoValidatorObject()
    {
        $model = new Basico_Model_FormularioElementoValidator();
        $object = $model->find($this->_formularioElementoValidator);
        return $object;
    }
    
    /**
    * Set formularioelemento
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElemento
    */
    public function setFormularioElemento($formularioElemento)
    {
        $this->_formularioElemento = Basico_UtilControllerController::retornaValorTipado($formularioElemento, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get formularioelemento
    * 
    * @return null|int
    */
    public function getFormularioElemento()
    {
        return $this->_formularioElemento;
    }
 
    /**
     * Get formularioelemento object
     * @return null|FormularioElemento
     */
    public function getFormularioElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = $model->find($this->_formularioElemento);
        return $object;
    }
    
    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_FormularioTemplate
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_UtilControllerController::retornaValorTipado($rowinfo, TIPO_STRING, true);
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
    * @return Basico_Model_FormularioElementoFormularioElementoValidator
    */
    public function setId($id)
    {
        $this->_id = Basico_UtilControllerController::retornaValorTipado($id, TIPO_INTEIRO, true);
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
    * @return Basico_Model_FormularioElementoFormularioElementoValidator
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioElementoFormularioElementoValidatorMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioElementoFormularioElementoValidatorMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormularioElementoFormularioElementoValidatorMapper());
        }
        return $this->_mapper;
    }

    /**
    * Save the current entry
    * 
    * @return void
    */
    public function save()
    {
        $this->getMapper()->save($this);
    }
    
    /**
     * Delete the current entry
     * @return void
     */
    public function delete()
    {
        $this->getMapper()->delete($this);
    }

    /**
    * Find an entry
    *
    * Resets entry state if matching id found.
    * 
    * @param  int $id 
    * @return Basico_Model_FormularioElementoFormularioElementoValidator
      
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
