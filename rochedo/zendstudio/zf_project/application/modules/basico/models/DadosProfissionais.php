<?php
/**
 * DadosProfissionais model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DadosProfissionaisMapper
 * @subpackage Model
 */
class Basico_Model_DadosProfissionais
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_DadosProfissionaisMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_departamento;
	/**
	 * @var String
	 */
	protected $_cargo;
	/**
	 * @var String
	 */
	protected $_funcao;
	/**
	 * @var String
	 */
	protected $_atividadesDesenvolvidas;
	/**
	 * @var Date
	 */
	protected $_dataAdmissao;
	/**
	 * @var Date
	 */
	protected $_dataDemissao;
	/**
	 * @var Integer
	 */
	protected $_cargaHorariaSemanal;
	/**
	 * @var Boolean
	 */
	protected $_dedicacaoExclusiva;
	/**
	 * @var Double
	 */
	protected $_salarioBruto;
	/**
	 * @var String
	 */
	protected $_descricao;
    /**
     * @var Integer
     */
    protected $_pessoa;

    /**
     * @var Integer
     */
    protected $_pessoaJuridicaVinculo;

    /**
     * @var Integer
     */
    protected $_vinculoEmpregaticio;

    /**
     * @var Integer
     */
    protected $_regimeTrabalho;

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
			throw new Exception('Invalid property specified');
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
			throw new Exception('Invalid property specified');
		}
		return $this->$method();
	}

	/**
	 * Set object state
	 * 
	 * @param  array $options 
	 * @return Basico_Model_DadosProfissionais
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
	* Set departamento
	* 
	* @param String $departamento 
	* @return Basico_Model_Departamento
	*/
	public function setDepartamento($departamento)
	{
		$this->_departamento = Basico_UtilControllerController::retornaValorTipado($departamento, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get departamento
	* 
	* @return null|String
	*/
	public function getDepartamento()
	{
		return $this->_departamento;
	}
     
	/**
	* Set cargo
	* 
	* @param String $cargo 
	* @return Basico_Model_Cargo
	*/
	public function setCargo($cargo)
	{
		$this->_cargo = Basico_UtilControllerController::retornaValorTipado($cargo, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get cargo
	* 
	* @return null|String
	*/
	public function getCargo()
	{
		return $this->_cargo;
	}
     
	/**
	* Set funcao
	* 
	* @param String $funcao 
	* @return Basico_Model_Funcao
	*/
	public function setFuncao($funcao)
	{
		$this->_funcao = Basico_UtilControllerController::retornaValorTipado($funcao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get funcao
	* 
	* @return null|String
	*/
	public function getFuncao()
	{
		return $this->_funcao;
	}
     
	/**
	* Set atividadesDesenvolvidas
	* 
	* @param String $atividadesDesenvolvidas 
	* @return Basico_Model_AtividadesDesenvolvidas
	*/
	public function setAtividadesDesenvolvidas($atividadesDesenvolvidas)
	{
		$this->_atividadesDesenvolvidas = Basico_UtilControllerController::retornaValorTipado($atividadesDesenvolvidas, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get atividadesDesenvolvidas
	* 
	* @return null|String
	*/
	public function getAtividadesDesenvolvidas()
	{
		return $this->_atividadesDesenvolvidas;
	}
     
	/**
	* Set dataAdmissao
	* 
	* @param String $dataAdmissao 
	* @return Basico_Model_DataAdmissao
	*/
	public function setDataAdmissao($dataAdmissao)
	{
		$this->_dataAdmissao = Basico_UtilControllerController::retornaValorTipado($dataAdmissao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataAdmissao
	* 
	* @return null|String
	*/
	public function getDataAdmissao()
	{
		return $this->_dataAdmissao;
	}
     
	/**
	* Set dataDemissao
	* 
	* @param String $dataDemissao 
	* @return Basico_Model_DataDemissao
	*/
	public function setDataDemissao($dataDemissao)
	{
		$this->_dataDemissao = Basico_UtilControllerController::retornaValorTipado($dataDemissao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataDemissao
	* 
	* @return null|String
	*/
	public function getDataDemissao()
	{
		return $this->_dataDemissao;
	}
     
	/**
	* Set cargaHorariaSemanal
	* 
	* @param Integer $cargaHorariaSemanal 
	* @return Basico_Model_CargaHorariaSemanal
	*/
	public function setCargaHorariaSemanal($cargaHorariaSemanal)
	{
		$this->_cargaHorariaSemanal = Basico_UtilControllerController::retornaValorTipado($cargaHorariaSemanal, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get cargaHorariaSemanal
	* 
	* @return null|Integer
	*/
	public function getCargaHorariaSemanal()
	{
		return $this->_cargaHorariaSemanal;
	}
     
	/**
	* Set dedicacaoExclusiva
	* 
	* @param Boolean $dedicacaoExclusiva 
	* @return Basico_Model_DedicacaoExclusiva
	*/
	public function setDedicacaoExclusiva($dedicacaoExclusiva)
	{
		$this->_dedicacaoExclusiva = Basico_UtilControllerController::retornaValorTipado($dedicacaoExclusiva, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get dedicacaoExclusiva
	* 
	* @return null|Boolean
	*/
	public function getDedicacaoExclusiva()
	{
		return $this->_dedicacaoExclusiva;
	}
     
	/**
	* Set salarioBruto
	* 
	* @param Double $salarioBruto 
	* @return Basico_Model_SalarioBruto
	*/
	public function setSalarioBruto($salarioBruto)
	{
		$this->_salarioBruto = (Double) $salarioBruto;
		return $this;
	}

	/**
	* Get salarioBruto
	* 
	* @return null|Double
	*/
	public function getSalarioBruto()
	{
		return $this->_salarioBruto;
	}
     
	/**
	* Set descricao
	* 
	* @param String $descricao 
	* @return Basico_Model_Descricao
	*/
	public function setDescricao($descricao)
	{
		$this->_descricao = Basico_UtilControllerController::retornaValorTipado($descricao, TIPO_STRING, true);
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
	* Set pessoa
	* 
	* @param int $pessoa 
	* @return Basico_Model_Pessoa
	*/
	public function setPessoa($pessoa)
	{
		$this->_pessoa = Basico_UtilControllerController::retornaValorTipado($pessoa, TIPO_INTEIRO, true);
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
        $object = $model->find($this->_pessoa);
        return $object;
    }
    
	/**
	* Set pessoaJuridicaVinculo
	* 
	* @param int $pessoaJuridicaVinculo 
	* @return Basico_Model_PessoaJuridicaVinculo
	*/
	public function setPessoaJuridicaVinculo($pessoaJuridicaVinculo)
	{
		$this->_pessoaJuridicaVinculo = Basico_UtilControllerController::retornaValorTipado($pessoaJuridicaVinculo, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get pessoaJuridicaVinculo
	* 
	* @return null|int
	*/
	public function getPessoaJuridicaVinculo()
	{
		return $this->_pessoaJuridicaVinculo;
	}
 
    /**
     * Get pessoaJuridicaVinculo object
     * @return null|PessoaJuridica
     */
    public function getPessoaJuridicaVinculoObject()
    {
        $model = new Basico_Model_PessoaJuridicaVinculo();
        $object = $model->find($this->_pessoaJuridicaVinculo);
        return $object;
    }
    
	/**
	* Set vinculoEmpregaticio
	* 
	* @param int $vinculoEmpregaticio 
	* @return Basico_Model_VinculoEmpregaticio
	*/
	public function setVinculoEmpregaticio($vinculoEmpregaticio)
	{
		$this->_vinculoEmpregaticio = Basico_UtilControllerController::retornaValorTipado($vinculoEmpregaticio, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get vinculoEmpregaticio
	* 
	* @return null|int
	*/
	public function getVinculoEmpregaticio()
	{
		return $this->_vinculoEmpregaticio;
	}
 
    /**
     * Get vinculoEmpregaticio object
     * @return null|VinculoPessoaJuridica
     */
    public function getVinculoEmpregaticioObject()
    {
        $model = new Basico_Model_VinculoEmpregaticio();
        $object = $model->find($this->_vinculoEmpregaticio);
        return $object;
    }
    
	/**
	* Set regimeTrabalho
	* 
	* @param int $regimeTrabalho 
	* @return Basico_Model_RegimeTrabalho
	*/
	public function setRegimeTrabalho($regimeTrabalho)
	{
		$this->_regimeTrabalho = Basico_UtilControllerController::retornaValorTipado($regimeTrabalho, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get regimeTrabalho
	* 
	* @return null|int
	*/
	public function getRegimeTrabalho()
	{
		return $this->_regimeTrabalho;
	}
 
    /**
     * Get regimeTrabalho object
     * @return null|RegimeTrabalho
     */
    public function getRegimeTrabalhoObject()
    {
        $model = new Basico_Model_RegimeTrabalho();
        $object = $model->find($this->_regimeTrabalho);
        return $object;
    }

	/**
	* Set entry id
	* 
	* @param  int $id 
	* @return Basico_Model_DadosProfissionais
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
	* @return Basico_Model_DadosProfissionais
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_DadosProfissionaisMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DadosProfissionaisMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_DadosProfissionaisMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_DadosProfissionais
	*/
	public function find($id)
	{
		$this->getMapper()->find((Int) $id, $this);
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
	   
    /**
    * fetch list of entries satisfying the parameters but allowing a join
    *
    * @return array
    */
    public function fetchJoinList($joins=null, $where=null, $order=null, $count=null, $offset=null)
    {
        return $this->getMapper()->fetchJoinList($joins, $where, $order, $count, $offset);
    }
    
    /**
    * fetch joined list of entries that satisfy the parameters
    *
    * @return array
    */
    public function fetchJoin($jointable=null, $joinby=null, $where=null, $order=null)
    {
        return $this->getMapper()->fetchJoin($jointable, $joinby, $where, $order);
    }

}
