<?php
/**
 * GrupoFormularioElemento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_GrupoFormularioElementoMapper
 * @subpackage Model
 */
class Basico_Model_GrupoFormularioElemento
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_GrupoFormularioElementoMapper
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
	protected $_constanteTextualLabel;
	/**
	* @var int
	*/
	protected $_decorator;
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
	 * @return Basico_Model_GrupoFormularioElemento
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
	* @return Basico_Model_Nome
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome,TIPO_STRING,true);
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
	* @return Basico_Model_Descricao
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_OPController_UtilOPController::retornaValorTipado($descricao, TIPO_STRING,true);
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
	* Set label
	* 
	* @param String $constanteTextualLabel 
	* @return Basico_Model_ConstanteTextualLabel
	*/
	public function setConstanteTextualLabel($constanteTextualLabel)
	{
		$this->_constanteTextualLabel = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualLabel, TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constanteTextualLabel
	* 
	* @return null|String
	*/
	public function getConstanteTextualLabel()
	{
		return $this->_constanteTextualLabel;
	}

	/**
	* Set entry decorator
	* 
	* @param  int $decorator 
	* @return Basico_Model_GrupoFormularioElemento
	*/
	public function setDecorator($decorator)
	{
		$this->_decorator = Basico_OPController_UtilOPController::retornaValorTipado($decorator, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry decorator
	* 
	* @return null|int
	*/
	public function getDecorator()
	{
		return $this->_decorator;
	}

    /**
     * Get decorator object
     * 
     * @return null|Basico_Model_Decorator
     */
    public function getTipoCategoriaObject()
    {
        $model = new Basico_Model_Decorator();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_decorator);
        return $object;
    }
	
	/**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Rowinfo
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
	* @return Basico_Model_GrupoFormularioElemento
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
	* @return Basico_Model_GrupoFormularioElemento
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_GrupoFormularioElementoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_GrupoFormularioElementoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_GrupoFormularioElementoMapper());
		}
		return $this->_mapper;
	}
}
