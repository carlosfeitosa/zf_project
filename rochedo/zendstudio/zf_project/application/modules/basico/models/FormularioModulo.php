<?php
/**
 * FormularioModulo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_FormularioModuloMapper
 * @subpackage Model
 */
class Basico_Model_FormularioModulo extends Abstract_RochedoPersistentModeloAssociacao implements Interface_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */
	protected $_idModulo;
	/**
     * @var Integer
     */
    protected $_idFormulario;

	/**
	* Set idModulo
	* 
	* @param int $idModulo
	* 
	* @return Basico_Model_FormularioModulo
	*/
	public function setIdModulo($idModulo)
	{
		$this->_idModulo = Basico_OPController_UtilOPController::retornaValorTipado($idModulo,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idModulo
	* 
	* @return null|int
	*/
	public function getIdModulo()
	{
		return $this->_idModulo;
	}
	
    /**
     * Get Modulo object
     * 
     * @return null|Basico_Model_Modulo
     */
    public function getModuloObject()
    {
        $model = new Basico_Model_Modulo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idModulo);
        return $object;
    }
    
	/**
	* Set idFormulario
	* 
	* @param int $idFormulario
	* 
	* @return Basico_Model_FormularioModulo
	*/
	public function setIdFormulario($idFormulario)
	{
		$this->_idFormulario = Basico_OPController_UtilOPController::retornaValorTipado($idFormulario,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idFormulario
	* 
	* @return null|int
	*/
	public function getIdFormulario()
	{
		return $this->_idFormulario;
	}
	
    /**
     * Get Formulario object
     * 
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
	* Lazy loads Basico_Model_FormularioModuloMapper instance if no mapper registered.
	* 
	* @return Basico_Model_FormularioModuloMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_FormularioModuloMapper);
	} 
}