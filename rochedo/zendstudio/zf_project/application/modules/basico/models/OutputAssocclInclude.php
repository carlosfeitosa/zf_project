<?php
/**
 * OutputAssocclInclude model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_OutputAssocclIncludeMapper
 * @subpackage Model
 */
class Basico_Model_OutputAssocclInclude extends Abstract_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	* Referência a classe Basico_Model_Output
	* @var int
	*/
	protected $_idOutput;
	/**
	* Referência a classe Basico_Model_Include
	* @var int
	*/
	protected $_idInclude;
	/**
	* @var int
	*/
	protected $_ordem;
	
	/**
	* Set entry id output
	* 
	* @param  int $idOutput
	* @return Basico_Model_OutputAssocclInclude
	*/
	public function setIdOutput($idOutput)
	{
		$this->_idOutput = Basico_OPController_UtilOPController::retornaValorTipado($idOutput, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry id output
	* 
	* @return null|int
	*/
	public function getIdOutput()
	{
		return $this->_idOutput;
	}

    /**
     * Get output object
     * 
     * @return null|Basico_Model_Output
     */
    public function getOutputObject()
    {
        $model = new Basico_Model_Output();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idOutput);
        return $object;
    }

	/**
	* Set entry id include
	* 
	* @param  int $idInclude
	* @return Basico_Model_OutputAssocclInclude
	*/
	public function setIdInclude($idInclude)
	{
		$this->_idInclude = Basico_OPController_UtilOPController::retornaValorTipado($idInclude, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry id include
	* 
	* @return null|int
	*/
	public function getIdInclude()
	{
		return $this->_idInclude;
	}

    /**
     * Get include object
     * 
     * @return null|Basico_Model_Include
     */
    public function getIncludeObject()
    {
        $model = new Basico_Model_Include();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idInclude);
        return $object;
    }

	/**
	* Set entry ordem
	* 
	* @param  int $ordem
	* @return Basico_Model_OutputAssocclInclude
	*/
	public function setOrdem($ordem)
	{
		$this->_ordem = Basico_OPController_UtilOPController::retornaValorTipado($ordem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry ordem
	* 
	* @return null|int
	*/
	public function getOrdem()
	{
		return $this->_ordem;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_OutputAssocclIncludeMapper instance if no mapper registered.
	* 
	* @return Basico_Model_OutputAssocclIncludeMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_OutputAssocclIncludeMapper);
	}
}
