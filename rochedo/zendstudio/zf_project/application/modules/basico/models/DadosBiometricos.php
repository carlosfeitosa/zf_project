<?php
/**
 * DadosBiometricos model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Basico_Model_DadosBiometricosMapper
 * @subpackage Model
 */
class Basico_Model_DadosBiometricos extends Basico_AbstractModel_RochedoPersistentModeloAssociacao implements Basico_InterfaceModel_RochedoPersistentModeloGenerico
{
	/**
	 * @var Integer
	 */
	protected $_idCategoria;
	/**
	 * @var Integer
	 */
	protected $_idGenericoProprietario;
	
	
	/**
	* Set idCategoria
	* 
	* @param int $idCategoria
	*  
	* @return Basico_Model_DadosBiometricos
	*/
	public function setIdCategoria($idCategoria)
	{
		$this->_idCategoria = Basico_OPController_UtilOPController::retornaValorTipado($idCategoria, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idCategoria
	* 
	* @return null|Integer
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
	* Set idGenericoProprietario
	* 
	* @param int $idGenericoProprietario 
	* @return Basico_Model_DadosBiometricos
	*/
	public function setIdGenericoProprietario($idGenericoProprietario)
	{
		$this->_idGenericoProprietario = Basico_OPController_UtilOPController::retornaValorTipado($idGenericoProprietario, TIPO_INTEIRO, true);
		return $this;
	}

	/**
	* Get idGenericoProprietario
	* 
	* @return null|int
	*/
	public function getIdGenericoProprietario()
	{
		return $this->_idGenericoProprietario;
	}
	
	/**
	* Get data mapper
	*
	* Lazy loads Basico_Model_DadosBiometricosMapper instance if no mapper registered.
	* 
	* @return Basico_Model_DadosBiometricosMapper
	*/
	public function getMapper()
	{
		return parent::getMapper(Basico_Model_DadosBiometricosMapper);
	}
}