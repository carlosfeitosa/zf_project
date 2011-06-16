<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * QuadroFuncionarioPessoaJuridica model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_QuadroFuncionarioPessoaJuridicaMapper
 * @subpackage Model
 */
class Basico_Model_PessoaJuridicaQuadroFuncionario
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_QuadroFuncionarioPessoaJuridicaMapper
     */
    protected $_mapper;

    /**
     * @var QuadroFuncionario
     */
    protected $_quadrofuncionario;
    
    /**
     * @var PessoaJuridica
     */
    protected $_pessoajuridica;
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
     * @return Basico_Model_QuadroFuncionarioPessoaJuridica
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
    * Set quadrofuncionario
    * 
    * @param int $ 
    * @return Basico_Model_QuadroFuncionarioPessoaJuridica
    */
    public function setQuadroFuncionario($quadrofuncionario)
    {
        $this->_quadrofuncionario = Basico_OPController_UtilOPController::retornaValorTipado($quadrofuncionario, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get quadrofuncionario
    * 
    * @return null|int
    */
    public function getQuadroFuncionario()
    {
        return $this->_quadrofuncionario;
    }
 
    /**
     * Get quadrofuncionario object
     * @return null|Basico_Model_QuadroFuncionario
     */
    public function getQuadroFuncionarioObject()
    {
        $model = new Basico_Model_QuadroFuncionario();
        $object = $model->find($this->_quadrofuncionario);
        return $object;
    }
    
    /**
    * Set pessoajuridica
    * 
    * @param int $ 
    * @return Basico_Model_QuadroFuncionarioPessoaJuridica
    */
    public function setPessoaJuridica($pessoajuridica)
    {
        $this->_pessoajuridica = Basico_OPController_UtilOPController::retornaValorTipado($pessoajuridica, TIPO_INTEIRO, true) ;
        return $this;
    }

    /**
    * Get pessoajuridica
    * 
    * @return null|int
    */
    public function getPessoaJuridica()
    {
        return $this->_pessoajuridica;
    }
 
    /**
     * Get pessoajuridica object
     * @return null|Basico_Model_PessoaJuridica
     */
    public function getPessoaJuridicaObject()
    {
        $model = new Basico_Model_PessoaJuridica();
        $object = $model->find($this->_pessoajuridica);
        return $object;
    }

    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_QuadroFuncionarioPessoaJuridica
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
    * Set entry id
    * 
    * @param  int $id 
    * @return Basico_Model_QuadroFuncionarioPessoaJuridica
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
    * Set data mapper
    * 
    * @param  mixed $mapper 
    * @return Basico_Model_QuadroFuncionarioPessoaJuridica
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_QuadroFuncionarioPessoaJuridicaMapper instance if no mapper registered.
    * 
    * @return Basico_Model_QuadroFuncionarioPessoaJuridicaMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_QuadroFuncionarioPessoaJuridicaMapper());
        }
        return $this->_mapper;
    }

    /**
    * Find an entry
    *
    * Resets entry state if matching id found.
    * 
    * @param  int $id 
    * @return Basico_Model_QuadroFuncionarioPessoaJuridica
      
    */
    public function find($id)
    {
        $this->getMapper()->find((int)$id, $this);
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
