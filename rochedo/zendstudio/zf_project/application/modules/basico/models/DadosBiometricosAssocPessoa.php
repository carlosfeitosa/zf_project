<?php
/**
 * DadosBiometricosAssocPessoa model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DadosBiometricosAssocPessoaMapper
 * @subpackage Model
 */
class Basico_Model_DadosBiometricosAssocPessoa extends Abstract_RochedoPersistentModeloDados implements Interface_RochedoPersistentModeloGenerico
{
    /**
     * @var Integer
     */
    protected $_idDadosBiometricos;   
     /**
     * @var Integer
     */
    protected $_idCategoriaSexo;
	/**
	 * @var Integer
	 */
	protected $_idCategoriaRaca;
	/**
	 * @var String
	 */
	protected $_idCategoriaTipoSanguineo;
	/**
	 * @var Float
	 */
	protected $_altura;	
	/**
	 * @var Float
	 */
	protected $_peso;		
	/**
	 * @var String
	 */
	protected $_historicoMedico;

	/**
	* Set idDadosBiometricos
	* 
	* @param int $idDadosBiometricos
	*  
	* @return Basico_Model_DadosBiometricos
	*/
	public function setIdDadosBiometricos($idDadosBiometricos)
	{
		$this->_idDadosBiometricos = Basico_OPController_UtilOPController::retornaValorTipado($idDadosBiometricos,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idDadosBiometricos
	* 
	* @return null|int
	*/
	public function getIdDadosBiometricos()
	{
		return $this->_idDadosBiometricos;
	}
 
    /**
     * Get DadosBiometricos object
     * 
     * @return null|Basico_Model_DadosBiometricos
     */
    public function getDadosBiometricosObject()
    {
        $model = new Basico_Model_DadosBiometricos();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idDadosBiometricos);
        return $object;
    }
    	
	/**
	* Set idCategoriaSexo
	* 
	* @param int $idCategoriaSexo
	* 
	* @return Basico_Model_DadosBiometricosAssocPessoa
	*/
	public function setIdCategoriaSexo($idCategoriaSexo)
	{
		$this->_idCategoriaSexo = Basico_OPController_UtilOPController::retornaValorTipado($idCategoriaSexo,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idCategoriaSexo
	* 
	* @return null|int
	*/
	public function getIdCategoriaSexo()
	{
		return $this->_idCategoriaSexo;
	}
	
    /**
     * Get Categoria object
     * 
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaSexoObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoriaSexo);
        return $object;
    }

	/**
	* Set idCategoriaRaca
	* 
	* @param int $idCategoriaRaca
	* 
	* @return Basico_Model_DadosBiometricosAssocPessoa
	*/
	public function setIdCategoriaRaca($idCategoriaRaca)
	{
		$this->_idCategoriaRaca = Basico_OPController_UtilOPController::retornaValorTipado($idCategoriaRaca,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idCategoriaRaca
	* 
	* @return null|int
	*/
	public function getIdCategoriaRaca()
	{
		return $this->_idCategoriaRaca;
	}
	
    /**
     * Get Categoria object
     * 
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaRacaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoriaRaca);
        return $object;
    }
    
	/**
	* Set idCategoriaTipoSanguineo
	* 
	* @param int $idCategoriaTipoSanguineo
	* 
	* @return Basico_Model_DadosBiometricosAssocPessoa
	*/
	public function setIdCategoriaTipoSanguineo($idCategoriaTipoSanguineo)
	{
		$this->_idCategoriaTipoSanguineo = Basico_OPController_UtilOPController::retornaValorTipado($idCategoriaTipoSanguineo,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idCategoriaTipoSanguineo
	* 
	* @return null|int
	*/
	public function getIdCategoriaTipoSanguineo()
	{
		return $this->_idCategoriaTipoSanguineo;
	}
	
    /**
     * Get Categoria object
     * 
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaTipoSanguineoObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoriaTipoSanguineo);
        return $object;
    }
    
	/**
	* Set altura
	* 
	* @param Integer $altura
	* 
	* @return Basico_Model_DadosBiometricosAssocPessoa
	*/
	public function setAltura($altura)
	{
		$this->_altura = Basico_OPController_UtilOPController::retornaValorTipado($altura,TIPO_FLOAT,true);
		return $this;
	}

	/**
	* Get altura
	* 
	* @return null|Float
	*/
	public function getAltura()
	{
		return $this->_altura;
	}
     
	/**
	* Set peso
	* 
	* @param String $peso
	* 
	* @return Basico_Model_DadosBiometricosAssocPessoa
	*/
	public function setNome($peso)
	{
		$this->_peso = Basico_OPController_UtilOPController::retornaValorTipado($peso,TIPO_FLOAT,true);
		return $this;
	}

	/**
	* Get peso
	* 
	* @return null|Float
	*/
	public function getPeso()
	{
		return $this->_peso;
	}
	
	/**
	* Set historicoMedico
	* 
	* @param String $historicoMedico
	* 
	* @return Basico_Model_Categoria
	*/
	public function setHistoricoMedico($historicoMedico)
	{
		$this->_historicoMedico = Basico_OPController_UtilOPController::retornaValorTipado($historicoMedico,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get historicoMedico
	* 
	* @return null|String
	*/
	public function getHistoricoMedico()
	{
		return $this->_historicoMedico;
	}
	    
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_DadosBiometricosAssocPessoaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DadosBiometricosAssocPessoaMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_DadosBiometricosAssocPessoaMapper);
	} 
}