<?php
/**
 * SequenciaAssocsqAcaoAplicacao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_SequenciaAssocsqAcaoAplicacaoMapper
 * @subpackage Model
 */

class Basico_Model_SequenciaAssocsqAcaoAplicacao extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * @var Integer
     */
    protected $_idCategoria;
    /**
     * @var Integer
     */
    protected $_idSequencia;
    /**
     * @var Integer
     */
    protected $_idAcaoAplicacao;
    /**
     * @var String
     */
    protected $_nome;
    /**
     * @var String
     */
    protected $_constanteTextual;
    /**
     * @var String
     */
    protected $_constanteTextualDescricao;
    /**
	 * @var Integer
	 */	
	protected $_passo;
	/**
	 * @var Integer
	 */
	protected $_ativo;
	
	/**
	* Set idCategoria
	* 
	* @param int $idCategoria
	* 
	* @return Basico_Model_SequenciaAssocsqAcaoAplicacao
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria,TIPO_INTEIRO,true);
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
     * Get Categoria object
     * 
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = $model->getMapper()->find($this->_idCategoria);
        return $object;
    }	
	
	/**
	* Set idSequencia
	* 
	* @param Integer $idSequencia
	* 
	* @return Basico_Model_SequenciaAssocsqAcaoAplicacao
	*/
	public function setIdSequencia($idSequencia)
	{
		$this->_idSequencia = Basico_OPController_UtilOPController::retornaValorTipado($idSequencia,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idSequencia
	* 
	* @return null|Integer
	*/
	public function getIdSequencia()
	{
		return $this->_idSequencia;
	}
	
    /**
     * Get Sequencia object
     * 
     * @return null|Basico_Model_Sequencia
     */
    public function getSequenciaObject()
    {
        $model = new Basico_Model_Sequencia();
        $object = $model->getMapper()->find($this->_idSequencia);
        return $object;
    }	    
    
   /**
	* Set idAcaoAplicacao
	* 
	* @param Integer $idAcaoAplicacao
	* 
	* @return Basico_Model_SequenciaAssocsqAcaoAplicacao
	*/
	public function setIdAcaoAplicacao($idAcaoAplicacao)
	{
		$this->_idAcaoAplicacao = Basico_OPController_UtilOPController::retornaValorTipado($idAcaoAplicacao,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idAcaoAplicacao
	* 
	* @return null|Integer
	*/
	public function getIdAcaoAplicacao()
	{
		return $this->_idAcaoAplicacao;
	}
	
    /**
     * Get Acaoaplicacao object
     * 
     * @return null|Basico_Model_AcaoAplicacao
     */
    public function getAcaoAplicacaoObject()
    {
        $model = new Basico_Model_AcaoAplicacao();
        $object = $model->getMapper()->find($this->_idAcaoAplicacao);
        return $object;
    }	
    
	/**
	* Set nome
	* 
	* @param String $nome
	* 
	* @return Basico_Model_SequenciaAssocsqAcaoAplicacao
	*/
	public function setNome($nome)
	{
		$this->_nome = Basico_OPController_UtilOPController::retornaValorTipado($nome,TIPO_STRING,true);
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
	* Set constanteTextual
	* 
	* @param String $constanteTextual
	* 
	* @return Basico_Model_SequenciaAssocsqAcaoAplicacao
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constanteTextual
	* 
	* @return null|String
	*/
	public function getConstanteTextual()
	{
		return $this->_constanteTextual;
	}	
	
	/**
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao
	* 
	* @return Basico_Model_SequenciaAssocsqAcaoAplicacao
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get constanteTextualDescricao
	* 
	* @return null|String
	*/
	public function getConstanteTextualDescricao()
	{
		return $this->_constanteTextualDescricao;
	}

   /**
	* Set passo
	* 
	* @param Integer $passo
	* 
	* @return Basico_Model_SequenciaAssocsqAcaoAplicacao
	*/
	public function setIdPasso($passo)
	{
		$this->_passo = Basico_OPController_UtilOPController::retornaValorTipado($passo,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get passo
	* 
	* @return null|Integer
	*/
	public function getPasso()
	{
		return $this->_passo;
	}	
	
   /**
	* Set ativo
	* 
	* @param Integer $ativo
	* 
	* @return Basico_Model_SequenciaAssocsqAcaoAplicacao
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|Integer
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}	
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_SequenciaAssocsqAcaoAplicacaoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_SequenciaAssocsqAcaoAplicacaoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_SequenciaAssocsqAcaoAplicacaoMapper');
	}	
}