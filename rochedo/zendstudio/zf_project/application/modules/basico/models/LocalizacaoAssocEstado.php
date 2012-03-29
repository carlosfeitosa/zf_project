<?php
/**
 * LocalizacaoAssocEstado model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_LocalizacaoAssocEstadoMapper
 * @subpackage Model
 */
class Basico_Model_LocalizacaoAssocEstado extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
     * @var Integer
     */
    protected $_idCategoria;
    /**
     * @var Integer
     */
    protected $_idEstadoPai;
    /**
     * @var Integer
     */
    protected $_idPais;
    /**
     * @var Integer
     */
    protected $_nivel;
	/**
	 * @var String
	 */
	protected $_nome;
	/**
	 * @var String
	 */
	protected $_sigla;
	/**
	 * @var String
	 */
	protected $_codigoDdd;
    /**
     * @var Boolean
     */
    protected $_ativo;

	/**
	* Set idCategoria
	* 
	* @param int $idCategoria 
	* @return Basico_Model_LocalizacaoAssocEstado
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idCategoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}
 
    /**
     * Get categoria object
     * @return null|Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }

	/**
	* Set idEstadoPai
	* 
	* @param int $idEstadoPai 
	* @return Basico_Model_LocalizacaoAssocEstado
	*/
	public function setIdEstadoPai($idEstadoPai)
	{
		$this->_idEstadoPai = Basico_OPController_UtilOPController::retornaValorTipado($idEstadoPai, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idEstadoPai
	* 
	* @return null|int
	*/
	public function getIdEstadoPai()
	{
		return $this->_idEstadoPai;
	}
 
    /**
     * Get EstadoPai object
     * @return null|Categoria
     */
    public function getEstadoPaiObject()
    {
        $model = new Basico_Model_LocalizacaoAssocEstado();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idEstadoPai);
        return $object;
    }

    /**
	* Set idPais
	* 
	* @param int $idPais 
	* @return Basico_Model_LocalizacaoAssocEstado
	*/
	public function setIdPais($idPais)
	{
		$this->_idPais = Basico_OPController_UtilOPController::retornaValorTipado($idPais, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idPais
	* 
	* @return null|int
	*/
	public function getIdPais()
	{
		return $this->_idPais;
	}
 
    /**
     * Get Pais object
     * @return null|Basico_Model_LocalizacaoPais
     */
    public function getPaisObject()
    {
        $model = new Basico_Model_LocalizacaoPais();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idPais);
        return $object;
    }

    /**
	* Set nivel
	* 
	* @param int $nivel 
	* @return Basico_Model_LocalizacaoAssocEstado
	*/
	public function setNivel($nivel)
	{
		$this->_nivel = Basico_OPController_UtilOPController::retornaValorTipado($nivel, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get nivel
	* 
	* @return null|int
	*/
	public function getNivel()
	{
		return $this->_nivel;
	}

	/**
	* Set nome
	* 
	* @param String $nome 
	* @return Basico_Model_LocalizacaoAssocEstado
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
	* Set sigla
	* 
	* @param String $sigla 
	* @return Basico_Model_LocalizacaoAssocEstado
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
	* Set codigoDdd
	* 
	* @param String $codigoDdd 
	* @return Basico_Model_CodigoDdd
	*/
	public function setCodigoDdd($codigoDdd)
	{
		$this->_codigoDdd = Basico_OPController_UtilOPController::retornaValorTipado($codigoDdd, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get codigoDdd
	* 
	* @return null|String
	*/
	public function getCodigoDdd()
	{
		return $this->_codigoDdd;
	}

	/**
	* Set ativo
	* 
	* @param int $ativo 
	* @return Basico_Model_LocalizacaoAssocEstado
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|int
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_LocalizacaoAssocEstadoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_LocalizacaoAssocEstadoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_LocalizacaoAssocEstadoMapper');
	}
}