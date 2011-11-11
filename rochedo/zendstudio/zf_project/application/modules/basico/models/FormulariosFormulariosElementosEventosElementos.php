<?php
/**
 * FormulariosFormulariosElementosEventosElementos model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormulariosFormulariosElementosEventosElementosMapper
 * @subpackage Model
 */
class Basico_Model_FormulariosFormulariosElementosEventosElementos
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_FormulariosFormulariosElementosEventosElementosMapper
     */
    protected $_mapper;

    /**
     * @var FormulariosFormulariosElementos
     */
    protected $_formulariosformularioselementos;
    
    /**
     * @var EventoElemento
     */
    protected $_eventoelemento;

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
     * @return Basico_Model_FormulariosFormulariosElementosEventosElementos
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
    * @return Basico_Model_FormulariosFormulariosElementos
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
        $model = new Basico_Model_a_formularioElemento_possui_formulario();
        $object = $model->find($this->_formulariosformularioselementos);
        return $object;
    }
    
    /**
    * Set eventoelemento
    * 
    * @param int $ 
    * @return Basico_Model_EventoElemento
    */
    public function setEventoElemento($eventoelemento)
    {
        $this->_eventoelemento = (int) $eventoelemento;
        return $this;
    }

    /**
    * Get eventoelemento
    * 
    * @return null|int
    */
    public function getEventoElemento()
    {
        return $this->_eventoelemento;
    }
 
    /**
     * Get eventoelemento object
     * @return null|EventoElemento
     */
    public function getEventoElementoObject()
    {
        $model = new Basico_Model_EventoElemento();
        $object = $model->find($this->_eventoelemento);
        return $object;
    }
    

    /**
    * Set entry id
    * 
    * @param  int $id 
    * @return Basico_Model_FormulariosFormulariosElementosEventosElementos
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
    * @return Basico_Model_FormulariosFormulariosElementosEventosElementos
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormulariosFormulariosElementosEventosElementosMapper instance if no mapper registered.
    * 
    * @return Basico_Model_FormulariosFormulariosElementosEventosElementosMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_FormulariosFormulariosElementosEventosElementosMapper());
        }
        return $this->_mapper;
    }

       
 }
