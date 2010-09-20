<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * CVC model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CVCMapper
 * @subpackage Model
 */

class Basico_Model_CVC
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_CVCMapper
	 */
	protected $_mapper;

	/**
	 * @var Integer
	 */
	protected $_idGenerico;
	/**
	 * @var Double
	 */
	protected $_versao;
    /**
     * @var Integer
     */
    protected $_categoriaChaveEstrangeira;
	/**
	 * @var String
	 */
	protected $_objeto;
	/**
	 * @var Date
	 */
	protected $_validadeInicio;
	/**
	 * @var Date
	 */
	protected $_validadeTermino;
	/**
	 * @var Date
	 */
	protected $_ultimaAtualizacao;
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
	 * @return Basico_Model_CVC
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
	* Set idGenerico
	* 
	* @param Integer $idGenerico 
	* @return Basico_Model_IdGenerico
	*/
	public function setIdGenerico($idGenerico)
	{
		$this->_idGenerico = (Integer) $idGenerico;
		return $this;
	}

	/**
	* Get idGenerico
	* 
	* @return null|Integer
	*/
	public function getIdGenerico()
	{
		return $this->_idGenerico;
	}
     
	/**
	* Set versao
	* 
	* @param Double $versao 
	* @return Basico_Model_Versao
	*/
	public function setVersao($versao)
	{
		$this->_versao = (Integer) $versao;
		return $this;
	}

	/**
	* Get versao
	* 
	* @return null|Double
	*/
	public function getVersao()
	{
		return $this->_versao;
	}
     
	/**
	* Set categoriaChaveEstrangeira
	* 
	* @param int $categoriaChaveEstrangeira 
	* @return Basico_Model_CategoriaChaveEstrangeira
	*/
	public function setCategoriaChaveEstrangeira($categoriaChaveEstrangeira)
	{
		$this->_categoriaChaveEstrangeira = (int) $categoriaChaveEstrangeira;
		return $this;
	}

	/**
	* Get categoriaChaveEstrangeira
	* 
	* @return null|int
	*/
	public function getCategoriaChaveEstrangeira()
	{
		return $this->_categoriaChaveEstrangeira;
	}
 
    /**
     * Get categoriaChaveEstrangeira object
     * @return null|CategoriaChaveEstrangeira
     */
    public function getCategoriaChaveEstrangeiraObject()
    {
        $model = new Basico_Model_CategoriaChaveEstrangeira();
        $object = $model->find($this->_categoriaChaveEstrangeira);
        return $object;
    }
    
	/**
	* Set objeto
	* 
	* @param String $objeto 
	* @return Basico_Model_Objeto
	*/
	public function setObjeto($objeto)
	{
		if (is_object($objeto)) {
			$this->_objeto = Basico_Model_Util::codificar($objeto);
		}
		else
			$this->_objeto = $objeto;
		
		return $this;
	}

	/**
	* Get objeto
	* 
	* @return null|String
	*/
	public function getObjeto()
	{
		return $this->_objeto;
	}
	
	/**
	 * get objeto as array
	 * 
	 * @return null|array
	 */
	public function getObjetoArray()
	{
		return Basico_Model_Util::codificar($this->_objeto, CODIFICAR_ENCODED_STRING_TO_ARRAY);
	}
     
	/**
	* Set validadeInicio
	* 
	* @param String $validadeInicio 
	* @return Basico_Model_ValidadeInicio
	*/
	public function setValidadeInicio($validadeInicio)
	{
		$this->_validadeInicio = (String) $validadeInicio;
		return $this;
	}

	/**
	* Get validadeInicio
	* 
	* @return null|String
	*/
	public function getValidadeInicio()
	{
		return $this->_validadeInicio;
	}
     
	/**
	* Set validadeTermino
	* 
	* @param String $validadeTermino 
	* @return Basico_Model_ValidadeTermino
	*/
	public function setValidadeTermino($validadeTermino)
	{
		if (isset($validadeTermino))
			$this->_validadeTermino = (String) $validadeTermino;
		return $this;
	}
	
	/**
	* Get validadeTermino
	* 
	* @return null|String
	*/
	public function getValidadeTermino()
	{
		return $this->_validadeTermino;
	}

	/**
	* Get validadeTermino
	* 
	* @return null|String
	*/
	public function getUltimaAtualizacao()
	{
		return $this->_ultimaAtualizacao;
	}
	
	/**
	* Set validadeTermino
	* 
	* @param String $validadeTermino 
	* @return Basico_Model_ValidadeTermino
	*/
	public function setUltimaAtualizacao($ultimaAtualizacao)
	{
		$this->_ultimaAtualizacao = (String) $ultimaAtualizacao;
		return $this;
	}
	
	/**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Categoria
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
	* @return Basico_Model_CVC
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
	* @return Basico_Model_CVC
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_CVCMapper instance if no mapper registered.
	* 
	* @return Basico_Model_CVCMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_CVCMapper());
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
	* @return Basico_Model_CVC
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