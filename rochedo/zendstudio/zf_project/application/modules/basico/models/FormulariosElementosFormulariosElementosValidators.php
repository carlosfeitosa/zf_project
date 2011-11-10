<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * FormularioElementoValidadorFormularioElemento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_FormularioElementoValidadorFormularioElementoMapper
 * @subpackage Model
 */
class Default_Model_FormularioElementoValidadorFormularioElemento
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Default_Model_FormularioElementoValidadorFormularioElementoMapper
     */
    protected $_mapper;

    /**
     * @var FormularioElementoValidador
     */
    protected $_formularioelementovalidador;
    
    /**
     * @var FormularioElemento
     */
    protected $_formularioelemento;

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
            throw new Exception('Invalid property specified');
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
            throw new Exception('Invalid property specified');
        }
        return $this->$method();
    }

    /**
     * Set object state
     * 
     * @param  array $options 
     * @return Default_Model_FormularioElementoValidadorFormularioElemento
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
    * @return Default_Model_FormularioElementoValidador
    */
    public function setFormularioElementoValidador($formularioelementovalidador)
    {
        $this->_formularioelementovalidador = (int) $formularioelementovalidador;
        return $this;
    }

    /**
    * Get formularioelementovalidador
    * 
    * @return null|int
    */
    public function getFormularioElementoValidador()
    {
        return $this->_formularioelementovalidador;
    }
 
    /**
     * Get formularioelementovalidador object
     * @return null|FormularioElementoValidador
     */
    public function getFormularioElementoValidadorObject()
    {
        $model = new Default_Model_FormularioElementoValidator();
        $object = $model->find($this->_formularioelementovalidador);
        return $object;
    }
    
    /**
    * Set formularioelemento
    * 
    * @param int $ 
    * @return Default_Model_FormularioElemento
    */
    public function setFormularioElemento($formularioelemento)
    {
        $this->_formularioelemento = (int) $formularioelemento;
        return $this;
    }

    /**
    * Get formularioelemento
    * 
    * @return null|int
    */
    public function getFormularioElemento()
    {
        return $this->_formularioelemento;
    }
 
    /**
     * Get formularioelemento object
     * @return null|FormularioElemento
     */
    public function getFormularioElementoObject()
    {
        $model = new Default_Model_FormularioElemento();
        $object = $model->find($this->_formularioelemento);
        return $object;
    }
    

    /**
    * Set entry id
    * 
    * @param  int $id 
    * @return Default_Model_FormularioElementoValidadorFormularioElemento
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
    * @return Default_Model_FormularioElementoValidadorFormularioElemento
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Default_Model_FormularioElementoValidadorFormularioElementoMapper instance if no mapper registered.
    * 
    * @return Default_Model_FormularioElementoValidadorFormularioElementoMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Default_Model_FormularioElementoValidadorFormularioElementoMapper());
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
    * @return Default_Model_FormularioElementoValidadorFormularioElemento
      
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
        
    /**
    * fetch list of entries that satisfy the parameters but allowing a join
    *
    * @return array
    */
    public function fetchJoinList($joins=null, $where=null, $order=null, $count=null, $offset=null)
    {
        return $this->getMapper()->fetchJoinList($joins, $where, $order, $count, $offset);
    }
    
    /**
    * fetch joined list of entries that satisfy the parameters
    *
    * @return array
    */
    public function fetchJoin($jointable=null, $joinby=null, $where=null, $order=null)
    {
        return $this->getMapper()->fetchJoin($jointable, $joinby, $where, $order);
    }
      
    //start block for manually written code
        
    //end block for manually written code

}
