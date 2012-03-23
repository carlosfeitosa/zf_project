<?php
/**
 * AcaoAplicacaoAssocclMetodoValidacao model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_AcaoAplicacaoAssocclMetodoValidacaoMapper
 * @subpackage Model
 */
class Basico_Model_AcaoAplicacaoAssocclMetodoValidacao extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * @var int
     */
    protected $_idAcaoAplicacao;
    /**
     * @var int
     */
    protected $_idMetodoValidacao;
    /**
     * @var int
     */
    protected $_idPerfil;

    /**
    * Set idAcaoAplicacao
    * 
    * @param int $idAcaoAplicacao
    * @return Basico_Model_AcaoAplicacaoAssocclMetodoValidacao
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
    * Set idMetodoValidacao
    * 
    * @param int $idMetodoValidacao
    * @return Basico_Model_AcaoAplicacaoAssocclMetodoValidacao
    */
    public function setIdMetodoValidacao($idMetodoValidacao)
    {
        $this->_idMetodoValidacao = Basico_OPController_UtilOPController::retornaValorTipado($idMetodoValidacao, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idMetodoValidacao
    * 
    * @return null|int
    */
    public function getIdMetodoValidacao()
    {
        return $this->_idMetodoValidacao;
    }

    /**
     * Get MetodoValidacao object
     * @return null|Basico_Model_MetodoValidacao
     */
    public function getMetodoValidacaoObject()
    {
        $model = new Basico_Model_MetodoValidacao();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idMetodoValidacao);
        return $object;
    }

    /**
    * Set idPerfil
    * 
    * @param int $idPerfil
    * @return Basico_Model_AcaoAplicacaoAssocclMetodoValidacao
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
     * Get perfil object
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
    * Lazy loads Basico_Model_AcaoAplicacaoAssocclMetodoValidacaoMapper instance if no mapper registered.
    * 
    * @return Basico_Model_AcaoAplicacaoAssocclMetodoValidacaoMapper
    */
    public function getMapper()
    {
    	return parent::getMapper(Basico_Model_AcaoAplicacaoAssocclMetodoValidacaoMapper);
    }
}