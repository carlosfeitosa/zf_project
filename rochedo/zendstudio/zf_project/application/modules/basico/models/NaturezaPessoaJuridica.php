<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * NaturezaPessoaJuridica model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_NaturezaPessoaJuridicaMapper
 * @subpackage Model
 */
class Basico_Model_NaturezaPessoaJuridica
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_NaturezaPessoaJuridicaMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_constanteTextualNome;
	/**
	 * @var String
	 */
	protected $_descricao;
	/**
	 * @var String
	 */
	protected $_ativo;
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
	 * @return Basico_Model_NaturezaPessoaJuridica
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
	* Set constanteTextualNome
	* 
	* @param String $constanteTextualNome 
	* @return Basico_Model_NaturezaPessoaJuridica
	*/
	public function setConstanteTextualNome($constanteTextualNome)
	{
		$this->_constanteTextualNome = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualNome, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualNome
	* 
	* @return null|String
	*/
	public function getConstanteTextualNome()
	{
		return $this->_constanteTextualNome;
	}
     
	/**
	* Set descricao
	* 
	* @param String $descricao 
	* @return Basico_Model_NaturezaPessoaJuridica
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
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_NaturezaPessoaJuridica
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|String
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}

	/**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_NaturezaPessoaJuridica
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
	* @return Basico_Model_NaturezaPessoaJuridica
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
	* @return Basico_Model_NaturezaPessoaJuridica
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_NaturezaPessoaJuridicaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_NaturezaPessoaJuridicaMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_NaturezaPessoaJuridicaMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_NaturezaPessoaJuridica
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
