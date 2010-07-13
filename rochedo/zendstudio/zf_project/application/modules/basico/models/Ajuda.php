<?php
/**
 * Ajuda model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AjudaMapper
 * @subpackage Model
 */
class Basico_Model_Ajuda
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_AjudaMapper
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
	 * @var Integer
	 */
	protected $_categoria;
    /**
	 * @var String
	 */
	protected $_constanteTextualAjuda;
	
	/**
	 * @var String
	 */
	protected $_constanteTextualHint;
	/**
	 * @var String
	 */
	protected $_url;
    /**
     * @var Integer
     */
    protected $_formulario;

    /**
     * @var Integer
     */
    protected $_formularioElemento;
    
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
	 * @return Basico_Model_Ajuda
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
	* Set constanteTextualAjuda
	* 
	* @param String $constanteTextualAjuda 
	* @return Basico_Model_Ajuda
	*/
	public function setConstanteTextualAjuda($constanteTextualAjuda)
	{
		$this->_constanteTextualAjuda = (String) $constanteTextualAjuda;
		return $this;
	}

	/**
	* Get constanteTextualAjuda
	* 
	* @return null|String
	*/
	public function getConstanteTextualAjuda()
	{
		return $this->_constanteTextualAjuda;
	}
	
    /**
	* Set nome
	* 
	* @param String $nome
	* @return Basico_Model_Ajuda
	*/
	public function setNome($nome)
	{
		$this->_nome = (String) $nome;
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
	* @return Basico_Model_Ajuda
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = (String) $descricao;
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
	* @param Integer $categoria
	* @return Basico_Model_Ajuda
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = (Int) $categoria;
		return $this;
	}

	/**
	* Get categoria
	* 
	* @return null|String
	*/
	public function getCategoria()
	{
		return $this->_categoria;
	}
	
	
	/**
	* Set constanteTextualHint
	* 
	* @param String $constanteTextualHint 
	* @return Basico_Model_Ajuda
	*/
	public function setConstanteTextualHint($constanteTextualHint)
	{
		$this->_constanteTextualHint = (String) $constanteTextualHint;
		return $this;
	}

	/**
	* Get constanteTextualHint
	* 
	* @return null|String
	*/
	public function getConstanteTextualHint()
	{
		return $this->_constanteTextualHint;
	}
     
	/**
	* Set url
	* 
	* @param String $url 
	* @return Basico_Model_Ajuda
	*/
	public function setUrl($url)
	{
		$this->_url = (String) $url;
		return $this;
	}

	/**
	* Get url
	* 
	* @return null|String
	*/
	public function getUrl()
	{
		return $this->_url;
	}
     
	/**
	* Set formulario
	* 
	* @param int $formulario 
	* @return Basico_Model_Ajuda
	*/
	public function setFormulario($formulario)
	{
		$this->_formulario = (int) $formulario;
		return $this;
	}

	/**
	* Get formulario
	* 
	* @return null|int
	*/
	public function getFormulario()
	{
		return $this->_formulario;
	}
 
    /**
     * Get formulario object
     * @return null|Formulario
     */
    public function getFormularioObject()
    {
        $model = new Basico_Model_Formulario();
        $object = $model->find($this->_formulario);
        return $object;
    }
    
	/**
	* Set formularioElemento
	* 
	* @param int $formularioElemento 
	* @return Default_Model_FormularioElemento
	*/
	public function setFormularioElemento($formularioElemento)
	{
		$this->_formularioElemento = (int) $formularioElemento;
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
        $object = $model->find($this->_formularioElemento);
        return $object;
    }
    
    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Ajuda
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = (String) $rowinfo;
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
	* @return Default_Model_Ajuda
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
	* @return Default_Model_Ajuda
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_AjudaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AjudaMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_AjudaMapper());
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
	* @return Basico_Model_Ajuda
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
