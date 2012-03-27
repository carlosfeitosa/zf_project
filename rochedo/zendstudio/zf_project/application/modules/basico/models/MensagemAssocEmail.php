<?php
/**
 * MensagemAssocEmail model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_MensagemAssocEmailMapper
 * @subpackage Model
 */
class Basico_Model_MensagemAssocEmail extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * @var Integer
     */
    protected $_idMensagem;

	/**
	* Set mensagem
	* 
	* @param int $mensagem 
	* @return Basico_Model_MensagemAssocEmail
	*/
	public function setIdMensagem($idMensagem)
	{
		$this->_idMensagem = Basico_OPController_UtilOPController::retornaValorTipado($idMensagem, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get mensagem
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
	* Get data mapper
	*
	* Lazy loads Basico_Model_MensagemAssocEmailMapper instance if no mapper registered.
	* 
	* @return Basico_Model_MensagemAssocEmailMapper
	*/
	public function getMapper()
	{
		return  parent::getMapper('Basico_Model_MensagemAssocEmailMapper');
	}
}