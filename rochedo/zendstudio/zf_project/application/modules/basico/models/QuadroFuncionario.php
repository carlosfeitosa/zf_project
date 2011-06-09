<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * QuadroFuncionario model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_QuadroFuncionarioMapper
 * @subpackage Model
 */
class Basico_Model_QuadroFuncionario
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_QuadroFuncionarioMapper
	 */
	protected $_mapper;

    /**
     * @var Integer
     */
    protected $_categoria;

    /**
     * @var Integer
     */
    protected $_pessoaJuridica;

    /**
     * @var Integer
     */
    protected $_titulacaoAcademica;
	/**
	 * @var Integer
	 */
	protected $_quantidade;
	/**
	 * @var String
	 */
	protected $_descricao;
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
	 * @return Basico_Model_QuadroFuncionario
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
	* Set quantidade
	* 
	* @param Integer $quantidade 
	* @return Basico_Model_QuadroFuncionario
	*/
	public function setQuantidade($quantidade)
	{
		$this->_quantidade = Basico_OPController_UtilOPController::retornaValorTipado($quantidade, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get quantidade
	* 
	* @return null|Integer
	*/
	public function getQuantidade()
	{
		return $this->_quantidade;
	}
     
	/**
	* Set descricao
	* 
	* @param String $descricao 
	* @return Basico_Model_QuadroFuncionario
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_OPController_UtilOPController::retornaValorTipado($descricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get descricao
	* 
	* @return null|String
	*/
	public function getDescricao()
	{
		return $this->_descricao;
	}
     
	/**
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_QuadroFuncionario
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get categoria
	* 
	* @return null|int
	*/
	public function getCategoria()
	{
		return $this->_categoria;
	}
 
    /**
     * Get categoria object
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
    	// recuperando o modelo
        $model = new Basico_Model_Categoria();
        // recuperando o objeto
        $object = $model->find($this->_categoria);
        // retornando o objeto
        return $object;
    }
    
	/**
	* Set pessoaJuridica
	* 
	* @param int $pessoaJuridica 
	* @return Basico_Model_QuadroFuncionario
	*/
	public function setPessoaJuridica($pessoaJuridica)
	{
		$this->_pessoaJuridica = Basico_OPController_UtilOPController::retornaValorTipado($pessoaJuridica, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get pessoaJuridica
	* 
	* @return null|int
	*/
	public function getPessoaJuridica()
	{
		return $this->_pessoaJuridica;
	}
 
    /**
     * Get pessoaJuridica object
     * @return null|Basico_Model_PessoaJuridica
     */
    public function getPessoaJuridicaObject()
    {
    	// recuperando o modelo
        $model = new Basico_Model_PessoaJuridica();
        // recuperando o objeto
        $object = $model->find($this->_pessoaJuridica);
        // retornando o objeto
        return $object;
    }
    
	/**
	* Set titulacaoAcademica
	* 
	* @param int $titulacaoAcademica 
	* @return Basico_Model_QuadroFuncionario
	*/
	public function setTitulacaoAcademica($titulacaoAcademica)
	{
		$this->_titulacaoAcademica = Basico_OPController_UtilOPController::retornaValorTipado($titulacaoAcademica, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get titulacaoAcademica
	* 
	* @return null|int
	*/
	public function getTitulacaoAcademica()
	{
		return $this->_titulacaoAcademica;
	}
 
    /**
     * Get titulacaoAcademica object
     * @return null|Basico_Model_TitulacaoAcademica
     */
    public function getTitulacaoAcademicaObject()
    {
    	// recuperando o modelo
        $model = new Basico_Model_TitulacaoAcademica();
        // recuperando o objeto
        $object = $model->find($this->_titulacaoAcademica);
        // retornando o objeto
        return $object;
    }

    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_QuadroFuncionario
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
	* @return Basico_Model_QuadroFuncionario
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
	* @return Basico_Model_QuadroFuncionario
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_QuadroFuncionarioMapper instance if no mapper registered.
	* 
	* @return Basico_Model_QuadroFuncionarioMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_QuadroFuncionarioMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_QuadroFuncionario
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
