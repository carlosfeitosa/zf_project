<?php
/**
 * PessoaPerfil model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoasPerfisMapper
 * @subpackage Model
 */
class Basico_Model_PessoasPerfis
{
    /**
    * @var int
    */
    protected $_id;

    /**
     * @var Basico_Model_PessoasPerfisMapper
     */
    protected $_mapper;
    
    /**
	 * @var String
	 */
	protected $_rowinfo;

    /**
     * @var Pessoa
     */
    protected $_pessoa;
    
    /**
     * @var Perfil
     */
    protected $_perfil;
    /**
     * 
     * @var Date
     */
    protected $_dataHoraCadastro;
    /**
     * 
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
     * @return Basico_Model_PessoasPerfis
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
    * Set pessoa
    * 
    * @param int $ 
    * @return Basico_Model_Pessoa
    */
    public function setPessoa($pessoa)
    {
        $this->_pessoa = Basico_OPController_UtilOPController::retornaValorTipado($pessoa, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get pessoa
    * 
    * @return null|int
    */
    public function getPessoa()
    {
        return $this->_pessoa;
    }
 
    /**
     * Get pessoa object
     * @return null|Pessoa
     */
    public function getPessoaObject()
    {
        $model = new Basico_Model_Pessoa();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_pessoa);
        return $object;
    }
    
    /**
    * Set perfil
    * 
    * @param int $ 
    * @return Basico_Model_Perfil
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
     * @return null|Perfil
     */
    public function getPerfilObject()
    {
        $model = new Basico_Model_Perfil();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_perfil);
        return $object;
    }
    

    /**
    * Set entry id
    * 
    * @param  int $id 
    * @return Basico_Model_PessoasPerfis
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
     * Set dataHoraCadastro
     * @param String $dataHoraCadastro
     * @return Basico_Model_PessoasPerfis
     */
    public function setDataHoraCadastro($dataHoraCadastro)
    {
    	$this->_dataHoraCadastro = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraCadastro, TIPO_DATE, true);
    	return $this;
    }
    
    /**
     * Get dataHoraCadastro
     * @return null|String
     */
    public function getDataHoraCadastro()
    {
    	return $this->_dataHoraCadastro;
    }
    
    /**
     * Set dataHoraUltimaAtualizacao
     * @param String $dataHoraUltimaAtualizacao
     * @return Basico_Model_PessoasPerfis
     */
    public function setDataHoraUltimaAtualizacao($dataHoraUltimaAtualizacao)
    {
    	$this->_dataHoraUltimaAtualizacao = Basico_OPController_UtilOPController::retornaValorTipado($dataHoraUltimaAtualizacao, TIPO_DATE, true);
    	return $this;
    }
    
    /**
     * Get dataHoraUltimaAtualizacao
     * @return null|String
     */
    public function getDataHoraUltimaAtualizacao()
    {
    	return $this->_dataHoraUltimaAtualizacao;
    }
    
	/**
	* Set rowinfo
	* 
	* @param String $xml 
	* @return Basico_Model_Pessoa
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
    * @return Basico_Model_PessoasPerfis
    */
    public function setMapper($mapper)
    {
        $this->_mapper = $mapper;
        return $this;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_PessoasPerfisMapper instance if no mapper registered.
    * 
    * @return Basico_Model_PessoasPerfisMapper
    */
    public function getMapper()
    {
        if (null === $this->_mapper) {
            $this->setMapper(new Basico_Model_PessoasPerfisMapper());
        }
        return $this->_mapper;
    }
}
