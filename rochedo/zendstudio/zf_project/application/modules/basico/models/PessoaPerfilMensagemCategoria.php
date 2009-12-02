<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * PessoaPerfilMensagemCategoria model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoaPerfilMensagemCategoriaMapper
 * @subpackage Model
 */
class Basico_Model_PessoaPerfilMensagemCategoria
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_PessoaPerfilMensagemCategoriaMapper
     */
    protected $_mapper;

    /**
     * @var PessoaPerfil
     */
    protected $_pessoaperfil;
    
    /**
     * @var Mensagem
     */
    protected $_mensagem;

    /**
     * @var Categoria
     */
    protected $_categoria;
    
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
     * @return Basico_Model_PessoaPerfilMensagemCategoria
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
    * Set pessoaperfil
    * 
    * @param int $ 
    * @return Basico_Model_PessoaPerfil
    */
    public function setPessoaPerfil($pessoaperfil)
    {
        $this->_pessoaperfil = (int) $pessoaperfil;
        return $this;
    }

    /**
    * Get pessoaperfil
    * 
    * @return null|int
    */
    public function getPessoaPerfil()
    {
        return $this->_pessoaperfil;
    }
 
    /**
     * Get pessoaperfil object
     * @return null|PessoaPerfil
     */
    public function getPessoaPerfilObject()
    {
        $model = new Basico_Model_PessoaPerfil();
        $object = $model->find($this->_pessoaperfil);
        return $object;
    }
    
    /**
    * Set mensagem
    * 
    * @param int $ 
    * @return Basico_Model_Mensagem
    */
    public function setMensagem($mensagem)
    {
        $this->_mensagem = (int) $mensagem;
        return $this;
    }

    /**
    * Get mensagem
    * 
    * @return null|int
    */
    public function getMensagem()
    {
        return $this->_mensagem;
    }
    
    /**
     * Get mensagem object
     * @return null|Mensagem
     */
    public function getMensagemObject()
    {
        $model = new Basico_Model_Mensagem();
        $object = $model->find($this->_mensagem);
        return $object;
    }
    
    /**
    * Set categoria
    * 
    * @param int $ 
    * @return Basico_Model_Categoria
    */
    public function setCategoria($categoria)
    {
        $this->_categoria = (int) $categoria;
        return $this;
    }

    /**
    * Get Categoria
    * 
    * @return null|int
    */
    public function getCategoria()
    {
        return $this->_categoria;
    }
 
    /**
     * Get categoria object
     * @return null|Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = $model->find($this->_categoria);
        return $object;
    }
    
    /**
    * Set entry id
    * 
    * @param  int $id 
    * @return Basico_Model_PessoaPerfilMensagemCategoria
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
    * @return Basico_Model_PessoaPerfilMensagemCategoria
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Default_Model_PessoaPerfilMensagemCategoriaMapper instance if no mapper registered.
    * 
    * @return Basico_Model_PessoaPerfilMensagemCategoriaMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_PessoaPerfilMensagemCategoriaMapper());
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
    * @return Basico_Model_PessoaPerfilMensagemCategoria
      
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
      
    //start block for manually written code
        
    //end block for manually written code

}
