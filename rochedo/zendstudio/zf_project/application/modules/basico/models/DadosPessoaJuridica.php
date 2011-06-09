<?php
/**
 * DadosPessoaJuridica model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DadosPessoaJuridicaMapper
 * @subpackage Model
 */
class Basico_Model_DadosPessoaJuridica
{
	/**
	* @var int
	*/
	protected $_id;

	/**
	 * @var Basico_Model_DadosPessoaJuridicaMapper
	 */
	protected $_mapper;

	/**
	 * @var String
	 */
	protected $_razaoSocial;
	/**
	 * @var String
	 */
	protected $_nomeFantasia;
	/**
	 * @var String
	 */
	protected $_sigla;
	/**
	 * @var String
	 */
	protected $_codigoAcesso;
	/**
	 * @var Date
	 */
	protected $_dataConstituicao;
	/**
	 * @var String
	 */
	protected $_historico;
	/**
	 * @var String
	 */
	protected $_infraestrutura;
	/**
	 * @var String
	 */
	protected $_equipePD;
	/**
	 * @var String
	 */
	protected $_mercado;
	/**
	 * @var Double
	 */
	protected $_capitalSocial;
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
	 * @return Basico_Model_DadosPessoaJuridica
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
	* Set razaoSocial
	* 
	* @param String $razaoSocial 
	* @return Basico_Model_RazaoSocial
	*/
	public function setRazaoSocial($razaoSocial)
	{
		$this->_razaoSocial = Basico_OPController_UtilOPController::retornaValorTipado($razaoSocial, TIPO_STRING, true) ;
		return $this;
	}

	/**
	* Get razaoSocial
	* 
	* @return null|String
	*/
	public function getRazaoSocial()
	{
		return $this->_razaoSocial;
	}
     
	/**
	* Set nomeFantasia
	* 
	* @param String $nomeFantasia 
	* @return Basico_Model_NomeFantasia
	*/
	public function setNomeFantasia($nomeFantasia)
	{
		$this->_nomeFantasia = Basico_OPController_UtilOPController::retornaValorTipado($nomeFantasia, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get nomeFantasia
	* 
	* @return null|String
	*/
	public function getNomeFantasia()
	{
		return $this->_nomeFantasia;
	}
     
	/**
	* Set sigla
	* 
	* @param String $sigla 
	* @return Basico_Model_Sigla
	*/
	public function setSigla($sigla)
	{
		$this->_sigla = Basico_OPController_UtilOPController::retornaValorTipado($sigla, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get sigla
	* 
	* @return null|String
	*/
	public function getSigla()
	{
		return $this->_sigla;
	}
     
	/**
	* Set codigoAcesso
	* 
	* @param String $codigoAcesso 
	* @return Basico_Model_CodigoAcesso
	*/
	public function setCodigoAcesso($codigoAcesso)
	{
		$this->_codigoAcesso = Basico_OPController_UtilOPController::retornaValorTipado($codigoAcesso, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get codigoAcesso
	* 
	* @return null|String
	*/
	public function getCodigoAcesso()
	{
		return $this->_codigoAcesso;
	}
     
	/**
	* Set dataConstituicao
	* 
	* @param String $dataConstituicao 
	* @return Basico_Model_DataConstituicao
	*/
	public function setDataConstituicao($dataConstituicao)
	{
		$this->_dataConstituicao = Basico_OPController_UtilOPController::retornaValorTipado($dataConstituicao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get dataConstituicao
	* 
	* @return null|String
	*/
	public function getDataConstituicao()
	{
		return $this->_dataConstituicao;
	}
     
	/**
	* Set historico
	* 
	* @param String $historico 
	* @return Basico_Model_Historico
	*/
	public function setHistorico($historico)
	{
		$this->_historico = Basico_OPController_UtilOPController::retornaValorTipado($historico, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get historico
	* 
	* @return null|String
	*/
	public function getHistorico()
	{
		return $this->_historico;
	}
     
	/**
	* Set infraestrutura
	* 
	* @param String $infraestrutura 
	* @return Basico_Model_Infraestrutura
	*/
	public function setInfraestrutura($infraestrutura)
	{
		$this->_infraestrutura = Basico_OPController_UtilOPController::retornaValorTipado($infraestrutura, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get infraestrutura
	* 
	* @return null|String
	*/
	public function getInfraestrutura()
	{
		return $this->_infraestrutura;
	}
     
	/**
	* Set equipePD
	* 
	* @param String $equipePD 
	* @return Basico_Model_EquipePD
	*/
	public function setEquipePD($equipePD)
	{
		$this->_equipePD = Basico_OPController_UtilOPController::retornaValorTipado($equipePD, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get equipePD
	* 
	* @return null|String
	*/
	public function getEquipePD()
	{
		return $this->_equipePD;
	}
     
	/**
	* Set mercado
	* 
	* @param String $mercado 
	* @return Basico_Model_Mercado
	*/
	public function setMercado($mercado)
	{
		$this->_mercado = Basico_OPController_UtilOPController::retornaValorTipado($equipePD, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get mercado
	* 
	* @return null|String
	*/
	public function getMercado()
	{
		return $this->_mercado;
	}
     
	/**
	* Set capitalSocial
	* 
	* @param Double $capitalSocial 
	* @return Basico_Model_CapitalSocial
	*/
	public function setCapitalSocial($capitalSocial)
	{
		$this->_capitalSocial = Basico_OPController_UtilOPController::retornaValorTipado($capitalSocial, TIPO_FLOAT, true);
		return $this;
	}

	/**
	* Get capitalSocial
	* 
	* @return null|Double
	*/
	public function getCapitalSocial()
	{
		return $this->_capitalSocial;
	}
     
	/**
	* Set dataCriacao
	* 
	* @param String $dataCriacao 
	* @return Basico_Model_DataCriacao
	*/
	public function setDataCriacao($dataCriacao)
	{
		$this->_dataCriacao = Basico_OPController_UtilOPController::retornaValorTipado($dataCriacao, TIPO_STRING, true);
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
	* @return Basico_Model_DataUltimaModificacao
	*/
	public function setDataUltimaModificacao($dataUltimaModificacao)
	{
		$this->_dataUltimaModificacao = Basico_OPController_UtilOPController::retornaValorTipado($dataUltimaModificacao, TIPO_STRING, true);
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
	* @return Basico_Model_AreaConhecimento
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
	* @return Basico_Model_DadosPessoaJuridica
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
	* @return Basico_Model_DadosPessoaJuridica
	*/
	public function setMapper($mapper)
	{
		$this->_mapper = $mapper;
		return $this;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_DadosPessoaJuridicaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DadosPessoaJuridicaMapper
	*/
	public function getMapper()
	{
		if (null === $this->_mapper) {
			$this->setMapper(new Basico_Model_DadosPessoaJuridicaMapper());
		}
		return $this->_mapper;
	}

	/**
	* Find an entry
	*
	* Resets entry state if matching id found.
	* 
	* @param  int $id 
	* @return Basico_Model_DadosPessoaJuridica
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