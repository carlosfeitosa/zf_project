<?php
/**
 * CategoriaAssocEventoAcao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CategoriaAssocEventoAcao
 * @subpackage Model
 */
class Basico_Model_CategoriaAssocEventoAcao
{
	/**
	 * @var Basico_Model_CategoriaAssocEventoAcaoMapper
	 */
	protected $_mapper;
	
	/**
	* @var int
	*/
	protected $_id;
	/**
	* @var int
	*/
	protected $_idCategoria;
	/**
	 * @var String
	 */
	protected $_tagAbertura;
	/**
	 * @var String
	 */
	protected $_tagFechamento;
	/**
	 * @var String
	 */
	protected $_delimitador;
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
	 * @return Basico_Model_CategoriaAssocEventoAcao
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
	* @return Basico_Model_CategoriaAssocEventoAcao
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
	* Set entry idCategoria
	* 
	* @param  int $idCategoria 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idCategoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
	
	/**
	* Set tag abertura
	* 
	* @param String $tagAbertura 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function setTagAbertura($tagAbertura)
	{
		$this->_tagAbertura = Basico_OPController_UtilOPController::retornaValorTipado($tagAbertura, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get tag abertura
	* 
	* @return null|String
	*/
	public function getTagAbertura()
	{
		return $this->_tagAbertura;
	}
     
	/**
	* Set tag fechamento
	* 
	* @param String $tagFechamento 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function setTagFechamento($tagFechamento)
	{
		$this->_tagFechamento = Basico_OPController_UtilOPController::retornaValorTipado($tagFechamento, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get tag fechamento
	* 
	* @return null|String
	*/
	public function getTagFechamento()
	{
		return $this->_tagFechamento;
	}
	
	/**
	* Set delimitador
	* 
	* @param String $delimitador 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function setDelimitador($delimitador)
	{
		$this->_delimitador = Basico_OPController_UtilOPController::retornaValorTipado($delimitador, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get delimitador
	* 
	* @return null|String
	*/
	public function getDelimitador()
	{
		return $this->_delimitador;
	}
    
	/**
	* Set datahoraCriacao
	* 
	* @param String $datahoraCriacao 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao, TIPO_DATE, true);
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
	* @param String $rowinfo 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo,TIPO_STRING,true);
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
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_CategoriaAssocEventoAcao instance if no mapper registered.
	* 
	* @return Basico_Model_CategoriaAssocEventoAcao
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_CategoriaAssocEventoAcao());
		}
		return $this->_mapper;
	}
}