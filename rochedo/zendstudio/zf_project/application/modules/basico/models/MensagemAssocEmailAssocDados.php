<?php
/**
 * MensagemAssocEmailAssocDados model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_MensagemAssocEmailAssocDadosMapper
 * @subpackage Model
 */
class Basico_Model_MensagemAssocEmailAssocDados extends Abstract_RochedoPersistentModeloDados implements Interface_RochedoPersistentModeloGenerico
{
	/**
	 * Referencia a classe Basico_Model_MensagemAssocEmail
     * @var Int
     */
    protected $_idAssocEmail;
	/**
	 * @var String
	 */
	protected $_destinatariosCopiaCarbonada;
	/**
	 * @var String
	 */
	protected $_destinatariosCopiaCarbonadaOculta;
	/**
	 * @var String
	 */
	protected $_responderPara;
	/**
	 * @var String
	 */
	protected $_prioridade;
	/**
	 * @var Boolean
	 */
	protected $_solicitacaoConfirmacaoLeitura;
	/**
	 * @var Date
	 */
	protected $_datahoraConfirmacaoLeitura;
 
	/**
	* Set idAssocEmail
	* 
	* @param int $idAssocEmail 
	* @return Basico_Model_MensagemAssocEmailAssocDados
	*/
	public function setIdAssocEmail($idAssocEmail)
	{
		$this->_idAssocEmail = Basico_OPController_UtilOPController::retornaValorTipado($idAssocEmail, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idAssocEmail
	* 
	* @return null|int
	*/
	public function getIdAssocEmail()
	{
		return $this->_idAssocEmail;
	}
	
	/**
     * Get AssocEmail object
     * @return null|Basico_Model_MensagemAssocEmail
     */
    public function getAssocEmailObject()
    {
        $model = new Basico_Model_MensagemAssocEmail();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idAssocEmail);
        return $object;
    }
	
	/**
	* Set destinatariosCopiaCarbonada
	* 
	* @param String $destinatariosCopiaCarbonada 
	* @return Basico_Model_MensagemAssocEmailAssocDados
	*/
	public function setDestinatariosCopiaCarbonada($destinatariosCopiaCarbonada)
	{
		$this->_destinatariosCopiaCarbonada = Basico_OPController_UtilOPController::retornaValorTipado($destinatariosCopiaCarbonada, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get destinatariosCopiaCarbonada
	* 
	* @return null|String
	*/
	public function getDestinatariosCopiaCarbonada()
	{
		return $this->_destinatariosCopiaCarbonada;
	}
     
	/**
	* Set destinatariosCopiaCarbonadaOculta
	* 
	* @param String $destinatariosCopiaCarbonadaOculta 
	* @return Basico_Model_MensagemAssocEmailAssocDados
	*/
	public function setDestinatariosCopiaCarbonadaOculta($destinatariosCopiaCarbonadaOculta)
	{
		$this->_destinatariosCopiaCarbonadaOculta = Basico_OPController_UtilOPController::retornaValorTipado($destinatariosCopiaCarbonadaOculta, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get destinatariosCopiaCarbonadaOculta
	* 
	* @return null|String
	*/
	public function getDestinatariosCopiaCarbonadaOculta()
	{
		return $this->_destinatariosCopiaCarbonadaOculta;
	}
     
	/**
	* Set responderPara
	* 
	* @param String $responderPara 
	* @return Basico_Model_MensagemAssocEmailAssocDados
	*/
	public function setResponderPara($responderPara)
	{
		$this->_responderPara = Basico_OPController_UtilOPController::retornaValorTipado($responderPara, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get responderPara
	* 
	* @return null|String
	*/
	public function getResponderPara()
	{
		return $this->_responderPara;
	}
	
	/**
	* Set prioridade
	* 
	* @param int $prioridade 
	* @return Basico_Model_MensagemAssocEmailAssocDados
	*/
	public function setPrioridade($prioridade)
	{
		$this->_prioridade = Basico_OPController_UtilOPController::retornaValorTipado($prioridade, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get prioridade
	* 
	* @return null|int
	*/
	public function getPrioridade()
	{
		return $this->_prioridade;
	}
	
	/**
	* Set solicitacaoConfirmacaoLeitura
	* 
	* @param Boolean $solicitacaoConfirmacaoLeitura 
	* @return Basico_Model_MensagemAssocEmailAssocDados
	*/
	public function setSolicitacaoConfirmacaoLeitura($solicitacaoConfirmacaoLeitura)
	{
		$this->_solicitacaoConfirmacaoLeitura = Basico_OPController_UtilOPController::retornaValorTipado($solicitacaoConfirmacaoLeitura, TIPO_BOOLEAN, true);
		return $this;
	}

	/**
	* Get solicitacaoConfirmacaoLeitura
	* 
	* @return null|int
	*/
	public function getSolicitacaoConfirmacaoLeitura()
	{
		return $this->_solicitacaoConfirmacaoLeitura;
	}
	
	/**
	* Set datahoraConfirmacaoLeitura
	* 
	* @param Date $datahoraConfirmacaoLeitura 
	* @return Basico_Model_MensagemAssocEmailAssocDados
	*/
	public function setDatahoraConfirmacaoLeitura($datahoraConfirmacaoLeitura)
	{
		$this->_datahoraConfirmacaoLeitura = Basico_OPController_UtilOPController::retornaValorTipado($datahoraConfirmacaoLeitura, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraConfirmacaoLeitura
	* 
	* @return null|Date
	*/
	public function getDatahoraConfirmacaoLeitura()
	{
		return $this->_datahoraConfirmacaoLeitura;
	}

	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_MensagemAssocEmailAssocDadosMapper instance if no mapper registered.
	* 
	* @return Basico_Model_MensagemAssocEmailAssocDadosMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_MensagemAssocEmailAssocDadosMapper);
	}
}
