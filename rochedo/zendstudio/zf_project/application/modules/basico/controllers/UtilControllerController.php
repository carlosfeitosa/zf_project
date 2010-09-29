<?php
/**
 * Controlador Util
 * 
 */

class Basico_UtilControllerController
{
	/**
	 * Muda as permissoes de uma pasta/arquivo, recursivamente
	 * 
	 * @param String $caminho
	 * @param Integer $modo
	 * @param Boolean $recursivo
	 * 
	 * @return void
	 */
	public static function chmod($caminho, $modo, $recursivo = false)
	{
		// verificando se as permissoes devem ser modificadas recursivamente
		if ($recursivo)
			$iterator = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($caminho), RecursiveIteratorIterator::SELF_FIRST);
		else
			$iterator = array($caminho);
		
		// muda as permissoes
		foreach($iterator as $item) { 
    		chmod($item, $modo);
		}
	}
	
	/**
	 * Escreve um erro
	 * 
	 * @param Integer $erroConst
	 * @param String $mensagem
	 * 
	 * @return void
	 */
	public static function escreveErro($erroConst, $mensagem)
	{
		// escreve um cabecalho na pagina
		echo "<h1>" . MSG_ERRO_APLICACAO . "</h1>";

		// carrega mensagem para exibicao em ambiente de desenvolvimento
        $mensagemDesenv = "Erro: {$erroConst}<br><h>Detalhes: {$mensagem}</h>";
        
        // checa se a aplicacao esta rodando em ambiente de desenvolvimento para impressao dos detalhes
        if (self::ambienteDesenvolvimento())
			echo $mensagemDesenv; 
	}
	
	/**
	 * Checa se a aplicacao pode iniciar
	 * 
	 * @param Zend_Application $application
	 * 
	 * @return void
	 */
	public static function checaInit(Zend_Application $application)
	{	
		// verificando se a conexao pode ser efetuada
		Basico_PersistenceControllerController::bdChecaConexao($application);
	}

	/**
	 * Cria diretorios recursivamente.
	 * 
	 * @param String $caminho
	 * @param Integer $folderRights
	 * 
	 * @return boolean
	 */
    public static function mkdirRecursive($caminho, $folderRights = 0777)
    {
        try {
        	// inicializando variaveis
			$dir = '';
        	// recuperando todos os niveis do caminho passado por parametro
    	    $dirs = explode('/', $caminho);

    	    // loop de todas as pastas encontradas no caminho passado por parametro
    	    foreach ($dirs as $part) 
    	    {
    	    	// montando pastas
    	        $dir.=$part.'/';

				// verificando se o caminho eh um diretorio
    	        if (!is_dir($dir) && strlen($dir)>0)
    	        	// criando pasta
                    mkdir($dir, $folderRights);
    	    }
    	    
    	    return true;
        }
        catch (Exception $e) {
        	
            throw new Exception($e->getMessage());
        }
        return false;
    }
    
    /**
     * Retorna Conteúdo de Arquivo.
     * 
     * @param String $filename
     * 
     * @return String
     */
    public static function getFileContent($filename)
    {        
        return file_get_contents($filename);
    }
    
    /**
     * Retorna conteúdo de uma uri passada como parametro.
     * 
     * @param String $uri
     * 
     * @return String
     */
    public static function getUrlContent($uri)
    {
        $encodedUri = urldecode($uri);
        
        return file_get_contents($encodedUri);
    }
	
	/**
	 * Retorna IP do usuário.
	 * 
	 * @return String
	 */
	public static function retornaUserIp()
	{
		if (!empty($_SERVER["HTTP_CLIENT_IP"]))
			$userIp = $_SERVER["HTTP_CLIENT_IP"];
		else if (!empty($_SERVER["HTTP_X_FORWARDED_FOR"]))
			$userIp = $_SERVER["HTTP_X_FORWARDED_FOR"];
		else
			$userIp = $_SERVER["REMOTE_ADDR"];
			
		return $userIp;
	}
	
	/**
	 * Retorna tipo da conexão do usuário.
	 * @return String
	 */
	public static function retornaUserConnectionType()
	{
		return $_SERVER["HTTP_CONNECTION"];
	}
	
	/**
	 * Retorna o nome do browser, sistema operacional utilizado.
	 * @return String
	 */
	public static function retornaUserAgent()
	{
		return $_SERVER["HTTP_USER_AGENT"];
	}
	
	/**
	 * Retorna requisição do usuário.
	 * @return Array
	 */
	public static function retornaUserRequest()
	{
		return Zend_Controller_Front::getInstance()->getRequest();
	}
	
	/**
	 * Checa se está no ambiente de desenvolvimento
	 * @return Boolean
	 */
	public static function ambienteDesenvolvimento()
	{
		return (strpos(APPLICATION_ENV, 'development') !== false);
	}
	
	/**
	 * Retorna a data passada em timestamp ou timestamp atual se não for passado nenhum parametro
	 * @param $data
	 * @return Integer
	 */
	public static function retornaTimestamp($data = null)
	{
		if ($data != null) {
			return strtotime($data);
		}else{
		    return Zend_Date::now()->getTimestamp();	
		}
	}
	
	/**
	 * Retorna a datetime atual
	 * @param $data
	 * @return String
	 */
	public static function retornaDateTimeAtual()
	{
	    return Zend_Date::now('en-us');
	}
	
	/**
	 * Retorna espaços em branco, de acordo com o nível de identação
	 * @param $nivel
	 * @return String
	 */
	public static function retornaIdentacao($nivel)
	{
		$resultado = '';
		
		for ($i = 1; $i <= $nivel; $i++){
			$resultado .= IDENTACAO_PADRAO;
		}
		
		return $resultado;
	}
	
	/**
     * Retorna uma string com quebra de linha
     * @param $string
     * @return String
     */
	public static function retornaStringComQuebraDeLinha($string)
	{
		return $string . QUEBRA_DE_LINHA;
	}
	
	/**
	 * Retorna uma string entre o caracter passados por parametros
	 * @param $string
	 * @param $caracter
	 */
	public static function retornaStringEntreCaracter($string, $caracter)
	{
		return $caracter . $string . $caracter;
	}

	/**
	 * Retorna uma string contendo a chamada javascript para abrir uma
	 * caixa de diálogo
	 * @param $dialogName
	 * @param $titulo
	 * @param $mensagem
	 * @param $exibeOkButton
	 */
	public static function retornaJavaScriptDialog($dialogName, $titulo, $mensagem, $exibeOkButton = true)
	{
		$exibeOkButton = (int) $exibeOkButton;
		
		return "showDialogAlert(\'{$dialogName}\', \'' . {$titulo} . '\', \'' . {$mensagem} . '\', {$exibeOkButton})";		
	}
	
	/**
	 * retorna resource do arquivo aberto
	 * @param string $fullFileName
	 * 
	 * @return Resource
	 */
	public static function abreArquivoLimpo($fullFileName)
	{	
		return fopen($fullFileName, 'w+');
	}
	
	/**
	 * retorna true se conseguir escrever no arquivo
	 * @param $fileResource
	 * @param $linha
	 */
	public static function escreveLinhaFileResource($fileResource, $linha)
	{
		$tempReturn = false;
		
		$bytesEscritos = fputs($fileResource, $linha);
		
		if ($bytesEscritos)
			$tempReturn = true;
		
		return ($tempReturn);
	}
	
	/**
	 * retorna true se conseguir fechar o arquivo
	 * @param $fileResource
	 */
	public static function fechaArquivo($fileResource)
	{
		return fclose($fileResource);
	}

	/**
	 * Formata a visualização do print_r(), var_dump(), var_export() para melhor compreensão.
	 * 
	 * @param mixed $var Variável para debug.
	 * @param bool $detalhar Detalhar conteúdo.
	 * @param bool $export Exportar o debug em vez de imprimir.
	 * @param bool $canDie Encerrar o script.
	 * @return string Conteúdo do debug.
	 */
	public static function print_debug($var, $detalhar = false, $export = false, $canDie = false)
	{	
		$retorno = '<pre>';

        if($detalhar)
            $retorno .= var_export($var, true);
        else
            $retorno .= print_r($var, true);
        
        $retorno .= '</pre>';
                
        if($export)
            return $retorno;
        else{
        	echo $retorno;
			if ($canDie)
        		exit;
        }
	}
	
	/**
	 * escapa os caracteres HTML necessarios para visualizacao de formulario DOJO
	 * @param $formHTMLString
	 */
	public static function escapaCaracteresFormDialogDOJO($formHTMLString)
	{
		$tempReturn = $formHTMLString;
		
		$tempReturn = str_replace("'", '"', $tempReturn);
		$tempReturn = str_replace('"', '\\"', $tempReturn);
		$tempReturn = str_replace(PHP_EOL, '', $tempReturn);
		        
        return $tempReturn;
	}

    /**
     * Codifica um valor
     * @param mixed $valor
     * @param integer $operacao
     */
    
    public static function codificar($valor, $operacao = CODIFICAR_OBJETO_TO_ENCODED_STRING)
    {
    	if ($operacao = CODIFICAR_OBJETO_TO_ENCODED_STRING)
    		return self::objectToEncodedString($valor);
    	else if ($operacao = CODIFICAR_ENCODED_STRING_TO_ARRAY)
    		return self::encodedStringToArray($valor);
    	else
    		throw new Exception(MSG_ERRO_CODIFICAR_SEM_OPERACAO);
    }
    
    /**
     * converte uma string codificada em um array
     * @param String $encodedString
     * 
     * @return array
     */
    public static function encodedStringToArray($encodedString)
    {
    	return json_decode($encodedString, true);
    }
    
    /**
     * converte um objeto em uma string codificada
     * @param Object $object
     * 
     * @return String
     */
    public static function objectToEncodedString($object)
    {
    	if (is_object($object)) {
    		if (property_exists($object, 'mapper'))
    			$object->setMapper(null);
    		return json_encode((array) $object, JSON_FORCE_OBJECT);
    	}
    	else
    		throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO);
    }

    
    /**
     * retorna true se conseguir gerar o ponto de restauracao
     * @param $fullFileName
     * @param $filenameExtensionRecovery
     */
    public static function gerarPontoDeRestauracaoArquivo($fullFileName, $filenameExtensionRecovery)
    {
    	// inicializando variaveis
    	$tempReturn = false;
    	
    	// verificando se o arquivo existe
    	if (file_exists($fullFileName))
    	{
    		// recuperando caminhos
    		$caminhoArquivoOriginal = dirname($fullFileName);
    		$caminhoArquivoCopia    = $caminhoArquivoOriginal . FORM_GERADOR_RECUPERACAO_PATH_SUFIXO;
    		// recuperando o nome do arquivo
    		$nomeArquivoOriginal    = basename($fullFileName);
    		
    		// copiando arquivo de recuperacao
			$tempReturn = copy($fullFileName, $caminhoArquivoCopia . $nomeArquivoOriginal . $filenameExtensionRecovery);
    	}

		return $tempReturn;
    }
    
    /**
     * recupera os arquivos passados por parametros do ponto de restauracao
     * @param $arrayArquivosModificados
     * @param $filenameExtensionRecovery
     */
    public static function recuperarPontoDeRestauracaoArquivos($arrayArquivosModificados, $filenameExtensionRecovery)
    {
    	// loop dos arquivos que foram modificados
		foreach ($arrayArquivosModificados as $arquivoModificado) {
			try {
				// recuperando caminho do arquivo de recuperacao
				$caminhoRecuperacao = dirname($arquivoModificado) . FORM_GERADOR_RECUPERACAO_PATH_SUFIXO;
				// recuperando o nome do arquivo a ser recuperado
				$nomeArquivoOriginal = basename($arquivoModificado);
				
				// carregando nome do arquivo de restauracao
				$arquivoOrigemRestore = $caminhoRecuperacao . $arquivoModificado . $filenameExtensionRecovery;
				
				// restaurando arquivo
	            copy($arquivoOrigemRestore, $arquivoModificado);
			} catch (Exception $e) {
				
				throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . QUEBRA_DE_LINHA . $e);
			}
		}
    }
}