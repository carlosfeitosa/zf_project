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
	 * Instância do modelo Gerador
	 * @var Basico_Model_Gerador
	 */
	private $gerador;
	
	/**
	 * Construtor.
	 * @return unknown_type
	 */
	private function __construct()
	{
		$this->rowinfo = new Basico_Model_RowInfo();
		$this->gerador = new Basico_Model_Gerador();
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
        return $this->gerador->getGeradorXmlObject()->gerar($this->rowinfo, NULL, NULL, 'rowinfo', 'xml_data', 'rowinfo', 'agilfap2_desenv/public/xsd/rowinfo.xsd');
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
			        $idPessoaPerfil = Basico_Model_Util::retornaIdPessoaPerfilSistema();
		
			    // CASO NAO EXISTA ID, SETAR VALORES PARA NOVA LINHA
		        if (!isset($modelo->id))
		        {
		            $this->rowinfo->setGenericDateTimeCreation(Zend_Date::now());
		            $this->rowinfo->setGenericIdLoginCreation($idPessoaPerfil);
		        }
		        $this->rowinfo->setGenericDateTimeLastModified(Zend_Date::now());
		        $this->rowinfo->setGenericIdLoginLastModified($idPessoaPerfil);
		        
		        return true;	
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}
