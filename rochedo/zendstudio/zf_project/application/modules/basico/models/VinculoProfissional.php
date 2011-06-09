<?php
/**
 * VinculoProfissional model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_VinculoProfissionalMapper
 * @subpackage Model
 */
class Basico_Model_VinculoProfissional
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_VinculoProfissionalMapper
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
	 * @var Boolean
	 */
	protected $_vinculoEmpregaticio;
	/**
	 * @var Boolean
	 */
	protected $_permiteAssociacaoPessoaJuridica;
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
	 * @return Basico_Model_VinculoProfissional
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
	* @return Basico_Model_VinculoProfissional
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
	* @return Basico_Model_Descricao
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
	* Set vinculoEmpregaticio
	* 
	* @param Boolean $vinculoEmpregaticio 
	* @return Basico_Model_VinculoProfissional
	*/
	public function setVinculoEmpregaticio($vinculoEmpregaticio)
	{
		$this->_vinculoEmpregaticio = Basico_OPController_UtilOPController::retornaValorTipado($vinculoEmpregaticio, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get vinculoEmpregaticio
	* 
	* @return null|Boolean
	*/
	public function getVinculoEmpregaticio()
	{
		return $this->_vinculoEmpregaticio;
	}
     
	/**
	* Set permiteAssociacaoPessoaJuridica
	* 
	* @param Boolean $permiteAssociacaoPessoaJuridica 
	* @return Basico_Model_VinculoProfissional
	*/
	public function setPermiteAssociacaoPessoaJuridica($permiteAssociacaoPessoaJuridica)
	{
		$this->_permiteAssociacaoPessoaJuridica = Basico_OPController_UtilOPController::retornaValorTipado($permiteAssociacaoPessoaJuridica, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get permiteAssociacaoPessoaJuridica
	* 
	* @return null|Boolean
	*/
	public function getPermiteAssociacaoPessoaJuridica()
	{
		return $this->_permiteAssociacaoPessoaJuridica;
	}
 
    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_VinculoProfissional
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
	* @return Basico_Model_VinculoProfissional
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
	* @return Basico_Model_VinculoProfissional
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_VinculoProfissionalMapper instance if no mapper registered.
	* 
	* @return Basico_Model_VinculoProfissionalMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_VinculoProfissionalMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_VinculoProfissional
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
