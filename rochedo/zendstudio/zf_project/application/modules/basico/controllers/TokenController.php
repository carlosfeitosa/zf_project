<?php
class Basico_TokenController
{
/**
	 * @var Basico_TokenController
	 */
	static private $singleton;
	
	/**
	 * @var Basico_Model_Token
	 */
	private $token;
	
    /**
     * Construtor do Controller
     * @return void
     */
	private function __construct()
	{
		$this->token = new Basico_Model_Token();
	}
	
	/**
	 * Inicializa o controlador Basico_TokenController
	 * @return Basico_TokenController
	 */
	public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_TokenController();
		}
		return self::$singleton;
	}	
}
