<?php
/**
 * Controlador FS (File System)
 * 
 * Controlador responsavel por operacoes de sistemas de arquivo
 * 
 * @package Basico
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_FSOPController
{
	/**
	 * @var Basico_OPController_FSOPController
	 */
	private static $_singleton;
	
	
	private static $_tipos = array('termos' => '/docs/termos/');
	
	
	/**
	 * Inicializa Controlador Login.
	 * 
	 * @return Basico_OPController_FSOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FSOPController();
		}
		// retornando a instancia
		return self::$_singleton;
	}
	
	/**
	 * Envia o arquivo para download
	 * 
	 * @param String $tipo
	 * @param String $nomeArquivo
	 */
	public function enviaArquivoDownload($tipo, $nomeArquivo)
	{
		// recuperando a url do arquivo
		$filePath = PUBLIC_PATH . self::$_tipos[$tipo] . $nomeArquivo;
		
		// setando o cabecalho do response
		header("Content-Type: application/save"); 
		header("Content-Length:".filesize($filePath)); 
		header('Content-Disposition: attachment; filename="' . $nomeArquivo . '"'); 
		header("Content-Transfer-Encoding: binary");
		header('Expires: 0'); 
		header('Pragma: no-cache');
		
		// abrindo o arquivo e enviando
		$arquivo = fopen($filePath, "r"); 
		fpassthru($arquivo); 
		fclose($arquivo);
		 
	}
}