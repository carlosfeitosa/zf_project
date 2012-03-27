<?php
/**
 * DicionarioExpressao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DicionarioExpressaoMapper
 * @subpackage Model
 */
class Basico_Model_DicionarioExpressao extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
     * @var Integer
     */
    protected $_idCategoria;
	/**
	 * @var String
	 */
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_traducao;
	/**
	 * @var Boolean
	 */
	protected $_revisao;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
		
	/**
	* Set idCategoria
	* 
	* @param int $idCategoria 
	* @return Basico_Model_DicionarioExpressao
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
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_ConstanteTextual
	*/
	public function setConstanteTextual($constanteTextual)
	{
		$this->_constanteTextual = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextual, TIPO_STRING, true);
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
	* Set traducao
	* 
	* @param String $traducao 
	* @return Basico_Model_DicionarioExpressao
	*/
	public function setTraducao($traducao)
	{
		$this->_traducao = Basico_OPController_UtilOPController::retornaValorTipado($traducao, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get traducao
	* 
	* @return null|String
	*/
	public function getTraducao()
	{
		return $this->_traducao;
	}
	
	/**
	* Set revisao
	* 
	* @param Boolean $revisao 
	* @return Basico_Model_DicionarioExpressao
	*/
	public function setRevisao($revisao)
	{
		$this->_revisao = Basico_OPController_UtilOPController::retornaValorTipado($revisao, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get revisao
	* 
	* @return null|Boolean
	*/
	public function getRevisao()
	{
		return $this->_revisao;
	}

	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_DicionarioExpressao
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get ativo
	* 
	* @return null|Boolean
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_DicionarioExpressaoMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DicionarioExpressaoMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_DicionarioExpressaoMapper');
	}
}
