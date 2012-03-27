<?php
/**
 * AssocclPessoaPerfilAssocDados model
 *
 * Utiliza o mapper para AssocclPessoaPerfilAssocDados os dados.
 * 
 * @uses       Basico_Model_AssocclPessoaPerfilAssocDadosMapper
 * @subpackage Model
 */
class Basico_Model_AssocclPessoaPerfilAssocDados extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * 
	 * @var int
	 */
	protected $_idAssocclPessoaPerfil;
	/**
	 * @var String
	 */
	protected $_assinaturaMensagemEmail;

	/**
	 * Set idPessoaPerfil
	 * 
	 * @param int $idAssocclPessoaPerfil
	 * @return Basico_Model_AssocclPessoaPerfilAssocDados
	 */
	public function setIdAssocclPessoaPerfil($idAssocclPessoaPerfil) 
	{
		$this->_idAssocclPessoaPerfil = Basico_OPController_UtilOPController::retornaValorTipado($idAssocclPessoaPerfil, TIPO_INTEIRO, true);
		return $this;
		
	}

	/**
	 * Get idPessoaPerfil
	 * @return null|int
	 */
	public function getIdAssocclPessoaPerfil()
	{
		return $this->_idAssocclPessoaPerfil;
	}

	/**
	* Set assinaturaMensagemEmail
	* 
	* @param String $assinaturaMensagemEmail 
	* @return Basico_Model_AssocclPessoaPerfilAssocDados
	*/
	public function setAssinaturaMensagemEmail($assinaturaMensagemEmail)
	{
		$this->_assinaturaMensagemEmail = Basico_OPController_UtilOPController::retornaValorTipado($assinaturaMensagemEmail,TIPO_STRING,true);
		return $this;
	}

	/**
	* Get assinaturaMensagemEmail
	* 
	* @return null|String
	*/
	public function getAssinaturaMensagemEmail()
	{
		return $this->_assinaturaMensagemEmail;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_AssocclPessoaPerfilDadosMapper instance if no mapper registered.
	* 
	* @return Basico_Model_AssocclPessoaPerfilAssocDadosMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_AssocclPessoaPerfilAssocDadosMapper');
	}
}