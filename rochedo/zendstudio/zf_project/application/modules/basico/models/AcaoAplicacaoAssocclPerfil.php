<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * AcaoAplicacaoAssocclPerfil model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AcaoAplicacaoAssocclPerfilMapper
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacaoAssocclPerfil extends Abstract_RochedoPersistentModeloAssociacao implements Interface_RochedoPersistentModeloGenerico
{
    /**
     * @var AcaoAplicacao
     */
    protected $_idAcaoAplicacao;
    /**
     * @var Perfil
     */
    protected $_idPerfil;   
    
    /**
    * Set idAcaoAplicacao
    * 
    * @param int $idAcaoAplicacao
    * @return Basico_Model_AcaoAplicacaoAssocclPerfil
    */
    public function setIdAcaoAplicacao($idAcaoAplicacao)
    
    {
        $this->_idAcaoAplicacao = Basico_OPController_UtilOPController::retornaValorTipado($idAcaoAplicacao, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idAcaoAplicacao
    * 
    * @return null|int
    */
    public function getIdAcaoAplicacao()
    {
        return $this->_idAcaoAplicacao;
    }
 
    /**
     * Get AcaoAplicacao object
     * @return null|Basico_Model_AcaoAplicacao
     */
    public function getAcaoAplicacaoObject()
    {
        $model = new Basico_Model_AcaoAplicacao();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAcaoAplicacao);
        return $object;
    }
        
    /**
    * Set idPerfil
    * 
    * @param int $idPerfil 
    * @return Basico_Model_AcaoAplicacaoAssocclPerfil
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
     * Get Perfil object
     * @return null|Basico_Model_Perfil
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
	* Lazy loads Basico_Model_AcaoAplicacaoAssocclPerfilMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AcaoAplicacaoAssocclPerfilMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_AcaoAplicacaoAssocclPerfilMapper);
	}    
}