<?php
/**
 * conteudo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_conteudoMapper
 * @subpackage Model
 */
class Basico_Model_conteudo
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_conteudoMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_actionName;
	/**
	 * @var String
	 */
	protected $_constanteTextualTitulo;
	/**
	 * @var String
	 */
	protected $_constanteTextualSubTitulo;
	/**
	 * @var String
	 */
	protected $_constanteTextualMensagem;
	/**
	 * @var String
	 */
	protected $_metodoInicializacao;
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
	 * @return Basico_Model_conteudo
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
	* Set actionName
	* 
	* @param String $actionName 
	* @return Basico_Model_ActionName
	*/
	public function setActionName($actionName)
	{
		$this->_actionName = (String) $actionName;
		return $this;
	}

	/**
	* Get actionName
	* 
	* @return null|String
	*/
	public function getActionName()
	{
		return $this->_actionName;
	}
     
	/**
	* Set constanteTextualTitulo
	* 
	* @param String $constanteTextualTitulo 
	* @return Basico_Model_ConstanteTextualTitulo
	*/
	public function setConstanteTextualTitulo($constanteTextualTitulo)
	{
		$this->_constanteTextualTitulo = (String) $constanteTextualTitulo;
		return $this;
	}

	/**
	* Get constanteTextualTitulo
	* 
	* @return null|String
	*/
	public function getConstanteTextualTitulo()
	{
		return $this->_constanteTextualTitulo;
	}
     
	/**
	* Set constanteTextualSubTitulo
	* 
	* @param String $constanteTextualSubTitulo 
	* @return Basico_Model_ConstanteTextualSubTitulo
	*/
	public function setConstanteTextualSubTitulo($constanteTextualSubTitulo)
	{
		$this->_constanteTextualSubTitulo = (String) $constanteTextualSubTitulo;
		return $this;
	}

	/**
	* Get constanteTextualSubTitulo
	* 
	* @return null|String
	*/
	public function getConstanteTextualSubTitulo()
	{
		return $this->_constanteTextualSubTitulo;
	}
     
	/**
	* Set constanteTextualMensagem
	* 
	* @param String $constanteTextualMensagem 
	* @return Basico_Model_ConstanteTextualMensagem
	*/
	public function setConstanteTextualMensagem($constanteTextualMensagem)
	{
		$this->_constanteTextualMensagem = (String) $constanteTextualMensagem;
		return $this;
	}

	/**
	* Get constanteTextualMensagem
	* 
	* @return null|String
	*/
	public function getConstanteTextualMensagem()
	{
		return $this->_constanteTextualMensagem;
	}
     
	/**
	* Set metodoInicializacao
	* 
	* @param String $metodoInicializacao 
	* @return Basico_Model_MetodoInicializacao
	*/
	public function setMetodoInicializacao($metodoInicializacao)
	{
		$this->_metodoInicializacao = (String) $metodoInicializacao;
		return $this;
	}

	/**
	* Get metodoInicializacao
	* 
	* @return null|String
	*/
	public function getMetodoInicializacao()
	{
		return $this->_metodoInicializacao;
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
	* @return Basico_Model_conteudo
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
	* @return Basico_Model_conteudo
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_conteudoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_conteudoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_conteudoMapper());
		}
		return $this->_mapper;
	}
}
