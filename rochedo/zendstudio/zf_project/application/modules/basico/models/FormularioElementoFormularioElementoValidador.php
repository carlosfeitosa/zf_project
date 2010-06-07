<?php
/**
 * FormularioElementoFormularioElementoValidador model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioElementoFormularioElementoValidadorMapper
 * @subpackage Model
 */
class Basico_Model_FormularioElementoFormularioElementoValidador
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_FormularioElementoFormularioElementoValidadorMapper
     */
    protected $_mapper;

    /**
     * @var FormularioElementoValidador
     */
    protected $_formularioElementoValidador;
    
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
     * @return Basico_Model_FormularioElementoFormularioElementoValidador
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
    * Set formularioelementovalidador
    * 
    * @param int $ 
    * @return Basico_Model_FormularioElementoValidador
    */
    public function setFormularioElementoValidador($formularioElementoValidador)
    {
        $this->_formularioElementoValidador = (int) $formularioElementoValidador;
        return $this;
    }

    /**
    * Get formularioelementovalidador
    * 
    * @return null|int
    */
    public function getFormularioElementoValidador()
    {
        return $this->_formularioElementoValidador;
    }
 
    /**
     * Get formularioelementovalidador object
     * @return null|FormularioElementoValidador
     */
    public function getFormularioElementoValidadorObject()
    {
        $model = new Basico_Model_FormularioElementoValidador();
        $object = $model->find($this->_formularioElementoValidador);
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
        $this->_formularioElemento = (int) $formularioElemento;
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
		$this->_rowinfo = (String) $rowinfo;
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
    * @return Basico_Model_FormularioElementoFormularioElementoValidador
    */
    public function setId($id)
    {
        $this->_id = (int) $id;
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
    * @return Basico_Model_FormularioElementoFormularioElementoValidador
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioElementoFormularioElementoValidadorMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioElementoFormularioElementoValidadorMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormularioElementoFormularioElementoValidadorMapper());
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
    * @return Basico_Model_FormularioElementoFormularioElementoValidador
      
    */
    public function find($id)
    {
        $this->getMapper()->find($id, $this);
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
