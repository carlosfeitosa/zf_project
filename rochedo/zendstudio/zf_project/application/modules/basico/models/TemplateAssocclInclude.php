<?php
/**
 * TemplateAssocclInclude model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_TemplateAssocclIncludeMapper
 * @subpackage Model
 */
class Basico_Model_TemplateAssocclInclude extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * Referencia a classe Basico_Model_Template
     * @var int
     */
    protected $_idTemplate;
    /**
     * Referencia a classe Basico_Model_Include
     * @var Int
     */
    protected $_idInclude;
    /**
     * @var Int
     */
    protected $_ordem;
    
	/**
    * Set entry idTemplate
    * 
    * @param  int $idTemplate 
    * @return Basico_Model_TemplateAssocclInclude
    */
    public function setIdTemplate($idTemplate)
    {
        $this->_idTemplate = Basico_OPController_UtilOPController::retornaValorTipado($idTemplate, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idTemplate
    * 
    * @return null|int
    */
    public function getIdTemplate()
    {
        return $this->_idTemplate;
    }
    
	/**
     * Get Template object
     * @return null|Basico_Model_Template
     */
    public function getTemplateObject()
    {
        $model = new Basico_Model_Template();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idTemplate);
        return $object;
    }
    
	/**
    * Set entry idInclude
    * 
    * @param  int $idInclude 
    * @return Basico_Model_TemplateAssocclInclude
    */
    public function setIdInclude($idInclude)
    {
        $this->_idInclude = Basico_OPController_UtilOPController::retornaValorTipado($idInclude, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Retrieve entry idInclude
    * 
    * @return null|int
    */
    public function getIdInclude()
    {
        return $this->_idInclude;
    }
    
	/**
     * Get Include object
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
    * @return Basico_Model_TemplateAssocclInclude
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
    * Lazy loads Basico_Model_TemplateAssocclIncludeMapper instance if no mapper registered.
    * 
    * @return Basico_Model_TemplateAssocclIncludeMapper
    */
    public function getMapper()
    {
        return parent::getMapper('Basico_Model_TemplateAssocclIncludeMapper');
    }
}
