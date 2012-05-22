<?php
/**
 * DicionarioDadosAssocField model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DicionarioDadosAssocFieldMapper
 * @subpackage Model
 */
class Basico_Model_DicionarioDadosAssocField extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{	
	/**
	 * Referencia a classe Basico_Model_DicionarioDadosAssocTable
     * @var int
     */
    protected $_idAssocTable;
	/**
	 * @var String
	 */
	protected $_fieldname;
	/**
	 * @var String
	 */
	protected $_constanteTextual;
	/**
	 * @var String
	 */
	protected $_constanteTextualDescricao;
	/**
	 * @var String
	 */
	protected $_constanteTextualAlias;
	/**
	 * @var Boolean
	 */
	protected $_ativo;
	
	/**
	* Set idAssocTable
	* 
	* @param int $idAssocTable 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setIdAssocTable($idAssocTable)
	{
		$this->_idAssocTable = Basico_OPController_UtilOPController::retornaValorTipado($idAssocTable, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idAssocTable
	* 
	* @return null|int
	*/
	public function getIdAssocTable()
	{
		return $this->_idAssocTable;
	}
 
    /**
     * Get AssocTable object
     * @return null|AssocTable
     */
    public function getAssocTableObject()
    {
        $model = new Basico_Model_DicionarioDadosAssocTable();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAssocTable);
        return $object;
    }
    
	/**
	* Set fieldName
	* 
	* @param String $fieldName 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setFieldname($fieldName)
	{
		$this->_fieldname = Basico_OPController_UtilOPController::retornaValorTipado($fieldName, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get fieldName
	* 
	* @return null|String
	*/
	public function getFieldname()
	{
		return $this->_fieldname;
	}
     
	/**
	* Set constanteTextual
	* 
	* @param String $constanteTextual 
	* @return Basico_Model_DicionarioDadosAssocField
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
	* Set constanteTextualDescricao
	* 
	* @param String $constanteTextualDescricao 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setConstanteTextualDescricao($constanteTextualDescricao)
	{
		$this->_constanteTextualDescricao = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualDescricao, TIPO_STRING, true);
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
	* Set constanteTextualAlias
	* 
	* @param String $constanteTextualAlias 
	* @return Basico_Model_DicionarioDadosAssocField
	*/
	public function setConstanteTextualAlias($constanteTextualAlias)
	{
		$this->_constanteTextualAlias = Basico_OPController_UtilOPController::retornaValorTipado($constanteTextualAlias, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get constanteTextualAlias
	* 
	* @return null|String
	*/
	public function getConstanteTextualAlias()
	{
		return $this->_constanteTextualAlias;
	}
	
	/**
	* Set ativo
	* 
	* @param Boolean $ativo 
	* @return Basico_Model_DicionarioDadosAssocField
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
	* Lazy loads Basico_Model_DicionarioDadosAssocFieldMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DicionarioDadosAssocFieldMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_DicionarioDadosAssocFieldMapper');
	}
}
