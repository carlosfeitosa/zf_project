<?php
/**
 * Template model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_TemplateMapper
 * @subpackage Model
 */
class Basico_Model_Template
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_TemplateMapper
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
	protected $_styleSheetFullFilename;
	/**
	 * @var String
	 */
	protected $_javaScriptFullFilename;
	/**
	 * @var String
	 */
	protected $_template;
	
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
	 * @return Default_Model_Template
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
	* @return Default_Model_Descricao
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
	* @return Basico_Model_categoria
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
	* Set styleSheetFullFilename
	* 
	* @param String $styleSheetFullFilename 
	* @return Default_Model_StyleSheetFullFilename
	*/
	public function setStyleSheetFullFilename($styleSheetFullFilename)
	{
		$this->_styleSheetFullFilename = (String) $styleSheetFullFilename;
		return $this;
	}

	/**
	* Get styleSheetFullFilename
	* 
	* @return null|String
	*/
	public function getStyleSheetFullFilename()
	{
		return $this->_styleSheetFullFilename;
	}
     
	/**
	* Set javaScriptFullFilename
	* 
	* @param String $javaScriptFullFilename 
	* @return Default_Model_JavaScriptFullFilename
	*/
	public function setJavaScriptFullFilename($javaScriptFullFilename)
	{
		$this->_javaScriptFullFilename = (String) $javaScriptFullFilename;
		return $this;
	}

	/**
	* Get javaScriptFullFilename
	* 
	* @return null|String
	*/
	public function getJavaScriptFullFilename()
	{
		return $this->_javaScriptFullFilename;
	}
     
	/**
	* Set template
	* 
	* @param String $template 
	* @return Default_Model_Template
	*/
	public function setTemplate($template)
	{
		$this->_template = (String) $template;
		return $this;
	}

	/**
	* Get template
	* 
	* @return null|String
	*/
	public function getTemplate()
	{
		return $this->_template;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Default_Model_Template
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
	* Set rowinfo
	* 
	* @param String $xml 
	* @return Basico_Model_Template
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Default_Model_Template
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Default_Model_TemplateMapper instance if no mapper registered.
	* 
	* @return Default_Model_TemplateMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_TemplateMapper());
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
	* @return Default_Model_Template
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
	   
    /**
    * fetch list of entries satisfying the parameters but allowing a join
    *
    * @return array
    */
    public function fetchJoinList($joins=null, $where=null, $order=null, $count=null, $offset=null)
    {
        return $this->getMapper()->fetchJoinList($joins, $where, $order, $count, $offset);
    }
    
    /**
    * fetch joined list of entries that satisfy the parameters
    *
    * @return array
    */
    public function fetchJoin($jointable=null, $joinby=null, $where=null, $order=null)
    {
        return $this->getMapper()->fetchJoin($jointable, $joinby, $where, $order);
    }

}
