<?php
/**
 * EventoElemento model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_EventoElementoMapper
 * @subpackage Model
 */
class Basico_Model_EventoElemento
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_EventoElementoMapper
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
	protected $_evevnto;
	/**
	 * @var Date
	 */
	protected $_dataHoraCriacao;
	/**
	 * @var Date
	 */
	protected $_dataHoraUltimaAtualizacao;
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
			throw new Exception('Invalid property specified');
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
			throw new Exception('Invalid property specified');
		}
		return $this->$method();
	}

	/**
	 * Set object state
	 * 
	 * @param  array $options 
	 * @return Basico_Model_EventoElemento
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
	* Set evevnto
	* 
	* @param String $evevnto 
	* @return Basico_Model_Evevnto
	*/
	public function setEvevnto($evevnto)
	{
		$this->_evevnto = (String) $evevnto;
		return $this;
	}

	/**
	* Get evevnto
	* 
	* @return null|String
	*/
	public function getEvevnto()
	{
		return $this->_evevnto;
	}
     
	/**
	* Set dataHoraCriacao
	* 
	* @param String $dataHoraCriacao 
	* @return Basico_Model_DataHoraCriacao
	*/
	public function setDataHoraCriacao($dataHoraCriacao)
	{
		$this->_dataHoraCriacao = (String) $dataHoraCriacao;
		return $this;
	}

	/**
	* Get dataHoraCriacao
	* 
	* @return null|String
	*/
	public function getDataHoraCriacao()
	{
		return $this->_dataHoraCriacao;
	}
     
	/**
	* Set dataHoraUltimaAtualizacao
	* 
	* @param String $dataHoraUltimaAtualizacao 
	* @return Basico_Model_DataHoraUltimaAtualizacao
	*/
	public function setDataHoraUltimaAtualizacao($dataHoraUltimaAtualizacao)
	{
		$this->_dataHoraUltimaAtualizacao = (String) $dataHoraUltimaAtualizacao;
		return $this;
	}

	/**
	* Get dataHoraUltimaAtualizacao
	* 
	* @return null|String
	*/
	public function getDataHoraUltimaAtualizacao()
	{
		return $this->_dataHoraUltimaAtualizacao;
	}
 
	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_EventoElemento
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
	* @return Basico_Model_EventoElemento
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_EventoElementoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_EventoElementoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_EventoElementoMapper());
		}
		return $this->_mapper;
	}

}
