<?php
/**
 * ComposicaoCapitalSocialPessoaJuridica model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ComposicaoCapitalSocialPessoaJuridicaMapper
 * @subpackage Model
 */
class Basico_Model_ComposicaoCapitalSocialPessoaJuridica
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_ComposicaoCapitalSocialPessoaJuridicaMapper
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
	 * @var Boolean
	 */
	protected $_ativo;
    /**
     * @var Integer
     */
    protected $_categoria;

    /**
     * @var Integer
     */
    protected $_pessoaJuridica;
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
	 * @return Basico_Model_ComposicaoCapitalSocialPessoaJuridica
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
	* @return Basico_Model_ComposicaoCapitalSocialPessoaJuridica
	*/
	public function setConstanteTextualNome($constanteTextualNome)
	{
		$this->_constanteTextualNome = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualNome, TIPO_STRING, true) ;
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
	* @return Basico_Model_ComposicaoCapitalSocialPessoaJuridica
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_OPController_UtilOPController::retornaValorTipado($descricao, TIPO_STRING, true) ;
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
	* @return Basico_Model_ComposicaoCapitalSocialPessoaJuridica
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true) ;
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|Boolean
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}
     
	/**
	* Set categoria
	* 
	* @param int $categoria 
	* @return Basico_Model_ComposicaoCapitalSocialPessoaJuridica
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria, TIPO_INTEIRO, true) ;
		return $this;
	}

	/**
	* Get categoria
	* 
	* @return null|int
	*/
	public function getCategoria()
	{
		return $this->_categoria;
	}
 
    /**
     * Get categoria object
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = $model->find($this->_categoria);
        return $object;
    }
    
	/**
	* Set pessoaJuridica
	* 
	* @param int $pessoaJuridica 
	* @return Basico_Model_ComposicaoCapitalSocialPessoaJuridica
	*/
	public function setPessoaJuridica($pessoaJuridica)
	{
		$this->_pessoaJuridica =  Basico_OPController_UtilOPController::retornaValorTipado($pessoaJuridica, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get pessoaJuridica
	* 
	* @return null|int
	*/
	public function getPessoaJuridica()
	{
		return $this->_pessoaJuridica;
	}
 
    /**
     * Get pessoaJuridica object
     * @return null|Basico_Model_PessoaJuridica
     */
    public function getPessoaJuridicaObject()
    {
        $model = new Basico_Model_PessoaJuridica();
        $object = $model->find($this->_pessoaJuridica);
        return $object;
    }



    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_ComposicaoCapitalSocialPessoaJuridica
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
	* @return Basico_Model_ComposicaoCapitalSocialPessoaJuridica
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
	* @return Basico_Model_ComposicaoCapitalSocialPessoaJuridica
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ComposicaoCapitalSocialPessoaJuridicaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ComposicaoCapitalSocialPessoaJuridicaMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_ComposicaoCapitalSocialPessoaJuridicaMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_ComposicaoCapitalSocialPessoaJuridica
	*/
	public function find($id)
	{
		$this->getMapper()->find((int)$id, $this);
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
