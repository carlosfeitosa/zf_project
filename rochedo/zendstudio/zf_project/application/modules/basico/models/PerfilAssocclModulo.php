<?php
/**
 * PerfilAssocclModulo model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PerfilAssocclModuloMapper
 * @subpackage Model
 */
class Basico_Model_PerfilAssocclModulo extends Abstract_RochedoModeloAssociacao
{
    /**
     * @var Integer
     */
    protected $_idModulo;
    /**
     * @var Integer
     */
    protected $_idPerfil;
    
    /**
    * Set idModulo
    * 
    * @param int $idModulo 
    * @return Basico_Model_Modulo
    */
    public function setIdModulo($idModulo)
    {
        $this->_idModulo = Basico_OPController_UtilOPController::retornaValorTipado($idModulo, TIPO_INTEIRO, true);
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
     * Get idModulo object
     * 
     * @return null|Modulo
     */
    public function getModuloObject()
    {
        $model = new Basico_Model_Modulo();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idModulo);
        return $object;
    }
    
    /**
    * Set idPerfil
    * 
    * @param int $idPerfil
    * @return Basico_Model_Perfil
    */
    public function setIdPerfil($idPerfil)
    {
        $this->_idPerfil = Basico_OPController_UtilOPController::retornaValorTipado($idPerfil, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idPerfil
    * 
    * @return null|int
    */
    public function getIdPerfil()
    {
        return $this->_idPerfil;
    }
 
    /**
     * Get idPerfil object
     * @return null|Perfil
     */
    public function getPerfilObject()
    {
        $model = new Basico_Model_Perfil();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idPerfil);
        return $object;
    }
    
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_PerfilAssocclModuloMapper instance if no mapper registered.
	* @return Basico_Model_PerfilAssocclModuloMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_PerfilAssocclModuloMapper);
	}	
}