<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * PerfilAcaoAplicacao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AcoesAplicacaoPerfisMapper
 * @subpackage Model
 */
class Basico_Model_AcoesAplicacaoPerfis
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_AcoesAplicacaoPerfisMapper
     */
    protected $_mapper;

    /**
     * @var Perfil
     */
    protected $_perfil;
    
    /**
     * @var AcaoAplicacao
     */
    protected $_acaoaplicacao;
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
     * @return Basico_Model_AcoesAplicacaoPerfis
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
    * Set perfil
    * 
    * @param int $ 
    * @return Basico_Model_AcoesAplicacaoPerfis
    */
    public function setPerfil($perfil)
    {
        $this->_perfil = Basico_UtilControllerController::retornaValorTipado($perfil, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get perfil
    * 
    * @return null|int
    */
    public function getPerfil()
    {
        return $this->_perfil;
    }
 
    /**
     * Get perfil object
     * @return null|Perfil
     */
    public function getPerfilObject()
    {
        $model = new Basico_Model_Perfil();
        $object = $model->find($this->_perfil);
        return $object;
    }
    
    /**
    * Set acaoaplicacao
    * 
    * @param int $acaoAplicacao
    * @return Basico_Model_AcoesAplicacaoPerfis
    */
    public function setAcaoAplicacao($acaoAplicacao)
    {
        $this->_acaoaplicacao = (int) $acaoAplicacao;
        return $this;
    }

    /**
    * Get acaoaplicacao
    * 
    * @return null|int
    */
    public function getAcaoAplicacao()
    {
        return $this->_acaoaplicacao;
    }
 
    /**
     * Get acaoaplicacao object
     * @return null|AcaoAplicacao
     */
    public function getAcaoAplicacaoObject()
    {
        $model = new Basico_Model_AcaoAplicacao();
        $object = $model->find($this->_acaoaplicacao);
        return $object;
    }

	/**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_Rowinfo
	*/
	public function setRowinfo($rowinfo)
	{
		$this->_rowinfo = Basico_UtilControllerController::retornaValorTipado($rowinfo, TIPO_STRING, true);
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
    * @return Basico_Model_AcoesAplicacaoPerfis
    */
    public function setId($id)
    {
        $this->_id = Basico_UtilControllerController::retornaValorTipado($id, TIPO_INTEIRO, true);
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
    * @return Basico_Model_AcoesAplicacaoPerfis
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_AcoesAplicacaoPerfisMapper instance if no mapper registered.
    * 
    * @return Basico_Model_AcoesAplicacaoPerfisMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_AcoesAplicacaoPerfisMapper());
        }
        return $this->_mapper;
    }

    /**
    * Find an entry
    *
    * Resets entry state if matching id found.
    * 
    * @param  int $id 
    * @return Basico_Model_AcoesAplicacaoPerfis
      
    */
    public function find($id)
    {
        $this->getMapper()->find($id, $this);
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