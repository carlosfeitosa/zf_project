<?php
/**
 * Modulo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ModuloMapper
 * @subpackage Model
 */
class Basico_Model_Modulo
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_ModuloMapper
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
	protected $_versao;
	/**
	 * @var String
	 */
	protected $_path;
	/**
	 * @var Boolean
	 */
	protected $_instalado;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	/**
	 * @var Date
	 */
	protected $_dataDepreciacao;
	/**
	 * @var String
	 */
	protected $_xmlAutoria;
    /**
     * @var Integer
     */
    protected $_moduloPai;
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
	 * @return Basico_Model_Modulo
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
	* @return Basico_Model_Descricao
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
	* Set versao
	* 
	* @param String $versao 
	* @return Basico_Model_Versao
	*/
	public function setVersao($versao)
	{
		$this->_versao = (String) $versao;
		return $this;
	}

	/**
	* Get versao
	* 
	* @return null|String
	*/
	public function getVersao()
	{
		return $this->_versao;
	}
     
	/**
	* Set path
	* 
	* @param String $path 
	* @return Basico_Model_Path
	*/
	public function setPath($path)
	{
		$this->_path = (String) $path;
		return $this;
	}

	/**
	* Get path
	* 
	* @return null|String
	*/
	public function getPath()
	{
		return $this->_path;
	}
     
	/**
	* Set instalado
	* 
	* @param Boolean $instalado 
	* @return Basico_Model_Instalado
	*/
	public function setInstalado($instalado)
	{
		$this->_instalado = (Boolean) $instalado;
		return $this;
	}

	/**
	* Get instalado
	* 
	* @return null|Boolean
	*/
	public function getInstalado()
	{
		return $this->_instalado;
	}
     
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_Ativo
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = (Boolean) $ativo;
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|Boolean
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}
     
	/**
	* Set dataDepreciacao
	* 
	* @param String $dataDepreciacao 
	* @return Basico_Model_DataDepreciacao
	*/
	public function setDataDepreciacao($dataDepreciacao)
	{
		$this->_dataDepreciacao = (String) $dataDepreciacao;
		return $this;
	}

	/**
	* Get dataDepreciacao
	* 
	* @return null|String
	*/
	public function getDataDepreciacao()
	{
		return $this->_dataDepreciacao;
	}
     
	/**
	* Set xmlAutoria
	* 
	* @param String $xmlAutoria 
	* @return Basico_Model_XmlAutoria
	*/
	public function setXmlAutoria($xmlAutoria)
	{
		$this->_xmlAutoria = (String) $xmlAutoria;
		return $this;
	}

	/**
	* Get xmlAutoria
	* 
	* @return null|String
	*/
	public function getXmlAutoria()
	{
		return $this->_xmlAutoria;
	}
     
	/**
	* Set moduloPai
	* 
	* @param int $moduloPai 
	* @return Basico_Model_ModuloPai
	*/
	public function setModuloPai($moduloPai)
	{
		$this->_moduloPai = (int) $moduloPai;
		return $this;
	}

	/**
	* Get moduloPai
	* 
	* @return null|int
	*/
	public function getModuloPai()
	{
		return $this->_moduloPai;
	}
 
    /**
     * Get moduloPai object
     * @return null|Modulo
     */
    public function getModuloPaiObject()
    {
        $model = new Basico_Model_ModuloPai();
        $object = $model->find($this->_moduloPai);
        return $object;
    }

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_Modulo
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
	* @return Basico_Model_Modulo
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
	* @return Basico_Model_Modulo
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ModuloMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ModuloMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_ModuloMapper());
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
	* @return Basico_Model_Modulo
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