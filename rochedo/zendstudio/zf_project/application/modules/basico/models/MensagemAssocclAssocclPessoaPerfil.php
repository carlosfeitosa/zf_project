<?php
/**
 * MensagemAssocclAssocclPessoaPerfil model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_MensagemAssocclAssocclPessoaPerfilMapper
 * @subpackage Model
 */
class Basico_Model_MensagemAssocclAssocclPessoaPerfil extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * Referência a classe Basico_Model_Categoria
     * @var int
     */
    protected $_idCategoria;
    /**
     * Referência a classe Basico_Model_Mensagem
     * @var int
     */
    protected $_idMensagem;
	/**
	 * Referência a classe Basico_Model_PessoaAssocclPerfil
     * @var int
     */
    protected $_idAssocclPerfil;
    
	/**
    * Set idCategoria
    * 
    * @param int $ 
    * @return Basico_Model_idCategoria
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
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_categoria);
        return $object;
    }
    
	/**
    * Set idMensagem
    * 
    * @param int $ 
    * @return Basico_Model_idMensagem
    */
    public function setIdMensagem($idMensagem)
    {
        $this->_idMensagem = Basico_OPController_UtilOPController::retornaValorTipado($idMensagem, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idMensagem
    * 
    * @return null|int
    */
    public function getIdMensagem()
    {
        return $this->_idMensagem;
    }
    
	/**
     * Get mensagem object
     * @return null|Basico_Model_Mensagem
     */
    public function getMensagemObject()
    {
        $model = new Basico_Model_Mensagem();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idMensagem);
        return $object;
    }
    
    /**
    * Set idAssocclPerfil
    * 
    * @param int $ 
    * @return Basico_Model_MensagemAssocclAssocclPessoaPerfil
    */
    public function setIdAssocclPerfil($idAssocclPerfil)
    {
        $this->_idAssocclPerfil = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclPerfil, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idAssocclPerfil
    * 
    * @return null|int
    */
    public function getIdAssocclPerfil()
    {
        return $this->_idAssocclPerfil;
    }
 
    /**
     * Get assocclPerfil object
     * @return null|Basico_Model_PessoaAssocclPerfil
     */
    public function getAssocclPerfilObject()
    {
        $model = new Basico_Model_PessoaAssocclPerfil();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAssocclPerfil);
        return $object;
    }
    
    /**
    * Get data mapper
    *
    * Lazy loads Basico_Model_PessoasPerfisMensagemCategoriaMapper instance if no mapper registered.
    * 
    * @return Basico_Model_PessoasPerfisMensagemCategoriaMapper
    */
    public function getMapper()
    {
        return parent::getMapper(Basico_Model_MensagemAssocclAssocclPessoaPerfilMapper);
    }
}
