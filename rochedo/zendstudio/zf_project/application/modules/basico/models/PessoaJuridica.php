<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * PessoaJuridica model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoaJuridicaMapper
 * @subpackage Model
 */
class Basico_Model_PessoaJuridica
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_PessoaJuridicaMapper
	 */
	protected $_mapper;

	/**
	 * @var Integer
	 */
	protected $_nivelHierarquia;
    /**
     * @var Integer
     */
    protected $_pessoaJuridicaPai;
    /**
     * @var Integer
     */
    protected $_categoria;
    /**
     * @var Integer
     */
    protected $_pessoaResponsavelCadastro;
    /**
     * @var Integer
     */
    protected $_naturezaPessoaJuridica;
    /**
     * @var Integer
     */
    protected $_areaEconomiaDefault;
    /**
     * @var Integer
     */
    protected $_telefoneDefault;
    /**
     * @var Integer
     */
    protected $_emailDefault;   
    /**
     * @var Integer
     */
    protected $_websiteDefault;
    /**
     * @var Integer
     */
    protected $_enderecoCorrespondencia;
    /**
     * @var Integer
     */
    protected $_enderecoDefault;
	/**
	 * @var Date
	 */
	protected $_dataCriacao;
	/**
	 * @var Date
	 */
	protected $_dataUltimaModificacao;
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
	 * @return Basico_Model_PessoaJuridica
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
	* Set nivelHierarquia
	* 
	* @param Integer $nivelHierarquia 
	* @return Basico_Model_PessoaJuridica
	*/
	public function setNivelHierarquia($nivelHierarquia)
	{
		$this->_nivelHierarquia = Basico_OPController_UtilOPController::retornaValorTipado($nivelHierarquia, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get nivelHierarquia
	* 
	* @return null|Integer
	*/
	public function getNivelHierarquia()
	{
		return $this->_nivelHierarquia;
	}

	/**
	* Set pessoaJuridicaPai
	* 
	* @param int $pessoaJuridicaPai
	* @return Basico_Model_PessoaJuridica
	*/
	public function setPessoaJuridicaPai($pessoaJuridicaPai)
	{
		$this->_pessoaJuridicaPai = Basico_OPController_UtilOPController::retornaValorTipado($pessoaJuridicaPai, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get pessoaJuridicaPai
	* 
	* @return null|int
	*/
	public function getPessoaJuridicaPai()
	{
		return $this->_pessoaJuridicaPai;
	}
 
    /**
     * Get pessoaJuridicaPai object
     * @return null|Basico_Model_PessoaJuridica
     */
    public function getPessoaJuridicaPaiObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_PessoaJuridica();
        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_pessoaJuridicaPai);
        // retornando objeto
        return $object;
    }

	/**
	* Set categoria
	* 
	* @param int $categoria
	* @return Basico_Model_PessoaJuridica
	*/
	public function setCategoria($categoria)
	{
		$this->_categoria = Basico_OPController_UtilOPController::retornaValorTipado($categoria, TIPO_INTEIRO, true);
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
    	// recuperando modelo
        $model = new Basico_Model_Categoria();
        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_categoria);
        // retornando objeto
        return $object;
    }

	/**
	* Set pessoaResponsavelCadastro
	* 
	* @param int $pessoaResponsavelCadastro 
	* @return Basico_Model_PessoaJuridica
	*/
	public function setPessoaResponsavelCadastro($pessoaResponsavelCadastro)
	{
		$this->_pessoaResponsavelCadastro = Basico_OPController_UtilOPController::retornaValorTipado($pessoaResponsavelCadastro, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get pessoaResponsavelCadastro
	* 
	* @return null|int
	*/
	public function getPessoaResponsavelCadastro()
	{
		return $this->_pessoaResponsavelCadastro;
	}
 
    /**
     * Get pessoaResponsavelCadastro object
     * @return null|Basico_Model_Pessoa
     */
    public function getPessoaResponsavelCadastroObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_Pessoa();
        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_pessoaResponsavelCadastro);
        // retornando objeto
        return $object;
    }

	/**
	* Set naturezaPessoaJuridica
	* 
	* @param int $naturezaPessoaJuridica 
	* @return Basico_Model_PessoaJuridica
	*/
	public function setNaturezaPessoaJuridica($naturezaPessoaJuridica)
	{
		$this->_naturezaPessoaJuridica = Basico_OPController_UtilOPController::retornaValorTipado($naturezaPessoaJuridica, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get naturezaPessoaJuridica
	* 
	* @return null|int
	*/
	public function getNaturezaPessoaJuridica()
	{
		return $this->_naturezaPessoaJuridica;
	}
 
    /**
     * Get naturezaPessoaJuridica object
     * @return null|Basico_Model_NaturezaPessoaJuridica
     */
    public function getNaturezaPessoaJuridicaObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_NaturezaPessoaJuridica();
        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_naturezaPessoaJuridica);
        // retornando objeto
        return $object;
    }

	/**
	* Set areaEconomiaDefault
	* 
	* @param int $naturezaPessoaJuridica 
	* @return Basico_Model_PessoaJuridica
	*/
	public function setAreaEconomiaDefault($areaEconomiaDefault)
	{
		$this->_areaEconomiaDefault = Basico_OPController_UtilOPController::retornaValorTipado($areaEconomiaDefault, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get areaEconomiaDefault
	* 
	* @return null|int
	*/
	public function getAreaEconomiaDefault()
	{
		return $this->_areaEconomiaDefault;
	}
 
    /**
     * Get areaEconomiaDefault object
     * @return null|Basico_Model_AreaEconomia
     */
    public function getAreaEconomiaDefaultObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_AreaEconomia();
        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_areaEconomiaDefault);
        // retornando objeto
        return $object;
    }

	/**
	* Set telefoneDefault
	* 
	* @param int $telefoneDefault 
	* @return Basico_Model_PessoaJuridica
	*/
	public function setTelefoneDefault($telefoneDefault)
	{
		$this->_telefoneDefault = Basico_OPController_UtilOPController::retornaValorTipado($telefoneDefault, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get telefoneDefault
	* 
	* @return null|int
	*/
	public function getTelefoneDefault()
	{
		return $this->_telefoneDefault;
	}

    /**
     * Get telefoneDefault object
     * @return null|Basico_Model_Telefone
     */
    public function getTelefoneDefaultObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_Telefone();
        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_telefoneDefault);
        // retornando objeto
        return $object;
    }

	/**
	* Set emailDefault
	* 
	* @param int $emailDefault 
	* @return Basico_Model_PessoaJuridica
	*/
	public function setEmailDefault($emailDefault)
	{
		$this->_emailDefault = Basico_OPController_UtilOPController::retornaValorTipado($emailDefault, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get emailDefault
	* 
	* @return null|int
	*/
	public function getEmailDefault()
	{
		return $this->_emailDefault;
	}

    /**
     * Get emailDefault object
     * @return null|Basico_Model_Email
     */
    public function getEmailDefaultObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_Email();
        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_emailDefault);
        // retornando objeto
        return $object;
    }

	/**
	* Set websiteDefault
	* 
	* @param int $websiteDefault 
	* @return Basico_Model_PessoaJuridica
	*/
	public function setWebsiteDefault($websiteDefault)
	{
		$this->_websiteDefault = Basico_OPController_UtilOPController::retornaValorTipado($websiteDefault, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get websiteDefault
	* 
	* @return null|int
	*/
	public function getWebsiteDefault()
	{
		return $this->_websiteDefault;
	}
 
    /**
     * Get websiteDefault object
     * @return null|Basico_Model_WebSite
     */
    public function getWebsiteDefaultObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_Website();
        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_websiteDefault);
        // retornando objeto
        return $object;
    }

	/**
	* Set enderecoCorrespondencia
	* 
	* @param int $enderecoCorrespondencia 
	* @return Basico_Model_PessoaJuridica
	*/
	public function setEnderecoCorrespondencia($enderecoCorrespondencia)
	{
		$this->_enderecoCorrespondencia = Basico_OPController_UtilOPController::retornaValorTipado($enderecoCorrespondencia, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get enderecoCorrespondencia
	* 
	* @return null|int
	*/
	public function getEnderecoCorrespondencia()
	{
		return $this->_enderecoCorrespondencia;
	}

    /**
     * Get enderecoCorrespondencia object
     * @return null|Basico_Model_Endereco
     */
    public function getEnderecoCorrespondenciaObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_Endereco();
        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_enderecoCorrespondencia);
        // retornando objeto
        return $object;
    }

	/**
	* Set enderecoDefault
	* 
	* @param int $enderecoDefault 
	* @return Basico_Model_PessoaJuridica
	*/
	public function setEnderecoDefault($enderecoDefault)
	{
		$this->_enderecoDefault = Basico_OPController_UtilOPController::retornaValorTipado($enderecoDefault, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get enderecoDefault
	* 
	* @return null|int
	*/
	public function getEnderecoDefault()
	{
		return $this->_enderecoDefault;
	}

    /**
     * Get enderecoDefault object
     * @return null|Basico_Model_Endereco
     */
    public function getEnderecoDefaultObject()
    {
    	// recuperando modelo
        $model = new Basico_Model_Endereco();
        // recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_enderecoDefault);
        // retornando objeto
        return $object;
    }

	/**
	* Set dataCriacao
	* 
	* @param String $dataCriacao 
	* @return Basico_Model_PessoaJuridica
	*/
	public function setDataCriacao($dataCriacao)
	{
		$this->_dataCriacao = Basico_OPController_UtilOPController::retornaValorTipado($dataCriacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get dataCriacao
	* 
	* @return null|String
	*/
	public function getDataCriacao()
	{
		return $this->_dataCriacao;
	}

	/**
	* Set dataUltimaModificacao
	* 
	* @param String $dataUltimaModificacao 
	* @return Basico_Model_PessoaJuridica
	*/
	public function setDataUltimaModificacao($dataUltimaModificacao)
	{
		$this->_dataUltimaModificacao = Basico_OPController_UtilOPController::retornaValorTipado($dataUltimaModificacao, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get dataUltimaModificacao
	* 
	* @return null|String
	*/
	public function getDataUltimaModificacao()
	{
		return $this->_dataUltimaModificacao;
	}

    /**
	* Set rowinfo
	* 
	* @param String $rowinfo 
	* @return Basico_Model_PessoaJuridica
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
	* @return Basico_Model_PessoaJuridica
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
	* @return Basico_Model_PessoaJuridica
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_PessoaJuridicaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_PessoaJuridicaMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_PessoaJuridicaMapper());
		}
		return $this->_mapper;
	}
}
