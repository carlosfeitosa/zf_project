<?php
/**
 * AcaoAplicacaoAssocVisao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AcaoAplicacaoAssocVisaoMapper
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacaoAssocVisao
{
	/**
	 * @var Basico_Model_AcaoAplicacaoAssocVisaoMapper
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
	* @var int
	*/
	protected $_idAcaoAplicacao;
	/**
	 * @var String
	 */
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_constanteTextualDescricao;
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
	 * @var Date
	 */
	protected $_datahoraCriacao;
	/**
	 * @var Date
	 */
	protected $_datahoraUltimaAtualizacao;
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
	 * @return Basico_Model_AcaoAplicacaoAssocVisao
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
	* @return Basico_Model_AcaoAplicacaoAssocVisao
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
	* @return Basico_Model_AcaoAplicacaoAssocVisao
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
	* Set entry idAcaoAplicacao
	* 
	* @param  int $idAcaoAplicacao 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
	*/
	public function setIdAcaoAplicacao($idAcaoAplicacao)
	{
		$this->_idAcaoAplicacao = Basico_OPController_UtilOPController::retornaValorTipado($idAcaoAplicacao, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idAcaoAplicacao
	* 
	* @return null|int
	*/
	public function getIdAcaoAplicacao()
	{
		return $this->_idAcaoAplicacao;
	}
    
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}
	
	/**
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualDescricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}
	
	/**
	* Set constanteTextualTitulo
	* 
	* @param String $constanteTextualTitulo 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
	*/
	public function setConstanteTextualTitulo($constanteTextualTitulo)
	{
		$this->_constanteTextualTitulo = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualTitulo, TIPO_STRING, true);
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
	* @return Basico_Model_AcaoAplicacaoAssocVisao
	*/
	public function setConstanteTextualSubTitulo($constanteTextualSubTitulo)
	{
		$this->_constanteTextualSubTitulo = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualSubTitulo, TIPO_STRING, true);
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
	* @return Basico_Model_AcaoAplicacaoAssocVisao
	*/
	public function setConstanteTextualMensagem($constanteTextualMensagem)
	{
		$this->_constanteTextualMensagem = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualMensagem, TIPO_STRING, true);
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
	* Set datahoraCriacao
	* 
	* @param String $datahoraCriacao 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
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
	* Set datahoraUltimaAtualizacao
	* 
	* @param String $datahoraUltimaAtualizacao 
	* @return Basico_Model_AcaoAplicacaoAssocVisao
	*/
	public function setDatahoraUltimaAtualizacao($datahoraUltimaAtualizacao)
	{
		$this->_datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaAtualizacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraUltimaAtualizacao
	* 
	* @return null|String
	*/
	public function getDatahoraUltimaAtualizacao()
	{
		return $this->_datahoraUltimaAtualizacao;
	}
     
	/**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Categoria
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
	* @return Basico_Model_AcaoAplicacaoAssocVisao
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_AcaoAplicacaoAssocVisaoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AcaoAplicacaoAssocVisaoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_AcaoAplicacaoAssocVisaoMapper());
		}
		return $this->_mapper;
	}
}
