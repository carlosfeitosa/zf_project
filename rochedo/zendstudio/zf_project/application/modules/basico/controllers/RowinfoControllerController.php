<?php
/**
 * Controlador Rowinfo
 *
 */
class Basico_RowInfoControllerController
{
	/**
	 * Instância do controlador Rowinfo
	 * @var Basico_RowInfoController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo RowInfo
	 * @var Basico_Model_RowInfo
	 */
	private $rowinfo;
	
	/**
	 * Construtor.
	 * @return unknown_type
	 */
	private function __construct()
	{
		$this->rowinfo = new Basico_Model_RowInfo();
	}
	
	/**
	 * Retorna instância do controlador RowInfo
	 * @return Basico_RowInfoController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_RowInfoControllerController();
		}
		return self::$singleton;
	}
	
	/**
	* Get xml
	* 
	* @return null|String
	*/
	public function getXml()
	{
		return Basico_GeradorControllerController::geradorXmlGerarXml($this->rowinfo, NULL, NULL, 'rowinfo', 'xml_data', 'rowinfo', 'agilfap2_desenv/public/xsd/rowinfo.xsd');
	}
	
	/**
	* Prepare xml
	* 
	* @return null|Boolean
	*/
	public function prepareXml($modelo, $utilizarUsuarioSistema = false)
	{
		try {
			    if ($utilizarUsuarioSistema)
			        $idPessoaPerfil = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
		
			    // CASO NAO EXISTA ID, SETAR VALORES PARA NOVA LINHA
		        if (!isset($modelo->id))
		        {
		            $this->rowinfo->setGenericDateTimeCreation(Basico_UtilControllerController::retornaDateTimeAtual());
		            $this->rowinfo->setGenericIdLoginCreation($idPessoaPerfil);
		        }
		        $this->rowinfo->setGenericDateTimeLastModified(Basico_UtilControllerController::retornaDateTimeAtual());
		        $this->rowinfo->setGenericIdLoginLastModified($idPessoaPerfil);
		        
		        return true;	
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}
