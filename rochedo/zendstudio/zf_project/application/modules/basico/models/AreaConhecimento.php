-<?php
/**
 * AreaConhecimento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AreaConhecimentoMapper
 * @subpackage Model
 */
class Basico_Model_AreaConhecimento
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_AreaConhecimentoMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var String
	 */
	protected $_codigo;
	/**
	 * @var String
	 */
	protected $_dataCriacao;
	/**
	 * @var String
	 */
	protected $_dataUltimaModificacao;
    /**
     * @var Integer
     */
    protected $_categoria;

    /**
     * @var Integer
     */
    protected $_areaConhecimento;
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
	 * @return Basico_Model_AreaConhecimento
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
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_AreaConhecimento
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
	* @return Basico_Model_AreaConhecimento
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_OPController_UtilOPController::retornaValorTipado($descricao, TIPO_STRING, true) ;
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
	* Set codigo
	* 
	* @param String $codigo 
	* @return Basico_Model_AreaConhecimento
	*/
	public function setCodigo($codigo)
	{
		$this->_codigo = Basico_OPController_UtilOPController::retornaValorTipado($codigo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get codigo
	* 
	* @return null|String
	*/
	public function getCodigo()
	{
		return $this->_codigo;
	}
     
	/**
	* Set dataCriacao
	* 
	* @param String $dataCriacao 
	* @return Basico_Model_AreaConhecimento
	*/
	public function setDataCriacao($dataCriacao)
	{
		$this->_dataCriacao = Basico_OPController_UtilOPController::retornaValorTipado($dataCriacao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataCriacao
	* 
	* @return null|String
	*/
	public function getDataCriacao()
	{
		return $this->_dataCriacao;
	}
     
	/**
	* Set dataUltimaModificacao
	* 
	* @param String $dataUltimaModificacao 
	* @return Basico_Model_AreaConhecimento
	*/
	public function setDataUltimaModificacao($dataUltimaModificacao)
	{
		$this->_dataUltimaModificacao = Basico_OPController_UtilOPController::retornaValorTipado($dataUltimaModificacao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataUltimaModificacao
	* 
	* @return null|String
	*/
	public function getDataUltimaModificacao()
	{
		return $this->_dataUltimaModificacao;
	}
     
	/**
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_AreaConhecimento
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria, TIPO_INTEIRO, true) ;
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
        $model = new Basico_Model_Categoria();
        $object = $model->find($this->_categoria);
        return $object;
    }
    
	/**
	* Set areaConhecimento
	* 
	* @param int $areaConhecimento 
	* @return Basico_Model_AreaConhecimento
	*/
	public function setAreaConhecimento($areaConhecimento)
	{
		$this->_areaConhecimento = Basico_OPController_UtilOPController::retornaValorTipado($areaConhecimento, TIPO_INTEIRO, true) ;
		return $this;
	}

	/**
	* Get areaConhecimento
	* 
	* @return null|int
	*/
	public function getAreaConhecimento()
	{
		return $this->_areaConhecimento;
	}
 
    /**
     * Get areaConhecimento object
     * @return null|Basico_Model_AreaConhecimento
     */
    public function getAreaConhecimentoObject()
    {
        $model = new Basico_Model_AreaConhecimento();
        $object = $model->find($this->_areaConhecimento);
        return $object;
    }


    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_AreaConhecimento
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
	* @return Basico_Model_AreaConhecimento
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
	* @return Basico_Model_AreaConhecimento
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_AreaConhecimentoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AreaConhecimentoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_AreaConhecimentoMapper());
		}
		return $this->_mapper;
	}


	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_AreaConhecimento
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
