<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * ParceriaPessoaJuridica model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_ParceriaPessoaJuridicaMapper
 * @subpackage Model
 */
class Basico_Model_ParceriaPessoaJuridica
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_ParceriaPessoaJuridicaMapper
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
     * @var Integer
     */
    protected $_pessoaJuridica;
    /**
     * @var Integer
     */
    protected $_pessoaJuridicaVinculada;
    /**
     * @var Integer
     */
    protected $_parceriaPessoaJuridicaVinculada;

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
	 * @return Basico_Model_ParceriaPessoaJuridica
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
	* @return Basico_Model_ParceriaPessoaJuridica
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
	* @return Basico_Model_ParceriaPessoaJuridica
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
	* Set pessoaJuridica
	* 
	* @param int $pessoaJuridica 
	* @return Basico_Model_ParceriaPessoaJuridica
	*/
	public function setPessoaJuridica($pessoaJuridica)
	{
		$this->_pessoaJuridica = Basico_OPController_UtilOPController::retornaValorTipado($pessoaJuridica, TIPO_INTEIRO, true);
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
    	// recuperando modelo
        $model = new Basico_Model_PessoaJuridica();
        // recuperando objeto
        $object = $model->find($this->_pessoaJuridica);
        // retornando objeto
        return $object;
    }
    
	/**
	* Set pessoaJuridicaVinculada
	* 
	* @param int $pessoaJuridicaVinculada 
	* @return Basico_Model_ParceriaPessoaJuridica
	*/
	public function setPessoaJuridicaVinculada($pessoaJuridicaVinculada)
	{
		$this->_pessoaJuridicaVinculada = Basico_OPController_UtilOPController::retornaValorTipado($pessoaJuridicaVinculada, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get pessoaJuridicaVinculada
	* 
	* @return null|int
	*/
	public function getPessoaJuridicaVinculada()
	{
		return $this->_pessoaJuridicaVinculada;
	}
 
    /**
     * Get pessoaJuridicaVinculada object
     * @return null|Basico_Model_PessoaJuridica
     */
    public function getPessoaJuridicaVinculadaObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_PessoaJuridica();
        // recuperando objeto
        $object = $model->find($this->_pessoaJuridicaVinculada);
        // retornando objeto
        return $object;
    }
    
	/**
	* Set parceriaPessoaJuridicaVinculada
	* 
	* @param int $parceriaPessoaJuridicaVinculada
	* @return Basico_Model_ParceriaPessoaJuridica
	*/
	public function setParceriaPessoaJuridicaVinculada($parceriaPessoaJuridicaVinculada)
	{
		$this->_parceriaPessoaJuridicaVinculada = Basico_OPController_UtilOPController::retornaValorTipado($parceriaPessoaJuridicaVinculada, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get parceriaPessoaJuridica
	* 
	* @return null|int
	*/
	public function getParceriaPessoaJuridicaVinculada()
	{
		return $this->_parceriaPessoaJuridicaVinculada;
	}
 
    /**
     * Get parceriaPessoaJuridica object
     * @return null|Basico_Model_ParceriaPessoaJuridica
     */
    public function getParceriaPessoaJuridicaVinculadaObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_ParceriaPessoaJuridica();
        // recuperando objeto
        $object = $model->find($this->_parceriaPessoaJuridicaVinculada);
        // retornando objeto
        return $object;
    }

    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_ParceriaPessoaJuridica
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
	* @return Basico_Model_ParceriaPessoaJuridica
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
	* @return Basico_Model_ParceriaPessoaJuridica
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_ParceriaPessoaJuridicaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_ParceriaPessoaJuridicaMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_ParceriaPessoaJuridicaMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_ParceriaPessoaJuridica
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
