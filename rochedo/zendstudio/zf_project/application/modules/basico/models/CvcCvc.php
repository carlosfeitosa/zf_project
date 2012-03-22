<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * CVC model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_CvcCvcMapper
 * @subpackage Model
 */

class Basico_Model_CvcCvc extends Abstract_RochedoPersistentModeloDados implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
    /**
     * @var Integer
     */
    protected $_idAssocChaveEstrangeira;
	/**
	 * @var Integer
	 */	
	protected $_idGenerico;
	/**
	 * @var Double
	 */
	protected $_versao;
	/**
	 * @var String
	 */
	protected $_objeto;
	/**
	 * @var String
	 */
	protected $_checksum;
	/**
	 * @var Date
	 */
	protected $_validadeInicio;
	/**
	 * @var Date
	 */
	protected $_validadeTermino;
	
	/**
	* Set idAssocChaveEstrangeira
	* 
	* @param int $idAssocChaveEstrangeira
	* 
	* @return Basico_Model_CvcCvc
	*/
	public function setIdAssocChaveEstrangeira($idAssocChaveEstrangeira)
	{
		$this->_idAssocChaveEstrangeira = Basico_OPController_UtilOPController::retornaValorTipado($idAssocChaveEstrangeira,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idAssocChaveEstrangeira
	* 
	* @return null|int
	*/
	public function getIdAssocChaveEstrangeira()
	{
		if ($this->_idAssocChaveEstrangeira)
			return $this->_idAssocChaveEstrangeira;
		else
			return null;
	}
 
    /**
     * Get AssocChaveEstrangeira object
     * 
     * @return null|Basico_Model_CategoriaAssocChaveEstrangeira
     */
    public function getAssocChaveEstrangeiraObject()
    {
        $model = new Basico_Model_CategoriaAssocChaveEstrangeira();
        $object = $model->getMapper()->find($this->_idAssocChaveEstrangeira);
        return $object;
    }	
	
	/**
	* Set idGenerico
	* 
	* @param Integer $idGenerico 
	* 
	* @return Basico_Model_CvcCvc
	*/
	public function setIdGenerico($idGenerico)
	{
		$this->_idGenerico = Basico_OPController_UtilOPController::retornaValorTipado($idGenerico,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get idGenerico
	* 
	* @return null|Integer
	*/
	public function getIdGenerico()
	{
		if ($this->_idGenerico)
			return $this->_idGenerico;
		else
			return null;
	}
     
	/**
	* Set versao
	* 
	* @param Double $versao 
	* 
	* @return Basico_Model_CvcCvc
	*/
	public function setVersao($versao)
	{
		$this->_versao = Basico_OPController_UtilOPController::retornaValorTipado($versao,TIPO_INTEIRO,true);
		return $this;
	}

	/**
	* Get versao
	* 
	* @return null|Double
	*/
	public function getVersao()
	{
		if ($this->_versao)
			return $this->_versao;
		else
			return null;
	}
         
	/**
	* Set objeto
	* 
	* @param String $objeto 
	* 
	* @return Basico_Model_CvcCvc
	*/
	public function setObjeto($objeto)
	{
		if (is_object($objeto)) {
			$this->_objeto = Basico_OPController_UtilOPController::codificar($objeto);
		}
		else
			$this->_objeto = $objeto;
		
		return $this;
	}

	/**
	* Get objeto
	* 
	* @return null|String
	*/
	public function getObjeto()
	{
		if (strlen($this->_objeto))
			return $this->_objeto;
		else
			return null;
	}

	/**
	* Set checksum
	* 
	* @param String $checksum 
	* 
	* @return Basico_Model_CvcCvc
	*/
	public function setChecksum($checksum)
	{
		$this->_checksum = Basico_OPController_UtilOPController::retornaValorTipado($checksum, TIPO_STRING, true);
		
		return $this;
	}

	/**
	* Get checksum
	* 
	* @return null|String
	*/
	public function getChecksum()
	{
		return $this->_checksum;
	}
	
	/**
	 * get objeto as array
	 * 
	 * @return null|array
	 */
	public function getObjetoArray()
	{
		return Basico_OPController_UtilOPController::codificar($this->_objeto, CODIFICAR_ENCODED_STRING_TO_ARRAY);
	}
     
	/**
	* Set validadeInicio
	* 
	* @param String $validadeInicio 
	* 
	* @return Basico_Model_CvcCvc
	*/
	public function setValidadeInicio($validadeInicio)
	{
		$this->_validadeInicio = Basico_OPController_UtilOPController::retornaValorTipado($validadeInicio,TIPO_DATE,true);
		return $this;
	}

	/**
	* Get validadeInicio
	* 
	* @return null|String
	*/
	public function getValidadeInicio()
	{
		if (strlen($this->_validadeInicio))
			return $this->_validadeInicio;
		else
			return null;
	}
     
	/**
	* Set validadeTermino
	* 
	* @param String $validadeTermino 
	* 
	* @return Basico_Model_CvcCvc
	*/
	public function setValidadeTermino($validadeTermino)
	{
		if (isset($validadeTermino))
			$this->_validadeTermino = Basico_OPController_UtilOPController::retornaValorTipado($validadeTermino,TIPO_DATE,true);
		return $this;
	}
	
	/**
	* Get validadeTermino
	* 
	* @return null|String
	*/
	public function getValidadeTermino()
	{
		if (strlen($this->_validadeTermino))
			return $this->_validadeTermino;
		else
			return null;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_CvcCvcMapper instance if no mapper registered.
	* 
	* @return Basico_Model_CvcCvcMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_CvcCvcMapper);
	}	
}