<?php
/**
 * FormularioAssocclTemplate model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioAssocclTemplateMapper
 * @subpackage Model
 */
class Basico_Model_FormularioAssocclTemplate extends Abstract_RochedoModeloAssociacao
{
    /**
     * @var idTemplate
     */
    protected $_idTemplate;
    /**
     * @var idFormulario
     */
    protected $_idFormulario;
  
    /**
    * Set id template
    * 
    * @param int $idTemplate 
    * @return Basico_Model_FormularioAssocclTemplate
    */
    public function setIdTemplate($idTemplate)
    {
        $this->_idTemplate = Basico_OPController_UtilOPController::retornaValorTipado($idTemplate, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get id template
    * 
    * @return null|int
    */
    public function getIdTemplate()
    {
        return $this->_idTemplate;
    }
 
    /**
     * Get template object
     * @return null|Basico_Model_Template
     */
    public function getTemplateObject()
    {
        $model = new Basico_Model_Template();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idTemplate);
        return $object;
    }
    
    /**
    * Set id formulario
    * 
    * @param int $idFormulario 
    * @return Basico_Model_FormularioAssocclTemplate
    */
    public function setIdFormulario($idFormulario)
    {
        $this->_idFormulario = Basico_OPController_UtilOPController::retornaValorTipado($idFormulario, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get id formulario
    * 
    * @return null|int
    */
    public function getIdFormulario()
    {
        return $this->_idFormulario;
    }
 
    /**
     * Get formulario object
     * @return null|Basico_Model_Formulario
     */
    public function getFormularioObject()
    {
        $model = new Basico_Model_Formulario();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idFormulario);
        return $object;
    }
      
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_FormularioAssocclTemplate instance if no mapper registered.
    * 
    * @return Basico_Model_FormularioAssocclTemplateMapper
    */
    public function getMapper()
    {
        return parent::getMapper(Basico_Model_FormularioAssocclTemplateMapper);
    }
}