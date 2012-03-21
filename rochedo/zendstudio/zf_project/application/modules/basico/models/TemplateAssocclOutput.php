<?php
/**
 * TemplateAssocclOutput model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_TemplateAssocclOutputMapper
 * @subpackage Model
 */
class Basico_Model_TemplateAssocclOutput extends Abstract_RochedoPersistentModeloAssociacao implements Interface_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */
	protected $_idTemplate;
	/**
     * @var Integer
     */
    protected $_idOutput;

	/**
	* Set idTemplate
	* 
	* @param int $idTemplate
	* 
	* @return Basico_Model_TemplateAssocclOutput
	*/
	public function setIdTemplate($idTemplate)
	{
		$this->_idTemplate = Basico_OPController_UtilOPController::retornaValorTipado($idTemplate,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idTemplate
	* 
	* @return null|int
	*/
	public function getIdTemplate()
	{
		return $this->_idTemplate;
	}
	
    /**
     * Get Template object
     * 
     * @return null|Basico_Model_Template
     */
    public function getTemplateObject()
    {
        $model = new Basico_Model_Template();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idTemplate);
        return $object;
    }
    
	/**
	* Set idOutput
	* 
	* @param int $idOutput
	* 
	* @return Basico_Model_Output
	*/
	public function setIdOutput($idOutput)
	{
		$this->_idOutput = Basico_OPController_UtilOPController::retornaValorTipado($idOutput,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idOutput
	* 
	* @return null|int
	*/
	public function getIdOutput()
	{
		return $this->_idOutput;
	}
	
    /**
     * Get Output object
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
	* Get data mapper
	*
	* Lazy loads Basico_Model_TemplateAssocclOutputMapper instance if no mapper registered.
	* 
	* @return Basico_Model_TemplateAssocclOutputMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_TemplateAssocclOutputMapper);
	} 
}