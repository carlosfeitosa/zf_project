<?php
/**
 * FormularioElementoFilter model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioElementoFilterMapper
 * @subpackage Model
 */
class Basico_Model_FormularioElementoFilter
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_FormularioElementoFilterMapper
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
	protected $_filter;
    /**
     * @var Integer
     */
    protected $_formularioElemento;
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
	 * @return Basico_Model_FormularioElementoFilter
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
	* @return Default_Model_Nome
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
	* @return Default_Model_Descricao
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
	* Set filter
	* 
	* @param String $filter 
	* @return Default_Model_Filter
	*/
	public function setFilter($filter)
	{
		$this->_filter = Basico_OPController_UtilOPController::retornaValorTipado($filter, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get filter
	* 
	* @return null|String
	*/
	public function getFilter()
	{
		return $this->_filter;
	}
     
	/**
	* Set formularioElemento
	* 
	* @param int $formularioElemento 
	* @return Default_Model_FormularioElemento
	*/
	public function setFormularioElemento($formularioElemento)
	{
		$this->_formularioElemento = Basico_OPController_UtilOPController::retornaValorTipado($formularioElemento, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get formularioElemento
	* 
	* @return null|int
	*/
	public function getFormularioElemento()
	{
		return $this->_formularioElemento;
	}
 
    /**
     * Get formularioElemento object
     * @return null|FormularioElemento
     */
    public function getFormularioElementoObject()
    {
        $model = new Basico_Model_FormularioElemento();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_formularioElemento);
        return $object;
    }

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_FormularioElementoFilter
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
	* Set entry categoria
	* 
	* @param  int $categoria 
	* @return Basico_Model_FormularioElementoFilter
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry categoria
	* 
	* @return null|int
	*/
	public function getCategoria()
	{
		return $this->_categoria;
	}

	/**
	* Set entry rowinfo
	* 
	* @param  string $rowinfo 
	* @return Basico_Model_FormularioElementoFilter
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Retrieve entry rowinfo
	* 
	* @return null|String
	*/
	public function getRowinfo()
	{
		return $this->_Rowinfo;
	}
	
	
	/**
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_FormularioElementoFilter
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioElementoFilterMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioElementoFilterMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_FormularioElementoFilterMapper());
		}
		return $this->_mapper;
	}
}
