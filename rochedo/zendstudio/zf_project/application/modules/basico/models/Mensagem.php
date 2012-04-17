<?php
/**
 * Mensagem model
 *
 * Utiliza o Mapper para persistir os dados.
 * 
 * @uses Basico_Model_MensagemMapper
 * @subpackage Model
 */
class Basico_Model_Mensagem extends Basico_AbstractModel_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	* @var int
	*/
	protected $_idCategoria;
	/**
	* @var int
	*/
	protected $_idGenericoProprietario;
	/**
	 * @var String
	 */
	protected $_remetente;
	/**
	 * @var String
	 */
	protected $_remetenteNome;
	/**
	 * @var String
	 */
	protected $_destinatarios;
	/**
	 * @var String
	 */
	protected $_destinatariosNomes;
	/**
	 * @var String
	 */
	protected $_assunto;
	/**
	 * @var String
	 */
	protected $_mensagem;
	/**
	 * @var Date
	 */
	protected $_datahoraEnvio;
	
	/**
	* Set entry idCategoria
	* 
	* @param  int $idCategoria
	* 
	* @return Basico_Model_Mensagem
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}
	
    /**
	* Retrieve entry idCategoria
	* 
	* @return null|int
	*/
	public function getIdCategoria()
	{
		return $this->_idCategoria;
	}

    /**
     * Get categoria object
     * 
     * @return null|Basico_Model_Categoria
     */
    public function getCategoriaObject()
    {
        $model = new Basico_Model_Categoria();
        $object = Basico_OPController_PersistenceOPController::bdObjectFind($model, $this->_idCategoria);
        return $object;
    }
    
	/**
	* Set entry idGenericoProprietario
	* 
	* @param  int $idGenericoProprietario
	* 
	* @return Basico_Model_Mensagem
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_OPController_UtilOPController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
		return $this;
	}
	
    /**
	* Retrieve entry idGenericoProprietario
	* 
	* @return null|int
	*/
	public function getIdGenericoProprietario()
	{
		return $this->_idGenericoProprietario;
	}
 
	/**
	* Set remetente
	* 
	* @param String $remetente
	* 
	* @return Basico_Model_Mensagem
	*/
	public function setRemetente($remetente)
	{
		$this->_remetente = Basico_OPController_UtilOPController::retornaValorTipado($remetente, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get remetente
	* 
	* @return null|String
	*/
	public function getRemetente()
	{
		return $this->_remetente;
	}
	
	/**
	* Set remetenteNome
	* 
	* @param String $remetenteNome
	* 
	* @return Basico_Model_Mensagem
	*/
	public function setRemetenteNome($remetenteNome)
	{
		$this->_remetenteNome = Basico_OPController_UtilOPController::retornaValorTipado($remetenteNome, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get remetenteNome
	* 
	* @return null|String
	*/
	public function getRemetenteNome()
	{
		return $this->_remetenteNome;
	}

	/**
	* Set destinatarios
	* 
	* @param String $destinatarios
	* 
	* @return Basico_Model_Mensagem
	*/
	public function setDestinatarios($destinatarios)
	{
		if (is_array($destinatarios))
			$this->_destinatarios = implode(';', $destinatarios);
		else
			$this->_destinatarios = Basico_OPController_UtilOPController::retornaValorTipado($destinatarios, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get destinatarios string
	* 
	* @return null|String
	*/
	public function getDestinatariosString()
	{
		return $this->_destinatarios;
	}

	/**
	* Get destinatarios 
	* 
	* @return null|String
	*/
	public function getDestinatarios()
	{
		return $this->getDestinatariosString();
	}
	
	/**
	* Get destinatarios array
	* 
	* @return null|String
	*/
	public function getDestinatariosArray()
	{
		$destinatarios = explode(';', $this->_destinatarios);
		return $destinatarios;
	}
	
	/**
	* Set destinatariosNomes
	* 
	* @param String $destinatariosNomes
	* 
	* @return Basico_Model_Mensagem
	*/
	public function setDestinatariosNomes($destinatariosNomes)
	{
		if (is_array($destinatariosNomes))
			$this->_destinatariosNomes = implode(';', $destinatariosNomes);
		else
			$this->_destinatariosNomes = Basico_OPController_UtilOPController::retornaValorTipado($destinatariosNomes, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get destinatariosNomes string
	* 
	* @return null|String
	*/
	public function getDestinatariosNomesString()
	{
		return $this->_destinatariosNomes;
	}

	/**
	* Get destinatariosNomes
	* 
	* @return null|String
	*/
	public function getDestinatariosNomes()
	{
		return $this->getDestinatariosNomesString();
	}
	
	/**
	* Get destinatariosNomes array
	* 
	* @return null|String
	*/
	public function getDestinatariosNomesArray()
	{
		$destinatariosNomes = explode(';', $this->_destinatariosNomes);
		return $destinatariosNomes;
	}

	/**
	* Set assunto
	* 
	* @param String $assunto
	* 
	* @return Basico_Model_Mensagem
	*/
	public function setAssunto($assunto)
	{
		$this->_assunto = Basico_OPController_UtilOPController::retornaValorTipado($assunto, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get assunto
	* 
	* @return null|String
	*/
	public function getAssunto()
	{
		return $this->_assunto;
	}

	/**
	* Set mensagem
	* 
	* @param String $mensagem
	* 
	* @return Basico_Model_Mensagem
	*/
	public function setMensagem($mensagem)
	{
		$this->_mensagem = Basico_OPController_UtilOPController::retornaValorTipado($mensagem, TIPO_STRING, true);
		return $this;
	}

	/**
	* Get mensagem
	* 
	* @return null|String
	*/
	public function getMensagem()
	{
		return $this->_mensagem;
	}

    /**
	* Set datahoraEnvio
	* 
	* @param String $datahoraEnvio
	* 
	* @return Basico_Model_Mensagem
	*/
	public function setDatahoraEnvio($datahoraEnvio)
	{
		$this->_datahoraEnvio = Basico_OPController_UtilOPController::retornaValorTipado($datahoraEnvio, TIPO_DATE, true);
		return $this;
	}

	/**
	* Get datahoraEnvio
	* 
	* @return null|String
	*/
	public function getDatahoraEnvio()
	{
		return $this->_datahoraEnvio;
	}

	/**
	 * Retorna se a mensagem foi enviada ou nao
	 * 
	 * @return Boolean
	 */
	public function getEnviada()
	{
		// retornando se a mensagem possui data-hora de envio e possui 2 ou mais pessoas associadas em PessoasPerfisMensagensCategorias
		return (($this->_datahoraEnvio) and (count($this->getPessoasPerfisMensagensCategoriasObjects())) >= 2);
	}
	
	/**
	 * Retorna um array contendo os objetos PessoasPerfisMensagensCategorias relacionado a mensagem
	 * 
	 * @return Array|null
	 */
	public function getPessoasPerfisMensagensCategoriasObjects()
	{
		// recuperando modelo
		$model = new Basico_Model_MensagemAssocclAssocclPessoaPerfil();
		// recuperando objetos
		$objetosPessoasPerfisMensagensCategorias = Basico_OPController_PersistenceOPController::bdObjectFetchList($model, "id_mensagem = {$this->_id}");
		// retornando objetos
		return $objetosPessoasPerfisMensagensCategorias;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_MensagemMapper instance if no mapper registered.
	* 
	* @return Basico_Model_MensagemMapper
	*/
	public function getMapper()
	{
		return parent::getMapper('Basico_Model_MensagemMapper');
	}
}