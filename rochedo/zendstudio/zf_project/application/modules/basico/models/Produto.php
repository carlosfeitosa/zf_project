<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Produto model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ProdutoMapper
 * @subpackage Model
 */
class Basico_Model_Produto
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_ProdutoMapper
	 */
	protected $_mapper;

	/**
	 * @var Integer
	 */
	protected $_idGenericoProprietario;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var Double
	 */
	protected $_custoProducao;
	/**
	 * @var Double
	 */
	protected $_valorComercial;
	/**
	 * @var Double
	 */
	protected $_baseImposto;
    /**
     * @var Integer
     */
    protected $_categoria;
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
	 * @return Basico_Model_Produto
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
	* Set idGenericoProprietario
	* 
	* @param Integer $idGenericoProprietario 
	* @return Basico_Model_Produto
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_OPController_UtilOPController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idGenericoProprietario
	* 
	* @return null|Integer
	*/
	public function getIdGenericoProprietario()
	{
		return $this->_idGenericoProprietario;
	}
     
	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_Produto
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get nome
	* 
	* @return null|String
	*/
	public function getNome()
	{
		return $this->_nome;
	}
     
	/**
	* Set descricao
	* 
	* @param String $descricao 
	* @return Basico_Model_Produto
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
	* Set custoProducao
	* 
	* @param Double $custoProducao 
	* @return Basico_Model_Produto
	*/
	public function setCustoProducao($custoProducao)
	{
		$this->_custoProducao = Basico_OPController_UtilOPController::retornaValorTipado($custoProducao, TIPO_FLOAT, true);
		return $this;
	}

	/**
	* Get custoProducao
	* 
	* @return null|Double
	*/
	public function getCustoProducao()
	{
		return $this->_custoProducao;
	}
     
	/**
	* Set valorComercial
	* 
	* @param Double $valorComercial 
	* @return Basico_Model_Produto
	*/
	public function setValorComercial($valorComercial)
	{
		$this->_valorComercial = Basico_OPController_UtilOPController::retornaValorTipado($valorComercial, TIPO_FLOAT, true);
		return $this;
	}

	/**
	* Get valorComercial
	* 
	* @return null|Double
	*/
	public function getValorComercial()
	{
		return $this->_valorComercial;
	}
     
	/**
	* Set baseImposto
	* 
	* @param Double $baseImposto 
	* @return Basico_Model_Produto
	*/
	public function setBaseImposto($baseImposto)
	{
		$this->_baseImposto = Basico_OPController_UtilOPController::retornaValorTipado($baseImposto, TIPO_FLOAT, true);
		return $this;
	}

	/**
	* Get baseImposto
	* 
	* @return null|Double
	*/
	public function getBaseImposto()
	{
		return $this->_baseImposto;
	}
     
	/**
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_Produto
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
    	// recuperando modelo
        $model = new Basico_Model_Categoria();
        // recuperando objeto
        $object = $model->find($this->_categoria);
        // retornando objeto
        return $object;
    }

    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Categoria
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
	* @return Basico_Model_Produto
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
	* @return Basico_Model_Produto
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ProdutoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ProdutoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_ProdutoMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_Produto
	*/
	public function find($id)
	{
		$this->getMapper()->find((int) $id, $this);
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
