<?php
/**
 * ConteudosModulos model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ConteudosModulosMapper
 * @subpackage Model
 */
class Basico_Model_ConteudosModulos
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_ConteudosModulosMapper
     */
    protected $_mapper;

    /**
     * @var Conteudo
     */
    protected $_conteudo;
    
    /**
     * @var Modulo
     */
    protected $_modulo;

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
     * @return Basico_Model_ConteudosModulos
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
    * Set conteudo
    * 
    * @param int $ 
    * @return Basico_Model_Conteudo
    */
    public function setConteudo($conteudo)
    {
        $this->_conteudo = (int) $conteudo;
        return $this;
    }

    /**
    * Get conteudo
    * 
    * @return null|int
    */
    public function getConteudo()
    {
        return $this->_conteudo;
    }
 
    /**
     * Get conteudo object
     * @return null|Conteudo
     */
    public function getConteudoObject()
    {
        $model = new Basico_Model_conteudo();
        $object = $model->find($this->_conteudo);
        return $object;
    }
    
    /**
    * Set modulo
    * 
    * @param int $ 
    * @return Basico_Model_Modulo
    */
    public function setModulo($modulo)
    {
        $this->_modulo = (int) $modulo;
        return $this;
    }

    /**
    * Get modulo
    * 
    * @return null|int
    */
    public function getModulo()
    {
        return $this->_modulo;
    }
 
    /**
     * Get modulo object
     * @return null|Modulo
     */
    public function getModuloObject()
    {
        $model = new Basico_Model_Modulo();
        $object = $model->find($this->_modulo);
        return $object;
    }
    

    /**
    * Set entry id
    * 
    * @param  int $id 
    * @return Basico_Model_ConteudosModulos
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
    * @return Basico_Model_ConteudosModulos
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_ConteudosModulosMapper instance if no mapper registered.
    * 
    * @return Basico_Model_ConteudosModulosMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_ConteudosModulosMapper());
        }
        return $this->_mapper;
    }
}
