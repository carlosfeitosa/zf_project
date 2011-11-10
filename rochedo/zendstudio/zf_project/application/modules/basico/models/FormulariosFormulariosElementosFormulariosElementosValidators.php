<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * FormulariosFormulariosElementosFormularioElementoFilter model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_FormulariosFormulariosElementosFormularioElementoFilterMapper
 * @subpackage Model
 */
class Default_Model_FormulariosFormulariosElementosFormularioElementoFilter
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Default_Model_FormulariosFormulariosElementosFormularioElementoFilterMapper
     */
    protected $_mapper;

    /**
     * @var FormulariosFormulariosElementos
     */
    protected $_formulariosformularioselementos;
    
    /**
     * @var FormularioElementoFilter
     */
    protected $_formularioelementofilter;

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
     * @return Default_Model_FormulariosFormulariosElementosFormularioElementoFilter
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
    * Set formulariosformularioselementos
    * 
    * @param int $ 
    * @return Default_Model_FormulariosFormulariosElementos
    */
    public function setFormulariosFormulariosElementos($formulariosformularioselementos)
    {
        $this->_formulariosformularioselementos = (int) $formulariosformularioselementos;
        return $this;
    }

    /**
    * Get formulariosformularioselementos
    * 
    * @return null|int
    */
    public function getFormulariosFormulariosElementos()
    {
        return $this->_formulariosformularioselementos;
    }
 
    /**
     * Get formulariosformularioselementos object
     * @return null|FormulariosFormulariosElementos
     */
    public function getFormulariosFormulariosElementosObject()
    {
        $model = new Default_Model_a_formularioElemento_possui_formulario();
        $object = $model->find($this->_formulariosformularioselementos);
        return $object;
    }
    
    /**
    * Set formularioelementofilter
    * 
    * @param int $ 
    * @return Default_Model_FormularioElementoFilter
    */
    public function setFormularioElementoFilter($formularioelementofilter)
    {
        $this->_formularioelementofilter = (int) $formularioelementofilter;
        return $this;
    }

    /**
    * Get formularioelementofilter
    * 
    * @return null|int
    */
    public function getFormularioElementoFilter()
    {
        return $this->_formularioelementofilter;
    }
 
    /**
     * Get formularioelementofilter object
     * @return null|FormularioElementoFilter
     */
    public function getFormularioElementoFilterObject()
    {
        $model = new Default_Model_FormularioElementoValidator();
        $object = $model->find($this->_formularioelementofilter);
        return $object;
    }
    

    /**
    * Set entry id
    * 
    * @param  int $id 
    * @return Default_Model_FormulariosFormulariosElementosFormularioElementoFilter
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
    * @return Default_Model_FormulariosFormulariosElementosFormularioElementoFilter
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Default_Model_FormulariosFormulariosElementosFormularioElementoFilterMapper instance if no mapper registered.
    * 
    * @return Default_Model_FormulariosFormulariosElementosFormularioElementoFilterMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Default_Model_FormulariosFormulariosElementosFormularioElementoFilterMapper());
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
    * @return Default_Model_FormulariosFormulariosElementosFormularioElementoFilter
      
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
