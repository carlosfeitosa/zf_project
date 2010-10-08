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
    	// retornando o conteudo de um arquivo
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
    	// codificando a URI
        $encodedUri = urldecode($uri);
        
        // retornando o conteudo da URI
        return file_get_contents($encodedUri);
    }
    
    /**
     * remove comentários de arquivos
     * @param $string
     * @param $enc
     * @return unknown_type
     */
    public static function removeComentariosArquivo($string)
    {
    	$pattern = "@(/\*.*?\*/)@se";
    	return preg_replace($pattern, '',$string);
    	
    }
    
    /**
     * Retorna o conteudo do .htaccess
     * @return String
     */
    public static function retornaConteudoArquivo($fullFileName)
    {
    	try {
    		    return file_get_contents($fullFileName);
    	}catch (Exception $e){
    		    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . $e->getMessage());
    	}
    }
    
    public static function escreveConteudoArquivo($fullFileName, $conteudo) {
	    try {
	    	    return file_put_contents($fullFileName, $conteudo);
	    	}catch (Exception $e){
	    	    throw new Exception(MSG_ERRO_MANIPULACAO_ARQUIVO . $e->getMessage());
	    	}
    }
	
	/**
	 * Retorna IP do usuário.
	 * 
	 * @return String
	 */
	public static function retornaUserIp()
	{
		// verificando o IP do usuario atraves dos metodos HTTP_CLIENT_IP, HTTP_X_FORWARDED_FOR e REMOTE_ADDR
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
	 * 
	 * @return String
	 */
	public static function retornaUserConnectionType()
	{
		// recuperando o tipo de conexao do usuario
		return $_SERVER["HTTP_CONNECTION"];
	}
	
	/**
	 * Retorna o nome do browser, sistema operacional utilizado.
	 * 
	 * @return String
	 */
	public static function retornaUserAgent()
	{
		// retornando informacoes sobre o agente (browser/os) do usuario
		return $_SERVER["HTTP_USER_AGENT"];
	}
	
	/**
	 * Retorna requisição do usuário.
	 * 
	 * @return Array
	 */
	public static function retornaUserRequest()
	{
		// retornando a requisicao efetuada pelo usuario
		return Zend_Controller_Front::getInstance()->getRequest();
	}
	
	/**
	 * Checa se a aplicacao está rodando em ambiente de desenvolvimento
	 * 
	 * @return Boolean
	 */
	public static function ambienteDesenvolvimento()
	{
		// verificando se o aplicacao esta rodando em ambiente de desenvolvimento
		return (strpos(APPLICATION_ENV, 'development') !== false);
	}
	
	/**
	 * Retorna a data passada em timestamp ou timestamp atual se não for passado nenhum parametro
	 * 
	 * @param String $data
	 * 
	 * @return Integer
	 */
	public static function retornaTimestamp($data = null)
	{
		// verificando se o parametro $data foi passado
		if ($data != null) {
			// retornando o resultado da conversao da data
			return strtotime($data);
		} else {
			// retornando a datahora atual
		    return Zend_Date::now()->getTimestamp();	
		}
	}
	
	/**
	 * Retorna o datetime atual
	 * 
	 * @return String
	 */
	public static function retornaDateTimeAtual()
	{
		// retornando o datetime atual
	    return Zend_Date::now('en-us');
	}
	
	/**
	 * Retorna espaços em branco, de acordo com o nível de identação
	 * 
	 * @param $nivel
	 * 
	 * @return String
	 */
	public static function retornaIdentacao($nivel)
	{
		// inicializando variaveis
		$resultado = '';
		
		// loop para a quantidade de niveis
		for ($i = 1; $i <= $nivel; $i++) {
			// incrementando identacao
			$resultado .= IDENTACAO_PADRAO;
		}
		
		// retornando a identacao
		return $resultado;
	}
	
	/**
     * Retorna uma string com quebra de linha
     * 
     * @param String $string
     * 
     * @return String
     */
	public static function retornaStringComQuebraDeLinha($string)
	{
		// retornando a string com quebra de linha
		return $string . QUEBRA_DE_LINHA;
	}
	
	/**
	 * Retorna uma string entre o caracter passados por parametros
	 * 
	 * @param String $string
	 * @param String $caracter
	 * 
	 * @return String
	 */
	public static function retornaStringEntreCaracter($string, $caracter)
	{
		// retornando a string entre o caracter
		return $caracter . $string . $caracter;
	}

	/**
	 * Retorna uma string contendo a chamada javascript para abrir uma
	 * caixa de diálogo
	 * 
	 * @param String $dialogName
	 * @param String $titulo
	 * @param String $mensagem
	 * @param Boolean $exibeOkButton
	 * 
	 * @return String
	 */
	public static function retornaJavaScriptDialog($dialogName, $titulo, $mensagem, $exibeOkButton = true)
	{
		// verificando se deve exibir o botao OK
		$exibeOkButton = (int) $exibeOkButton;
		
		// retornando a chamada javascript
		return "showDialogAlert(\'{$dialogName}\', \'' . {$titulo} . '\', \'' . {$mensagem} . '\', {$exibeOkButton})";		
	}
	
	/**
	 * Retorna resource do arquivo aberto
	 * 
	 * @param string $fullFileName
	 * 
	 * @return Resource
	 */
	public static function abreArquivoLimpo($fullFileName)
	{	
		// retornando o resource de um arquivo aberto
		return fopen($fullFileName, 'w+');
	}
	
	/**
	 * Retorna se conseguir escrever no arquivo
	 * 
	 * @param Resource $fileResource
	 * @param String $linha
	 * 
	 * @return Boolean
	 */
	public static function escreveLinhaFileResource($fileResource, $linha)
	{
		// inicializando variaveis
		$tempReturn = false;

		// escrevendo no arquivo e recuperando a quantidade de bytes escritos
		$bytesEscritos = fputs($fileResource, $linha);

		// checando se foram escritos bytes (se conseguiu escrever ou nao)
		if ($bytesEscritos)
			$tempReturn = true;
		
		// retornando resultado
		return ($tempReturn);
	}
	
	/**
	 * Retorna se conseguir fechar o arquivo
	 * 
	 * @param $fileResource
	 * 
	 * @return Boolean
	 */
	public static function fechaArquivo($fileResource)
	{
		// retorna se conseguiu fechar o arquivo
		return fclose($fileResource);
	}

	/**
	 * Formata a visualização do print_r(), var_dump(), var_export() para melhor compreensão.
	 * 
	 * @param Mixed $var Variável para debug.
	 * @param Boolean $detalhar Detalhar conteúdo.
	 * @param Boolean $export Exportar o debug em vez de imprimir.
	 * @param Boolean $canDie Encerrar o script.
	 * 
	 * @return String
	 */
	public static function print_debug($var, $detalhar = false, $export = false, $canDie = false)
	{
		// incrementando tag de impressao
		$retorno = '<pre>';

		// verificando se eh preciso detalhar o conteudo
        if ($detalhar)
            $retorno .= var_export($var, true);
        else
            $retorno .= print_r($var, true);

		// incrementando tag de impressao
        $retorno .= '</pre>';

        // verificando se o retorno deve ser exportado (retornado) ou imprimido
        if ($export)
        	// retornando o resultado
			return $retorno;
        else {
        	// imprimindo o resultado
        	echo $retorno;
        	
        	// verificando se apos a impressao do resultado a aplicacao deve ser interrompida
			if ($canDie)
				// interrompendo execucao
        		exit;
        }
	}
	
	/**
	 * Escapa os caracteres HTML necessarios para visualizacao de formulario DOJO
	 * 
	 * @param String $formHTMLString
	 * 
	 * @return String
	 */
	public static function escapaCaracteresFormDialogDOJO($formHTMLString)
	{
		// inicializando variaveis
		$tempReturn = $formHTMLString;

		// fazendo substituicoes de caracteres invalidos
		$tempReturn = str_replace("'", '"', $tempReturn);
		$tempReturn = str_replace('"', '\\"', $tempReturn);
		$tempReturn = str_replace(PHP_EOL, '', $tempReturn);

		// retornando o resultado
        return $tempReturn;
	}

    /**
     * Codifica um valor
     * 
     * @param Mixed $valor
     * @param Integer $operacao
     * 
     * @return String
     */
    public static function codificar($valor, $operacao = CODIFICAR_OBJETO_TO_ENCODED_STRING)
    {
    	// verificando o tipo de operacao
    	if ($operacao = CODIFICAR_OBJETO_TO_ENCODED_STRING)
    		// retornando a codificacao do objeto em string codificada
    		return self::objectToEncodedString($valor);
    	else if ($operacao = CODIFICAR_ENCODED_STRING_TO_ARRAY)
    		// retornando a codificacao de string codificada para array
    		return self::encodedStringToArray($valor);
    	else
    		throw new Exception(MSG_ERRO_CODIFICAR_SEM_OPERACAO);
    }
    
    /**
     * Converte uma string codificada em um array
     * 
     * @param String $encodedString
     * 
     * @return Array
     */
    public static function encodedStringToArray($encodedString)
    {
    	// retornando o array codificado a partir da string codificada
    	return json_decode($encodedString, true);
    }
    
    /**
     * Converte um objeto em uma string codificada
     * 
     * @param Object $object
     * 
     * @return String
     */
    public static function objectToEncodedString($object)
    {
    	// verificando se o parametro passado eh um objeto
    	if (is_object($object)) {
    		// verificando se o objeto possui mapper
    		if (property_exists($object, 'mapper'))
    			// removendo mapper
    			$object->setMapper(null);

			// retornando string codificada apartir de um objeto
    		return json_encode((array) $object, JSON_FORCE_OBJECT);
    	}
    	else
    		throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO);
    }

    /**
     * Retorna se conseguir gerar o ponto de restauracao
     * 
     * @param String $fullFileName
     * @param String $filenameExtensionRecovery
     * 
     * @return Boolean
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
     * Recupera os arquivos passados por parametros do ponto de restauracao
     * 
     * @param Array $arrayArquivosModificados
     * @param String $filenameExtensionRecovery
     * 
     * @return void
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

    /**
     * Retorna um valor tipado, retornando null quando o valor for vazio
     * 
     * @param Mixed $valor
     * @param Integer $tipo
     * @param Boolean $checaNulidade
     * 
     * @return Mixed
     */
    public static function retornaValorTipado($valor, $tipo, $checaNulidade = false)
    {
    	// verificando o tipo informado
    	switch ($tipo) {
    	case TIPO_INTEIRO:
    		// transformando o valor em inteiro, para comparacao
    		$valorInteiro = (Int) $valor;
    		
    		// verificando se o valor eh do tipo informado
    		if ((!is_integer($valorInteiro)) or ($valorInteiro != $valor))
    			throw new Exception(MSG_ERRO_TIPO_ERRADO_TIPO_INTEIRO);

    		// verificando a nulidade do valor
			if (($checaNulidade) and (!$valor))
				return null;
			else
				return (Int) $valorInteiro;

    		break;
    	case TIPO_STRING:
    		$valorString = (String) $valor;
    		
			// verificando se o valor eh do tipo informado
			if ((!is_string($valorString)) and ($valorString != $valor))
				throw new Exception(MSG_ERRO_TIPO_ERRADO_TIPO_STRING);

			// verificando nulidade do valor
			if (($checaNulidade) and (!strlen($valor)))
				return null;
			else
				return (String) $valor;

    		break;
    	case TIPO_BOOLEAN:
    		// transformando o valor em boolean, para comparacao
    		$valorBoolean = (Boolean) $valor;

    		// verificando se o valor eh do tipo informado
    		if ((!is_bool($valorBoolean)) or ($valorBoolean != $valor))
    			throw new Exception(MSG_ERRO_TIPO_ERRADO_TIPO_BOOLEAN);

    		// verificando nulidade do valor
    		if (($checaNulidade) and (is_null($valor)))
    			return null;
    		else
    			return $valorBoolean;
    		
    	default:
    		throw new Exception(MSG_ERRO_TIPO_NAO_TRATADO);
    	}
    }

    /**
     * Retorna um array filtrado
     * 
     * @param Array $array
     * @param Array $arrayFilter
     * 
     * @return Array
     */
    private function filtraArray(array $array, array $arrayFilter)
    {  	
    	// loop dos filtros
    	foreach ($arrayFilter as $filter) {
    		
    		// verificando se existem as chaves do array necessarios para utilizacao do filtro
	    	if (!array_key_exists(ARRAY_FILTER_CHAVE_POSICAO, $filter))
				throw new Exception(MSG_ERRO_ARRAY_FILTER_CHAVE_POSICAO_NAO_ENCONTRADA);
	    	if (!array_key_exists(ARRAY_FILTER_CHAVE_FILTRO, $filter))
				throw new Exception(MSG_ERRO_ARRAY_FILTER_CHAVE_FILTRO_NAO_ENCONTRADA);

			// loop dos valores
			foreach ($array as $valor) {

				// descobrindo qual filtro utilizar
				switch ($filter[ARRAY_FILTER_CHAVE_POSICAO]) {
    				case ARRAY_FILTER_POSITION_BEGIN:
    					// procurando pelo filtro no inicio do valor
						if (strpos($valor, $filter[ARRAY_FILTER_CHAVE_FILTRO]) === 0)
							// incrementando array de resultados
							unset($array[array_search($valor, $array)]);
						break;
    				case ARRAY_FILTER_POSITION_MIDDLE:
    					// procurando pelo filtro no meio do valor
    					if (false !== strpos($valor, $filter[ARRAY_FILTER_CHAVE_FILTRO]))
							// incrementando array de resultados
							unset($array[array_search($valor, $array)]);
    					break;
    				case ARRAY_FILTER_POSITION_END:
    					// procurando pelo filtro no final do valor
    					if (strpos($valor, $filter[ARRAY_FILTER_CHAVE_FILTRO], strlen($valor) - strlen($filter[ARRAY_FILTER_CHAVE_FILTRO])) === 0)
							// incrementando array de resultados
							unset($array[array_search($valor, $array)]);
    					break;
    				default:
    					
    					throw new Exception(MSG_ERRO_ARRAY_FILTER_TIPO_OPERACAO_NAO_CONHECIDA);
				}
			}
    	}
    	
      	// retornando array de resultados
      	return $array;
    }

    /**
     * Retorna um array contendo o filtro para arquivos ocultos
     * 
     * @return Array
     */
    public static function retornaArrayFiltroArquivosOcultos()
    {
    	// retornando array de resultados
    	return array(ARRAY_FILTER_CHAVE_FILTRO => '.', ARRAY_FILTER_CHAVE_POSICAO => ARRAY_FILTER_POSITION_BEGIN);
    }

    /**
     * Retorna um array contendo o filtro para arquivos que possuam "create" no nome
     * 
     * @param String $stringBusca
     * 
     * @return Array
     */
    public static function retornaArrayFiltroNomesArquivos($stringBusca)
    {
    	// retornando array de resultados
    	return array(ARRAY_FILTER_CHAVE_FILTRO => $stringBusca, ARRAY_FILTER_CHAVE_POSICAO => ARRAY_FILTER_POSITION_MIDDLE);
    }

    /**
     * Retorna array contendo os arquivos dentro uma pasta especificada
     * 
     * @param String $caminhoArquivos
     * @param Array $arrayFilter
     * 
     * @return Array
     */
    public static function retornaArrayArquivosCaminho($caminhoArquivos, array $arrayFilter = null)
    {
    	// recuperando os nomes dos arquivos em um array
		$arrayNomesArquivos = scandir($caminhoArquivos);
		
		// verificando se foi especificado um array contendo os filtros a serem aplicados
		if ((isset($arrayFilter)) and (count($arrayFilter)))
			$arrayNomesArquivos = self::filtraArray($arrayNomesArquivos, $arrayFilter);

		// retornando o array de resultados
		return $arrayNomesArquivos;
    }

    /**
     * Retorna o nome completo de um arquivo sorteado dentro de um diretorio especificado
     * 
     * @param String $caminhoArquivos
     * 
     * @return String
     */
    public static function retornaNomeArquivoAleatorio($caminhoArquivos)
    {
    	// verificando se o caminho existe
    	if (!file_exists($caminhoArquivos))
    		throw new Exception(MSG_ERRO_PATH_INEXISTENTE . QUEBRA_DE_LINHA . "path: {$caminhoArquivos}");

		// inicializando array de filtros
		$arrayFilter = array(self::retornaArrayFiltroArquivosOcultos());

		// recuperando os nomes dos arquivos em um array
		$arrayNomesArquivos = self::retornaArrayArquivosCaminho($caminhoArquivos, $arrayFilter);

		// embaralhando o array, sorteando um valor e retornando-o
		return $arrayNomesArquivos[array_rand($arrayNomesArquivos, 1)];
    }
}