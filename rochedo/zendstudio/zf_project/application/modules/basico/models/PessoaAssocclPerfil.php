<?php
/**
 * PessoaAssocclPerfil model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoaAssocclPerfilMapper
 * @subpackage Model
 */
class Basico_Model_PessoaAssocclPerfil extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * @var Int
     */
    protected $_idPessoa;
    /**
     * @var Int
     */
    protected $_idPerfil;
    /**
	 * @var Bool
	 */
	protected $_ativo;    
    
    /**
    * Set idPessoa
    * 
    * @param int $idPessoa 
    * 
    * @return Basico_Model_Pessoa
    */
    public function setIdPessoa($idPessoa)
    {
        $this->_idPessoa = Basico_OPController_UtilOPController::retornaValorTipado($idPessoa, TIPO_INTEIRO, true);
        return $this;
    }

    /**
    * Get idPessoa
    * 
    * @return null|int
    */
    public function getIdPessoa()
    {
        return $this->_idPessoa;
    }
 
    /**
     * Get pessoa object
     * 
     * @return null|Basico_Model_Pessoa
     */
    public function getPessoaObject()
    {
        $model = new Basico_Model_Pessoa();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idPessoa);
        return $object;
    }
    
    /**
    * Set idPerfil
    * 
    * @param int $idPerfil 
    * 
    * @return Basico_Model_PessoaAssocclPerfil
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
     * 
     * @return null|Basico_Model_Perfil
     */
    public function getPerfilObject()
    {
        $model = new Basico_Model_Perfil();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idPerfil);
        return $object;
    }

   /**
	* Set ativo
	* 
	* @param Bool $ativo 
	* 
	* @return Basico_Model_PessoaAssocclPerfil
	*/
	public function setAtivo($ativo)
	{
		$this->_ativo = Basico_OPController_UtilOPController::retornaValorTipado($ativo, TIPO_STRING, true);
		return $this;
	}

   /**
	* Get ativo
	* 
	* @return null|Bool
	*/
	public function getAtivo()
	{
		return $this->_ativo;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_PessoaAssocclPerfilMapper instance if no mapper registered.
	* 
	* @return Basico_Model_PessoaAssocclPerfilMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_PessoaAssocclPerfilMapper');
	}		        
}