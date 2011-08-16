<?php
/**
 * Arquivo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       GC_Model_ArquivoMapper
 * @subpackage Model
 */
class GC_Model_Arquivo
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var GC_Model_ArquivoMapper
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
	protected $_fileOriginalName;
	/**
	 * @var Integer
	 */
	protected $_fileSize;
	/**
	 * @var String
	 */
	protected $_fileName;
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
	 * @return GC_Model_Arquivo
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
	* @return GC_Model_Nome
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
	* @return GC_Model_Descricao
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
	* Set fileOriginalName
	* 
	* @param String $fileOriginalName 
	* @return GC_Model_FileOriginalName
	*/
	public function setFileOriginalName($fileOriginalName)
	{
		$this->_fileOriginalName = (String) $fileOriginalName;
		return $this;
	}

	/**
	* Get fileOriginalName
	* 
	* @return null|String
	*/
	public function getFileOriginalName()
	{
		return $this->_fileOriginalName;
	}
     
	/**
	* Set fileSize
	* 
	* @param Integer $fileSize 
	* @return GC_Model_FileSize
	*/
	public function setFileSize($fileSize)
	{
		$this->_fileSize = (Integer) $fileSize;
		return $this;
	}

	/**
	* Get fileSize
	* 
	* @return null|Integer
	*/
	public function getFileSize()
	{
		return $this->_fileSize;
	}
     
	/**
	* Set fileName
	* 
	* @param String $fileName 
	* @return GC_Model_FileName
	*/
	public function setFileName($fileName)
	{
		$this->_fileName = (String) $fileName;
		return $this;
	}

	/**
	* Get fileName
	* 
	* @return null|String
	*/
	public function getFileName()
	{
		return $this->_fileName;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return GC_Model_Arquivo
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
	* Set entry rowinfo
	* 
	* @param  String $rowinfo
	* @return GC_Model_Arquivo
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = (String) $rowinfo;
		return $this;
	}

	/**
	* Retrieve entry rowinfo
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
	* @return GC_Model_Arquivo
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads GC_Model_ArquivoMapper instance if no mapper registered.
	* 
	* @return GC_Model_ArquivoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new GC_Model_ArquivoMapper());
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
	* @return GC_Model_Arquivo
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
