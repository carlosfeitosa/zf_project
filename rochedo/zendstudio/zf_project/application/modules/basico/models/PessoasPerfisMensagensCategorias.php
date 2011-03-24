<?php
/**
 * PessoasPerfisMensagensCategorias model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoasPerfisMensagensCategoriasMapper
 * @subpackage Model
 */
class Basico_Model_PessoasPerfisMensagensCategorias
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_PessoasPerfisMensagensCategoriasMapper
     */
    protected $_mapper;

    /**
     * @var PessoaPerfil
     */
    protected $_pessoaPerfil;
    
    /**
     * @var Mensagem
     */
    protected $_mensagem;

    /**
     * @var Categoria
     */
    protected $_categoria;
    
    /**
     * @var Rowinfo
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
     * @return Basico_Model_PessoasPerfisMensagensCategorias
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
    public function setPessoaPerfil($pessoaPerfil)
    {
        $this->_pessoaPerfil = Basico_OPController_UtilOPController::retornaValorTipado($pessoaPerfil, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get pessoaperfil
    * 
    * @return null|int
    */
    public function getPessoaPerfil()
    {
        return $this->_pessoaPerfil;
    }
 
    /**
     * Get pessoaperfil object
     * @return null|PessoaPerfil
     */
    public function getPessoaPerfilObject()
    {
        $model = new Basico_Model_PessoasPerfis();
        $object = $model->find($this->_pessoaPerfil);
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
        $this->_mensagem = Basico_OPController_UtilOPController::retornaValorTipado($mensagem, TIPO_INTEIRO, true);
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
        $this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria, TIPO_INTEIRO, true);
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
    * @return Basico_Model_PessoasPerfisMensagensCategorias
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
    * Set entry rowinfo
    * 
    * @param  rowinfo $rowinfo 
    * @return Basico_Model_PessoasPerfisMensagensCategorias
    */
    public function setRowinfo($rowinfo)
    {
        $this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING, true);
        return $this;
    }

    /**
    * Retrieve entry rowinfo
    * 
    * @return null|string
    */
    public function getRowinfo()
    {
        return $this->_rowinfo;
    }

    /**
    * Set data mapper
    * 
    * @param  mixed $mapper 
    * @return Basico_Model_PessoasPerfisMensagensCategorias
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_PessoasPerfisMensagemCategoriaMapper instance if no mapper registered.
    * 
    * @return Basico_Model_PessoasPerfisMensagemCategoriaMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_PessoasPerfisMensagensCategoriasMapper());
        }
        return $this->_mapper;
    }

    /**
    * Find an entry
    *
    * Resets entry state if matching id found.
    * 
    * @param  int $id 
    * @return Basico_Model_PessoasPerfisMensagensCategorias
      
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
