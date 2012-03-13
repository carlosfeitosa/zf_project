<?php
/**
 * FormularioRascunhoAssocagGrupo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioRascunhoAssocagGrupoMapper
 * @subpackage Model
 */
class Basico_Model_FormularioRascunhoAssocagGrupo
{
	/**
	 * @var Basico_Model_FormularioRascunhoAssocagGrupoMapper
	 */
	protected $_mapper;
	
	/**
	* @var int
	*/
	protected $_id;
	/**
     * @var Integer
     */
    protected $_idAssocclPerfil;
	/**
	 * @var String
	 */
	protected $_forms;
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
	 * @return Basico_Model_FormularioRascunhoAssocagGrupo
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
	* @return Basico_Model_FormularioRascunhoAssocagGrupo
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
	* Set entry idAssocclPerfil
	* 
	* @param  int $idAssocclPerfil 
	* @return Basico_Model_FormularioRascunhoAssocagGrupo
	*/
	public function setIdAssocclPerfil($idAssocclPerfil)
	{
		$this->_idAssocclPerfil = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclPerfil,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Retrieve entry idAssocclPerfil
	* 
	* @return null|int
	*/
	public function getIdAssocclPerfil()
	{
		return $this->_idAssocclPerfil;
	}
     
	/**
	* Set forms
	* 
	* @param String $forms 
	* @return Basico_Model_forms
	*/
	public function setForms($forms)
	{
		$this->_forms = Basico_OPController_UtilOPController::retornaValorTipado($forms,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get forms
	* 
	* @return null|String
	*/
	public function getForms()
	{
		return $this->_forms;
	}
     
	/**
	* Set datahoraCriacao
	* 
	* @param String $datahoraCriacao 
	* @return Basico_Model_DatahoraCriacao
	*/
	public function setDatahoraCriacao($datahoraCriacao)
	{
		$this->_datahoraCriacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraCriacao,TIPO_DATE,true);
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
	* @return Basico_Model_DatahoraUltimaAtualizacao
	*/
	public function setDatahoraUltimaAtualizacao($datahoraUltimaAtualizacao)
	{
		$this->_datahoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($datahoraUltimaAtualizacao,TIPO_DATE,true);
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
	* Set entry rowinfo
	* 
	* @param  string $rowinfo 
	* @return Basico_Model_FormularioRascunhoAssocagGrupo
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
	* Set data mapper
	* 
	* @param  mixed $mapper 
	* @return Basico_Model_FormularioRascunhoAssocagGrupo
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_FormularioRascunhoAssocagGrupoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioRascunhoAssocagGrupoMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_FormularioRascunhoAssocagGrupoMapper());
		}
		return $this->_mapper;
	}

}
