<?php
/**
 * SequenciaFormulario model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_SequenciaFormularioMapper
 * @subpackage Model
 */
class Basico_Model_SequenciaFormulario
{
	/**
	* @var int
	*/
	protected $_id;
	/**
	 * @var Basico_Model_SequenciaFormularioMapper
	 */
	protected $_mapper;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var Integer
	 */
	protected $_formulario;
	/**
     * @var Integer
     */
    protected $_ordem;
	/**
     * @var String
     */
    protected $_descricao;
	/**
	 * @var Date
	 */
	protected $_dataHoraCriacao;
	/**
	 * @var Date
	 */
	protected $_dataHoraUltimaAtualizacao;
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
	 * @return Basico_Model_SequenciaFormulario
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
	* @return Basico_Model_nome
	*/
	public function setNome($nome)
	{
		if (is_object($nome)) {
			$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome,TIPO_STRING,true);
		}
		else
			$this->_nome = $nome;
		
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
	* Set formulario
	* 
	* @param String $formulario 
	* @return Basico_Model_SequenciaFormulario
	*/
	public function setFormulario($formulario)
	{
		$this->_formulario = Basico_OPController_UtilOPController::retornaValorTipado($formulario,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get formulario
	* 
	* @return null|Int
	*/
	public function getFormulario()
	{
		return $this->_formulario;
	}
     
	/**
	* Set dataHoraCriacao
	* 
	* @param String $dataHoraCriacao 
	* @return Basico_Model_DataHoraCriacao
	*/
	public function setDataHoraCriacao($dataHoraCriacao)
	{
		$this->_dataHoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraCriacao,TIPO_DATE,true);
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
		$this->_dataHoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaAtualizacao,TIPO_DATE,true);
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
	* Set descricao
	* 
	* @param int $descricao 
	* @return Basico_Model_descricao
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_OPController_UtilOPController::retornaValorTipado($descricao,TIPO_STRING,true);
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
	* Set ordem
	* 
	* @param int $ordem 
	* @return Basico_Model_ordem
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get ordem
	* 
	* @return null|int
	*/
	public function getOrdem()
	{
		return $this->_ordem;
	}
    
	/**
	* Set entry rowinfo
	* 
	* @param  string $rowinfo 
	* @return Basico_Model_SequenciaFormulario
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_OPController_UtilOPController::retornaValorTipado($rowinfo,TIPO_STRING,true);
		return $this;
	}

	/**
	* Retrieve entry rowinfo
	* 
	* @return null|string
	*/
	public function getRowinfo()
	{
		return $this->_rowinfo;
	}

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_SequenciaFormulario
	*/
	public function setId($id)
	{
		$this->_id = Basico_OPController_UtilOPController::retornaValorTipado($id,TIPO_INTEIRO,true);
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
	* @return Basico_Model_SequenciaFormulario
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_SequenciaFormularioMapper instance if no mapper registered.
	* 
	* @return Basico_Model_SequenciaFormularioMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_SequenciaFormularioMapper());
		}
		return $this->_mapper;
	}

}
