<?php
/**
 * Pessoa model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_PessoaMapper
 * @subpackage Model
 */
class Basico_Model_Pessoa extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */
	protected $_idPerfilPadrao;
	/**
	 * @var Integer
	 */
	protected $_idTelefoneDefault;
	/**
	 * @var Integer
	 */
	protected $_idEmailDefault;
	/**
	 * @var Integer
	 */
	protected $_idEnderecoDefault;
	/**
	 * @var Integer
	 */
	protected $_idEnderecoCorrespondencia;
	/**
	 * @var Integer
	 */
	protected $_idLinkDefault;
	
	/**
	* Set entry idPerfilPadrao
	* 
	* @param  int $idPerfilPadrao 
	* @return Basico_Model_Pessoa
	*/
	public function setIdPerfilPadrao($idPerfilPadrao)
	{
		$this->_idPerfilPadrao = Basico_OPController_UtilOPController::retornaValorTipado($idPerfilPadrao, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idPerfilPadrao
	* 
	* @return null|int
	*/
	public function getIdPerfilPadrao()
	{
		return $this->_idPerfilPadrao;
	}

	 /**
     * Get pessoaPerfil object
     * 
     * @return null|Basico_Model_Perfil
     */
	public function getPerfilPadraoObject()
	{
		// instanciando o modelo perfil
		$model = new Basico_Model_Perfil();
		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idPerfilPadrao);
        // retornando o objeto
        return $object;
	}

	/**
	* Set entry idTelefoneDefault
	* 
	* @param  int $idTelefoneDefault 
	* @return Basico_Model_Pessoa
	*/
	public function setIdTelefoneDefault($idTelefoneDefault)
	{
		$this->_idTelefoneDefault = Basico_OPController_UtilOPController::retornaValorTipado($idTelefoneDefault, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idTelefoneDefault
	* 
	* @return null|int
	*/
	public function getIdTelefoneDefault()
	{
		return $this->_idTelefoneDefault;
	}

	 /**
     * Get telefone object
     * 
     * @return null|Basico_Model_Telefone
     */
	public function getTelefoneDefaultObject()
	{
		// instanciando o modelo perfil
		$model = new Basico_Model_Telefone();
		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idTelefoneDefault);
        // retornando o objeto
        return $object;
	}	

	/**
	* Set entry idEmailDefault
	* 
	* @param  int $idEmailDefault 
	* @return Basico_Model_Pessoa
	*/
	public function setIdEmailDefault($idEmailDefault)
	{
		$this->_idEmailDefault = Basico_OPController_UtilOPController::retornaValorTipado($idEmailDefault, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idEmailDefault
	* 
	* @return null|int
	*/
	public function getIdEmailDefault()
	{
		return $this->_idEmailDefault;
	}

	 /**
     * Get Email object
     * 
     * @return null|Basico_Model_ContatoCpgEmail
     */
	public function getEmailDefaultObject()
	{
		// instanciando o modelo perfil
		$model = new Basico_Model_ContatoCpgEmail();
		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idEmailDefault);
        // retornando o objeto
        return $object;
	}	

	/**
	* Set entry idEnderecoDefault
	* 
	* @param  int $idEnderecoDefault 
	* @return Basico_Model_Pessoa
	*/
	public function setIdEnderecoDefault($idEnderecoDefault)
	{
		$this->_idEnderecoDefault = Basico_OPController_UtilOPController::retornaValorTipado($idEnderecoDefault, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idEnderecoDefault
	* 
	* @return null|int
	*/
	public function getIdEnderecoDefault()
	{
		return $this->_idEnderecoDefault;
	}

	 /**
     * Get Endereco object
     * 
     * @return null|Basico_Model_Endereco
     */
	public function getEnderecoDefaultObject()
	{
		// instanciando o modelo perfil
		$model = new Basico_Model_Endereco();
		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idEnderecoDefault);
        // retornando o objeto
        return $object;
	}	

	/**
	* Set entry idEnderecoCorrespondencia
	* 
	* @param  int $idEnderecoCorrespondencia 
	* @return Basico_Model_Pessoa
	*/
	public function setIdEnderecoCorrespondencia($idEnderecoCorrespondencia)
	{
		$this->_idEnderecoCorrespondencia = Basico_OPController_UtilOPController::retornaValorTipado($idEnderecoCorrespondencia, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idEnderecoCorrespondencia
	* 
	* @return null|int
	*/
	public function getIdEnderecoCorrespondencia()
	{
		return $this->_idEnderecoCorrespondencia;
	}

	 /**
     * Get Endereco object
     * 
     * @return null|Basico_Model_Endereco
     */
	public function getEnderecoCorrespondenciaObject()
	{
		// instanciando o modelo perfil
		$model = new Basico_Model_Endereco();
		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idEnderecoCorrespondencia);
        // retornando o objeto
        return $object;
	}	

	/**
	* Set entry idLinkDefault
	* 
	* @param  int $idLinkDefault 
	* @return Basico_Model_Pessoa
	*/
	public function setIdLinkDefault($idLinkDefault)
	{
		$this->_idLinkDefault = Basico_OPController_UtilOPController::retornaValorTipado($idLinkDefault, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Retrieve entry idLinkDefault
	* 
	* @return null|int
	*/
	public function getIdLinkDefault()
	{
		return $this->_idLinkDefault;
	}

	 /**
     * Get Link object
     * 
     * @return null|Basico_Model_Link
     */
	public function getLinkDefaultObject()
	{
		// instanciando o modelo perfil
		$model = new Basico_Model_Link();
		// recuperando objeto
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idLinkDefault);
        // retornando o objeto
        return $object;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_PessoaMapper instance if no mapper registered.
	* 
	* @return Basico_Model_PessoaMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_PessoaMapper);
	}
}