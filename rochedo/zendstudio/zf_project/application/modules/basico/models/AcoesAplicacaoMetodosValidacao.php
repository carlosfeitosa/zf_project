<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * AcaoAplicacaoMetodoValidacao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AcoesAplicacaoMetodosValidacaoMapper
 * @subpackage Model
 */
class Basico_Model_AcoesAplicacaoMetodosValidacao
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_AcaoAplicacaoMetodoValidacaoMapper
     */
    protected $_mapper;

    /**
     * @var int
     */
    protected $_acaoaplicacao;
    
    /**
     * @var int
     */
    protected $_metodovalidacao;

    /**
     * @var int
     */
    protected $_perfil;

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
     * @return Basico_Model_AcaoAplicacaoMetodoValidacao
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
    * Set acaoaplicacao
    * 
    * @param int $acaoAplicacao
    * @return Basico_Model_AcoesAplicacaoMetodosValidacao
    */
    public function setAcaoAplicacao($acaoAplicacao)
    {
        $this->_acaoaplicacao = Basico_OPController_UtilOPController::retornaValorTipado($acaoAplicacao, TIPO_INTEIRO, true);
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
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_acaoaplicacao);
        return $object;
    }
    
    /**
    * Set metodovalidacao
    * 
    * @param int $ 
    * @return Basico_Model_AcoesAplicacaoMetodosValidacao
    */
    public function setMetodoValidacao($metodoValidacao)
    {
        $this->_metodovalidacao = Basico_OPController_UtilOPController::retornaValorTipado($metodoValidacao, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get metodovalidacao
    * 
    * @return null|int
    */
    public function getMetodoValidacao()
    {
        return $this->_metodovalidacao;
    }
 
    /**
     * Get metodovalidacao object
     * @return null|MetodoValidacao
     */
    public function getMetodoValidacaoObject()
    {
        $model = new Basico_Model_MetodoValidacao();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_metodovalidacao);
        return $object;
    }

    /**
    * Set perfil
    * 
    * @param int $ 
    * @return Basico_Model_AcoesAplicacaoMetodosValidacao
    */
    public function setPerfil($perfil)
    {
        $this->_perfil = Basico_OPController_UtilOPController::retornaValorTipado($perfil, TIPO_INTEIRO, true);
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
     * @return null|MetodoValidacao
     */
    public function getPerfilObject()
    {
        $model = new Basico_Model_Perfil();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_perfil);
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
    * @return Basico_Model_AcaoAplicacaoMetodoValidacao
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
    * @return Basico_Model_AcaoAplicacaoMetodoValidacao
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_AcaoAplicacaoMetodoValidacaoMapper instance if no mapper registered.
    * 
    * @return Basico_Model_AcaoAplicacaoMetodoValidacaoMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_AcoesAplicacaoMetodosValidacaoMapper());
        }
        return $this->_mapper;
    }
}
