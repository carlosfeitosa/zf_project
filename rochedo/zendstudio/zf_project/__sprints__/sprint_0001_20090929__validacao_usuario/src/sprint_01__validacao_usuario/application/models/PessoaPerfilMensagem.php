<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * PessoaPerfilMensagem model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_PessoaPerfilMensagemMapper
 * @subpackage Model
 */
class Default_Model_PessoaPerfilMensagem
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Default_Model_PessoaPerfilMensagemMapper
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
     * @return Default_Model_PessoaPerfilMensagem
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
    * @return Default_Model_PessoaPerfil
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
        $model = new Default_Model_a_pessoa_possui_perfil();
        $object = $model->find($this->_pessoaperfil);
        return $object;
    }
    
    /**
    * Set mensagem
    * 
    * @param int $ 
    * @return Default_Model_Mensagem
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
        $model = new Default_Model_Mensagem();
        $object = $model->find($this->_mensagem);
        return $object;
    }
    

    /**
    * Set entry id
    * 
    * @param  int $id 
    * @return Default_Model_PessoaPerfilMensagem
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
    * @return Default_Model_PessoaPerfilMensagem
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Default_Model_PessoaPerfilMensagemMapper instance if no mapper registered.
    * 
    * @return Default_Model_PessoaPerfilMensagemMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Default_Model_PessoaPerfilMensagemMapper());
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
    * @return Default_Model_PessoaPerfilMensagem
      
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
