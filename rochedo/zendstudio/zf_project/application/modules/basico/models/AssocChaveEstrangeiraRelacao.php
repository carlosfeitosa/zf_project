<?php
/**
 * AssocChaveEstrangeiraRelacao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AssocChaveEstrangeiraRelacaoMapper
 * @subpackage Model
 */
class Basico_Model_AssocChaveEstrangeiraRelacao
{
	/**
	 * @var Basico_Model_AssocChaveEstrangeiraRelacaoMapper
	 */
	protected $_mapper;
	
	/**
	* @var int
	*/
	protected $_id;
	/**
	 * @var String
	 */
	protected $_tabelaOrigem;
	/**
	 * @var String
	 */
	protected $_campoOrigem;
	/**
	 * @var Date
	 */
	protected $_datahoraCriacao;
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
	 * @return Basico_Model_AssocChaveEstrangeiraRelacao
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
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_AssocChaveEstrangeiraRelacao
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
	* Set tabelaOrigem
	* 
	* @param String $tabelaOrigem 
	* @return Basico_Model_AssocChaveEstrangeiraRelacao
	*/
	public function setTabelaOrigem($tabelaOrigem)
	{
		$this->_tabelaOrigem = Basico_OPController_UtilOPController::retornaValorTipado($tabelaOrigem, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get tabelaOrigem
	* 
	* @return null|String
	*/
	public function getTabelaOrigem()
	{
		return $this->_tabelaOrigem;
	}
     
	/**
	* Set campoOrigem
	* 
	* @param String $campoOrigem 
	* @return Basico_Model_AssocChaveEstrangeiraRelacao
	*/
	public function setCampoOrigem($campoOrigem)
	{
		$this->_campoOrigem = Basico_OPController_UtilOPController::retornaValorTipado($campoOrigem, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get campoOrigem
	* 
	* @return null|String
	*/
	public function getCampoOrigem()
	{
		return $this->_campoOrigem;
	}
	
	/**
	* Set datahoraCriacao
	* 
	* @param String $datahoraCriacao 
	* @return Basico_Model_AssocChaveEstrangeiraRelacao
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get datahoraCriacao
	* 
	* @return null|String
	*/
	public function getDatahoraCriacao()
	{
		return $this->_datahoraCriacao;
	}

	/**
	* Set rowinfo
	* 
	* @param String $xml 
	* @return Basico_Model_AssocChaveEstrangeiraRelacao
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_AssocChaveEstrangeiraRelacao
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_AssocChaveEstrangeiraRelacaoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AssocChaveEstrangeiraRelacaoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_AssocChaveEstrangeiraRelacaoMapper());
		}
		return $this->_mapper;
	}
}
