<?php

class Basico_RowInfoController
{

	static private $singleton;
	private $rowinfo;
	private $gerador;
	
	private function __construct()
	{
		$this->rowinfo = new Basico_Model_RowInfo();
		$this->gerador = new Basico_Model_Gerador();
	}
	
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_RowInfoController();
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
        return $this->gerador->getGeradorXmlObject()->gerar($this, NULL, NULL, 'rowinfo', 'xml_data', 'rowinfo', 'agilfap2_desenv/public/xsd/rowinfo.xsd');
	}
	
	/**
	* Prepare xml
	* 
	* @return null|Boolean
	*/
	public function prepareXml($modelo, $utilizarUsuarioSistema = false)
	{
	    if ($utilizarUsuarioSistema)
	        $idPessoaPerfil = Basico_Model_Util::retornaIdPessoaPerfilSistema();

        if (!isset($modelo->id))
        {
            $this->rowinfo->setGenericDateTimeCreation(Zend_Date::now());
            $this->rowinfo->setGenericIdLoginCreation($idPessoaPerfil);
        }
        $this->rowinfo->setGenericDateTimeLastModified(Zend_Date::now());
        $this->rowinfo->setGenericIdLoginLastModified($idPessoaPerfil);
	}
}
