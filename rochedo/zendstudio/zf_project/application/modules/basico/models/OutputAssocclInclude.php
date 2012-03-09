<?php
/**
 * OutputAssocclInclude model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_OutputAssocclIncludeMapper
 * @subpackage Model
 */
class Basico_Model_OutputAssocclInclude
{
	/**
	 * @var Basico_Model_OutputAssocclIncludeMapper
	 */
	protected $_mapper;

	/**
	* @var int
	*/
	protected $_id;
	/**
	* @var int
	*/
	protected $_idOutput;
	/**
	* @var int
	*/
	protected $_idInclude;
	/**
	* @var int
	*/
	protected $_ordem;
	/**
	 * @var String
	 */
	protected $_datahoraCriacao;
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
	 * @return Basico_Model_OutputAssocclInclude
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
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_OutputAssocclInclude
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
	* Set entry id output
	* 
	* @param  int $idOutput
	* @return Basico_Model_OutputAssocclInclude
	*/
	public function setIdOutput($idOutput)
	{
		$this->_idOutput = Basico_OPController_UtilOPController::retornaValorTipado($idOutput, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry id output
	* 
	* @return null|int
	*/
	public function getIdOutput()
	{
		return $this->_idOutput;
	}

    /**
     * Get output object
     * 
     * @return null|Basico_Model_Output
     */
    public function getOutputObject()
    {
        $model = new Basico_Model_Output();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idOutput);
        return $object;
    }

	/**
	* Set entry id include
	* 
	* @param  int $idInclude
	* @return Basico_Model_OutputAssocclInclude
	*/
	public function setIdInclude($idInclude)
	{
		$this->_idInclude = Basico_OPController_UtilOPController::retornaValorTipado($idInclude, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry id include
	* 
	* @return null|int
	*/
	public function getIdInclude()
	{
		return $this->_idInclude;
	}

    /**
     * Get include object
     * 
     * @return null|Basico_Model_Include
     */
    public function getIncludeObject()
    {
        $model = new Basico_Model_Include();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idInclude);
        return $object;
    }

	/**
	* Set entry ordem
	* 
	* @param  int $ordem
	* @return Basico_Model_OutputAssocclInclude
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry ordem
	* 
	* @return null|int
	*/
	public function getOrdem()
	{
		return $this->_ordem;
	}

	/**
	* Set datahora criacao
	* 
	* @param String $datahoraCriacao
	* @return Basico_Model_Componente
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahora criacao
	* 
	* @return null|String
	*/
	public function getDatahoraCriacao()
	{
		return $this->_datahoraCriacao;
	}

	/**
	* Set rowinfo
	* 
	* @param String $xml 
	* @return Basico_Model_OutputAssocclInclude
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_OutputAssocclInclude
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_OutputAssocclIncludeMapper instance if no mapper registered.
	* 
	* @return Basico_Model_OutputAssocclIncludeMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_OutputAssocclIncludeMapper());
		}
		return $this->_mapper;
	}
}
