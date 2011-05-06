<?php
/**
 * Controlador Util
 * 
 */

class Basico_OPController_UtilOPController
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
		Basico_OPController_PersistenceOPController::bdChecaConexao($application);
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
     * @return String
     */
    public static function removeComentariosArquivo($string)
    {
    	$patterns = array('@(/\*.*?\*/)@se',
    	                  '@(--.*?\n)@se',
    	                  '@(//.*?\n)@se'
    	                 );
    	
    	return preg_replace($patterns, '',$string);
    	
    }
    
    /**
     * Retorna o nome de um arquivo concatenando no final o nome de uma lingua, trocando a extensao se desejado
     * 
     * @param String $fullFileName
     * @param Basico_Model_Categoria $objCategoriaLingua
     * @param String $extensionReplace
     * 
     * @return String
     */
    public static function retornaNomeArquivoConcatenadoLingua($fullFileName, Basico_Model_Categoria $objCategoriaLingua, $extensionReplace = null)
    {
    	// inicializando variaveis
    	$extensaoOriginal = '';
    	$separadorLingua  = '';

    	// recuperando informacoes sobre o arquivo
    	$pathInfo = pathinfo($fullFileName);
    	if (array_key_exists('extension', $pathInfo))
    		$extensaoOriginal = $pathInfo['extension'];
    	else
    		$separadorLingua = '.';

    	// verificando se deve-se trocar a extensao
    	if ($extensionReplace)
    		$extensaoTroca = $extensionReplace;
    	else
    		$extensaoTroca = $extensaoOriginal;

    	// verificando se a extensao possui ponto no inicio
    	if (substr($extensaoTroca, 0, 1) !== '.')
    		$extensaoTroca = '.' . $extensaoTroca;

    	// transformando o nome do arquivo
    	$fullFileName = substr($fullFileName, 0, strlen($fullFileName) - strlen($extensaoOriginal)) . $separadorLingua . $objCategoriaLingua->nome . $extensaoTroca;

    	// retornando nome do arquivo modificado
    	return $fullFileName;
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
	 * @return Zend_Controller_Request_Http
	 */
	public static function retornaUserRequest()
	{
		// retornando a requisicao efetuada pelo usuario
		return Zend_Controller_Front::getInstance()->getRequest();
	}

	/**
	 * Retorna a url da requisicao atual do usuario
	 * 
	 * @return String
	 */
	public static function retornaUrlUserRequest()
	{
		// recuperando o request atual
		$requestAtual = self::retornaUserRequest();

		// montando a url de retorno
		$urlRetorno = self::retornaBaseUrl() . "{$requestAtual->getModuleName()}/{$requestAtual->getControllerName()}/{$requestAtual->getActionName()}";

		// retornando a url atual do request
		return $urlRetorno;
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
	 * Retorna o datetime atual no locale passado ou no default que é 'en-us'
	 * @var String $locale
	 * @return String
	 */
	public static function retornaDateTimeAtual($locale = "en-us")
	{
		// retornando o datetime atual
	    return Zend_Date::now($locale);
	    
	}

	/**
	 * Retorna, em microsegundo, a datahora atual
	 * 
	 * @return Integer
	 */
	public static function retornaMicrosegundosDateTimeAtual()
	{
		// processando data hora
		$microtimeDateTimeAtual = microtime();
		$microtimeDateTimeAtual = explode(' ', $microtimeDateTimeAtual);
		$microtimeDateTimeAtual = $microtimeDateTimeAtual[1] + $microtimeDateTimeAtual[0];

		// retornando os microsegundos do datetime atual
		return $microtimeDateTimeAtual;
	}

	/**
	 * Retorna a diferenca, em microsegundos, entre duas datas em microsegundos
	 * 
	 * @param Integer $dataHoraMicrotime1
	 * @param Integer $dataHoraMicrotime2
	 */
	public static function retornaDiferencaArredondadaMicrotime($dataHoraMicrotime1, $dataHoraMicrotime2)
	{
		// retornando a diferenca arredondada
		return round($dataHoraMicrotime1 - $dataHoraMicrotime2, 4);
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

		// removendo escape
		$tempReturn = str_replace(ASPAS_SIMPLES_ESCAPADA_HTML, "'", $tempReturn);
		$tempReturn = str_replace('\"', '"', $tempReturn);
		
		// escapando caracteres
		$tempReturn = str_replace("'" , '"', $tempReturn);
		$tempReturn = str_replace('"' , '\\"', $tempReturn);
		$tempReturn = str_replace(PHP_EOL, '', $tempReturn);

		// retornando o resultado
        return $tempReturn;
	}

	/**
	 * Retorna uma string com as aspas escapadas para uso em javascript contido em um arquivo php
	 * 
	 * @param String $string
	 * 
	 * @return String
	 */
	public static function escapaAspasStringJavascriptPHP($string)
	{
		// inicializando variaveis
		$tempReturn = $string;
		
		// escapando caracteres
		$tempReturn = str_replace("'", "\\'", $tempReturn);
		$tempReturn = str_replace('"', '\\"', $tempReturn);
		
		// retornando o resultado
		return $tempReturn;
	}

	/**
	 * Retorna um array contendo os atributos de um objeto
	 * 
	 * @param Object $objeto
	 * @param Array $blacklistAtributos
	 * 
	 * @return Array|null
	 */
	public static function objectToArray($objeto, array $blacklistAtributos = array())
	{
		// verificando se o parametro eh um objeto
		if (!is_object($objeto))
			return null;

		// inicializando variaveis
		$returnArray = array();

		// criando copia do objeto
		$objetoCopia = $objeto;

   		// verificando se o objeto possui mapper
   		if (method_exists(get_class($objetoCopia), 'setMapper'))
   			// removendo mapper
   			$objetoCopia->setMapper(null);

   		// recuperando atributos do objeto
   		$arrayAtributosObjetoCopia = self::retornaArrayAtributosGetObjeto($objetoCopia);

		// verificando se foi passado um blacklist para remocao de elementos
		if (count($blacklistAtributos) > 0) {
			// loop para remocao dos elementos
			foreach ($blacklistAtributos as $atributoBlackList) {
				// recuperando a chave do elemento da blacklist
				$chaveElementoBlackList = array_search($atributoBlackList, $arrayAtributosObjetoCopia);

				// verificando se a chave foi recuperada
				if ($chaveElementoBlackList !== false) {
					// removendo o elemento do array de atributos
					unset($arrayAtributosObjetoCopia[$chaveElementoBlackList]);
				}
			}
		}

		// loop para recuperar as informacoes do objeto
		foreach ($arrayAtributosObjetoCopia as $atributoObjetoCopia) {
			// montando nome do metodo que recupera objeto relacionado ao objeto passado por parametro
			$nomeAtributoInicioMaiusculo = $atributoObjetoCopia;
			$nomeAtributoInicioMaiusculo[0] = strtoupper($nomeAtributoInicioMaiusculo[0]);
			$nomeMetodoRecuperacaoObjetoVinculado = "get{$nomeAtributoInicioMaiusculo}Object";

			// verificando se o metodo existe no objeto
			if (method_exists(get_class($objetoCopia), $nomeMetodoRecuperacaoObjetoVinculado)) {
				// recuperando objeto relacionado
				$objetoRelacionado = $objetoCopia->$nomeMetodoRecuperacaoObjetoVinculado();

				// verificando se o objeto relacionado possui o atributo "descricao"
				if (property_exists(get_class($objetoRelacionado), '_rotulo')) {
					// recuperando a descricao da tupla do objeto relacionado
					$valorObjetoRelacionado = $objetoRelacionado->rotulo;
				} else if (property_exists(get_class($objetoRelacionado), '_constanteTextual')) {
					// recuperando traducao da constante textual
					$valorObjetoRelacionado = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL($objetoRelacionado->constanteTextual);
				} else {
					// zerando o valor
					$valorObjetoRelacionado = null;
				}

				// setando informacao no array de resultados
				$returnArray[$atributoObjetoCopia] = $valorObjetoRelacionado;
			} else {
				// verificando se o atributo precisa ser traduzido
				if (strpos($atributoObjetoCopia, 'constanteTextual') !== false) {
					// recuperando traducao e setando no array de resultados
					$returnArray[$atributoObjetoCopia] = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL($objetoCopia->$atributoObjetoCopia);
				} else {
					// recuperando informacao e setando no array de resultados
					$returnArray[$atributoObjetoCopia] = $objetoCopia->$atributoObjetoCopia;
				}				
			}
		}

		// retornando o array de resultados
		return $returnArray;
	}

	/**
	 * Retorna um array contendo os atributos de um objeto, atraves dos metodos get do proprio objeto
	 * 
	 * @param Object $objeto
	 * 
	 * @return Array|null
	 */
	public static function retornaArrayAtributosGetObjeto($objeto)
	{
		// verificando se o parametro eh um objeto
		if (!is_object($objeto))
			return null;

		// inicializando variaveis
		$returnArray = array();

		// recupernado os metodos do objeto
		$metodosObjeto = get_class_methods(get_class($objeto));

		// loop para localizar os metodos get
		foreach ($metodosObjeto as $metodoObjeto) {
			// vefificando se o nome do metodo se inicia com "get"
			if (substr($metodoObjeto, 0, 3) === 'get') {
				// transformando o nome do metodo em nome do atributo
				$nomeAtributo = str_replace('get', '', $metodoObjeto);
				// convertendo para minusculo a primeira letra do nome do atributo
				$nomeAtributo[0] = strtolower($nomeAtributo[0]);

				// adicionando o nome do atributo no array de resultados
				$returnArray[] = $nomeAtributo;
			}
		}

		// montando array de filtros para exclusao de elementos nao desejados
		$arrayFilter   = array();
		$arrayFilter[] = array(ARRAY_FILTER_CHAVE_FILTRO => 'mapper', ARRAY_FILTER_CHAVE_POSICAO => ARRAY_FILTER_EXCLUDE_POSITION_END);
		$arrayFilter[] = array(ARRAY_FILTER_CHAVE_FILTRO => 'Object', ARRAY_FILTER_CHAVE_POSICAO => ARRAY_FILTER_EXCLUDE_POSITION_END);

		// filtrando o array para excluir elementos nao desejados
		$returnArray = self::filtraArray($returnArray, $arrayFilter);
		
		array(ARRAY_FILTER_CHAVE_FILTRO => '.', ARRAY_FILTER_CHAVE_POSICAO => ARRAY_FILTER_EXCLUDE_POSITION_BEGIN);

		return $returnArray;
	}

	/**
	 * Retorna um array contendo os atributos de sistema, nos objetos, que nao devem ser utilizados (blacklist)
	 * 
	 * @return 
	 */
	private static function retornaArrayBlackListObjetoAtributosSistema()
	{
		// instanciando variaveis
		$arrayBlackListAtributosSistema = array();

		// incluindo os atributos da blacklist
		$arrayBlackListAtributosSistema[] = 'id';
		$arrayBlackListAtributosSistema[] = 'rowinfo';
		$arrayBlackListAtributosSistema[] = 'pessoa';

		// retornando um array contendo os atributos de objetos que estao relacionados ao sistema
		return $arrayBlackListAtributosSistema;
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
    	switch ($operacao) {
    		// verificando se a codificacao eh para codificar um objeto em string codificada
    		case CODIFICAR_OBJETO_TO_ENCODED_STRING:
    			// retornando a codificacao do objeto em string codificada
    			return self::objectToEncodedString($valor);
    		break;
    		// verificando se a codificacao eh para codificar uma string em array
    		case CODIFICAR_ENCODED_STRING_TO_ARRAY:
    			// retornando a codificacao de string codificada para array
    			return self::encodedStringToArray($valor);
    		break;
    		case CODIFICAR_OBJETO_TO_ARRAY:
    			// retornando a codificacao de um objeto em array
    			return self::objectToArray($valor);
    		break;
    		case CODIFICAR_OBJETO_TO_ARRAY_USANDO_BLACKLIST_ATRIBUTOS_SISTEMA:
    			// retornando a codificacao de um objeto em array, utilizando o blacklist de atributos do sistema
    			return self::objectToArray($valor, self::retornaArrayBlackListObjetoAtributosSistema());
    		break;
    		default:
    			throw new Exception(MSG_ERRO_CODIFICAR_SEM_OPERACAO);
    	}
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
		// verificando se o parametro eh um objeto
    	self::verificaVariavelRepresentaObjeto($object, true);

   		// verificando se o objeto possui mapper
   		if (property_exists($object, 'mapper'))
   			// removendo mapper
   			$object->setMapper(null);

		// retornando string codificada apartir de um objeto
   		return json_encode((array) $object, JSON_FORCE_OBJECT);
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
				$arquivoOrigemRestore = $caminhoRecuperacao . $nomeArquivoOriginal . $filenameExtensionRecovery;
				
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
    public static function filtraArray(array $array, array $arrayFilter)
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
    				case ARRAY_FILTER_EXCLUDE_POSITION_BEGIN:
    					// procurando pelo filtro no inicio do valor
						if (strpos($valor, $filter[ARRAY_FILTER_CHAVE_FILTRO]) === 0)
							// incrementando array de resultados
							unset($array[array_search($valor, $array)]);
						break;
    				case ARRAY_FILTER_EXCLUDE_POSITION_MIDDLE:
    					// procurando pelo filtro no meio do valor
    					if (false !== strpos($valor, $filter[ARRAY_FILTER_CHAVE_FILTRO]))
							// incrementando array de resultados
							unset($array[array_search($valor, $array)]);
    					break;
    				case ARRAY_FILTER_EXCLUDE_POSITION_END:
    					// setando a diferenca entre o tamanho do filtro e o tamanho da string a ser filtrada
    					$diferencaStrings = strlen($valor) - strlen($filter[ARRAY_FILTER_CHAVE_FILTRO]);
						// verificando o valor da diferenca
						if ($diferencaStrings < 0) {
							// transformando a diferenca em um valor positivo
							$diferencaStrings = $diferencaStrings * -1;
						}

    					// procurando pelo filtro no final do valor
    					if (($diferencaStrings < strlen($valor)) and (strpos($valor, $filter[ARRAY_FILTER_CHAVE_FILTRO], $diferencaStrings) === $diferencaStrings))
							// incrementando array de resultados
							unset($array[array_search($valor, $array)]);
    					break;
    				case ARRAY_FILTER_INCLUDE_POSITION_BEGIN:
    					// procurando pelo filtro no inicio do valor
						if (strpos($valor, $filter[ARRAY_FILTER_CHAVE_FILTRO]) !== 0)
							// incrementando array de resultados
							unset($array[array_search($valor, $array)]);
						break;
    				case ARRAY_FILTER_INCLUDE_POSITION_MIDDLE:
    					// procurando pelo filtro no meio do valor
    					if (false === strpos($valor, $filter[ARRAY_FILTER_CHAVE_FILTRO]))
							// incrementando array de resultados
							unset($array[array_search($valor, $array)]);
    					break;
    				case ARRAY_FILTER_INCLUDE_POSITION_END:
    					// procurando pelo filtro no final do valor
    					if (strpos($valor, $filter[ARRAY_FILTER_CHAVE_FILTRO], strlen($valor) - strlen($filter[ARRAY_FILTER_CHAVE_FILTRO])) === false)
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
    	return array(ARRAY_FILTER_CHAVE_FILTRO => '.', ARRAY_FILTER_CHAVE_POSICAO => ARRAY_FILTER_EXCLUDE_POSITION_BEGIN);
    }

    /**
     * Retorna um array contendo o filtro para arquivos que possuam a string passada no nome
     * 
     * @param String $stringBusca
     * 
     * @return Array
     */
    public static function retornaArrayFiltroNomesArquivos($stringBusca)
    {
    	// retornando array de resultados
    	return array(ARRAY_FILTER_CHAVE_FILTRO => $stringBusca, ARRAY_FILTER_CHAVE_POSICAO => ARRAY_FILTER_EXCLUDE_POSITION_MIDDLE);
    }
    
    /**
     * Retorna um array contendo o filtro para arquivos com a extensao .sql
     * 
     * @param String $stringBusca
     * 
     * @return Array
     */
    public static function retornaArrayFiltroNomesArquivosSQL($stringBusca = ".sql")
    {
    	// retornando array de resultados
    	return array(ARRAY_FILTER_CHAVE_FILTRO => $stringBusca, ARRAY_FILTER_CHAVE_POSICAO => ARRAY_FILTER_INCLUDE_POSITION_END);
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

    /**
     * Registra um elemento chave/valor na sessao
     * 
     * @param String $chave
     * @param String $valor
     * 
     * @return Boolean
     */
    public static function registraValorSessao($chave, $valor)
    {
    	// colocando elemento chave/valor na sessao
    	Zend_Registry::set($chave, $valor);
    	
    	return true;
    }

    /**
     * Retorna um valor existente na sessao, atraves de uma chave passada por parametro
     * 
     * @param String $chave
     * 
     * @return Mixed|null
     */
    public static function retornaValorSessao($chave)
    {
    	// verificando se existe o valor na sessao
    	if (Zend_Registry::isRegistered($chave))
    		return Zend_Registry::get($chave);

		return null;
    }

    /**
     * Remove um valor da sessao
     * 
     * @param String $chave
     * 
     * @return True
     */
    public static function removeValorSessao($chave)
    {
    	// verificando se existe o valor na sessao
    	if (Zend_Registry::isRegistered($chave)) {
    		// removendo o valor da sessao
    		Zend_Registry::set($chave, null);
    	}
    	
    	return true;
    }

    /**
     * Verifica se o parametro passado representa um objeto
     * 
     * @param Object $objeto
     * @param Boolean $estouraException
     * 
     * @return Boolean
     */
    public static function verificaVariavelRepresentaObjeto($objeto, $estouraException = true)
    {
    	// verificando se o parametro nao eh um objeto
    	if (!is_object($objeto)) {
    		// verificando se o parametro de estouro de excecao foi setado para true
    		if ($estouraException)
    			// estourando excessao
    			throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO);
    		else
    			return false;
    	}

		return true;
    }

    /**
     * Verifica se o parametro passado representa uma instancia do nome da classe passada por parametro
     * 
     * @param Object $objeto
     * @param String $nomeClasseInstancia
     * @param String $estouraException
     */
    public static function verificaVariavelRepresentaInstancia($objeto, $classeInstancia, $estouraException = true)
    {
    	// verificando se o parametro eh um objeto
    	self::verificaVariavelRepresentaObjeto($objeto, true);

    	// verificando o objeto eh da instancia passada como parametro
    	$tempReturn = ($objeto instanceof $classeInstancia);

    	// verificnado o resultado da comparacao para estouro de excessao
    	if ((!$tempReturn) and ($estouraException))
    		throw new Exception(MSG_ERRO_VALOR_NAO_OBJETO_MODELO . $classeInstancia);

    	// retornando se o objeto eh uma instancia da classe passada por parametro
    	return $tempReturn;
    }

    /**
     * Retorna o nome do modulo de um objeto
     * 
     * @param Object $objeto
     * 
     * @return String
     */
    public static function retornaNomeModuloPorObjeto($objeto)
    {
    	// verificando se o parametro eh um objeto
    	self::verificaVariavelRepresentaObjeto($objeto, true);

    	// recuperando o nome da classe
    	$nomeClasse = get_class($objeto);

    	// retornando o nome do modulo
    	return substr($nomeClasse, 0, strpos($nomeClasse, '_'));
    }

    /**
     * Retorna o nome do modulo de um objeto atraves do nome do objeto
     * 
     * @param String $nomeObjeto
     * 
     * @return Sttring
     */
    public static function retornaNomeModuloPorNomeObjeto($nomeObjeto)
    {
    	// retornando o nome do modulo
    	return substr($nomeObjeto, 0, strpos($nomeObjeto, '_'));
    }

    /**
     * Retorna o nome do modelo relacionado a um OPController
     * 
     * @param Object $objetoOPController
     * 
     * @return String
     */
    public static function retornaNomeModeloOPControllerPorObjetoOPController($objetoOPController)
    {
    	// verificando se o parametro eh um objeto
    	self::verificaVariavelRepresentaObjeto($objetoOPController, true);

    	// recuperando o nome da classe
    	$nomeClasse = get_class($objetoOPController);

    	// recuperando o nome do modulo
    	$nomeModuloClasse = self::retornaNomeModuloPorObjeto($objetoOPController);

    	// montando o nome do modelo
    	$nomeModeloObjetoOPController = str_replace($nomeModuloClasse . '_OPController_', $nomeModuloClasse . '_Model_', $nomeClasse);
    	$nomeModeloObjetoOPController = str_replace('OPController', '', $nomeModeloObjetoOPController);

    	// retornando o nome do modelo relacionado a um OPController
    	return $nomeModeloObjetoOPController;
    }

    /**
     * Retorna o nome do modelo relacionado a um OPController
     * 
     * @param String $nomeOPController
     * 
     * @return String
     */
    public static function retornaNomeModeloOPControllerPorNomeOPController($nomeOPController)
    {
    	// recuperando o nome do modulo
    	$nomeModuloClasse = self::retornaNomeModuloPorNomeObjeto($nomeOPController);

    	// montando o nome do modelo
    	$nomeModeloObjetoOPController = str_replace($nomeModuloClasse . '_OPController_', $nomeModuloClasse . '_Model_', $nomeOPController);
    	$nomeModeloObjetoOPController = str_replace('OPController', '', $nomeModeloObjetoOPController);

    	// retornando o nome do modelo relacionado a um OPController
    	return $nomeModeloObjetoOPController;
    }

    /**
     * Retorna o nome do controlador de um request
     * 
     * @param Zend_Controller_Request_Abstract $request
     * 
     * @return String
     */
    public static function retornaNomeClasseControladorPorRequest(Zend_Controller_Request_Abstract $request)
    {
    	// retornando o nome do controlador
    	return $actionControllerName = ucfirst($request->getModuleName()) . '_' . ucfirst($request->getControllerName()) . 'Controller';
    }

    /**
     * Adiciona um elemento a um formulario
     * 
     * @param Zend_Form|Zend_Dojo_Form $form
     * @param String $tipoElemento
     * @param String $nomeElemento
     * @param Array $arrayOptions
     * 
     * @return Boolean
     */
    public static function adicionaElementoForm(&$form, $tipoElemento, $nomeElemento, $arrayOptions)
    {
    	// verificando se foi passado um form e se ele eh da instancia Zend_Form ou Zend_Dojo_Form
    	if ((!isset($form)) or !(($form instanceof Zend_Form) or ($form instanceof Zend_Dojo_Form)))
    		return false;

    	try {
    		// adicionando elemento ao formulario
    		$form->addElement($tipoElemento, $nomeElemento, $arrayOptions);

    		return true;
    	} catch (Exception $e) {
    		throw new Exception(MSG_ERRO_AO_TENTAR_ADICIONAR_ELEMENTO_AO_FORMULARIO . "{$form->name} -> {$tipoElemento} -> {$nomeElemento}");
    	}

    	return false;
    }

    /**
     * Retorna o host do servidor.
     * 
     * @return String
     */
    public static function retornaServerHost()
    {
    	return "http://" . $_SERVER['HTTP_HOST'];
    }

    /**
     * Retorna o base url da aplicacao
     * 
     * @return String
     */
    public static function retornaBaseUrl()
    {
    	return Zend_Controller_Front::getInstance()->getBaseUrl();
    }

    /**
     * Retorna uma url sem a base url
     * 
     * @param String $url
     * 
     * @return String
     */
    public static function removeBaseUrl($url)
    {
    	// retornando a url sem o baseUrl
    	return str_replace(self::retornaBaseUrl(), '', $url);
    }

	/**
	 * Retorna uma string encriptada
	 * 
	 * @param String $string
	 * 
	 * @return String
	 */
    public static function retornaStringEncriptada($string)
    {
    	// retornando a string encriptada, usando a propria string como chave
    	return crypt(md5($string), md5($string));
    }

    /**
     * Retorna uma string contendo uma url passada por parametro com as barras (/) codificadas
     * 
     * @param String $stringUrl
     * 
     * @return String
     */
    public static function codificaBarrasUrl($uncodedStringUrl)
    {
    	// retornando a url com as barras codificadas
    	return str_replace(CARACTER_BARRA_URL, CARACTER_CODIFICACAO_BARRA_URL, $uncodedStringUrl);
    }
    
    /**
     * Retorna uma string contendo uma url passada por parametro com as barras (/) decodificadas
     *
     * @param unknown_type $codedStringUrl
     * 
     * @return String
     */
    public static function decodificaBarrasUrl($codedStringUrl)
    {
    	// retornando a url com as barras codificadas
    	return str_replace(CARACTER_CODIFICACAO_BARRA_URL_HTML_ESCAPADO, CARACTER_BARRA_URL, str_replace(CARACTER_CODIFICACAO_BARRA_URL, CARACTER_BARRA_URL, $codedStringUrl));
    }

    /**
     * Valida se o request foi enviado via post. Caso negativo, redirecionada para $urlRedirect
     * 
     * @param Zend_Controller_Request_Http $request
     * 
     * @param String $urlRedirect
     * 
     * @return true|null
     */
    public static function validaPostRequest(Zend_Controller_Request_Http $request, $urlRedirect)
    {
    	// verificando se o request foi enviado via post
    	if ((!$request->isPost()) and ($urlRedirect)) {
    		// redirecionando
    		self::redirecionaUsuarioParaAction($urlRedirect);
    	}

    	return true;
    }

    /**
     * Redireciona o usuario para um action passado por parametro
     * 
     * @param String $urlAction
     * 
     * @return void
     */
    public static function redirecionaUsuarioParaAction($urlAction)
    {
   		// redirecionando
   		Zend_Controller_Action_HelperBroker::getStaticHelper('redirector')->gotoUrl($urlAction);
    }

    /**
     * Retorna o array passado por parametro em uma string JSON
     * 
     * @param Array $array
     * 
     * @return Sting
     */
    public static function codificaArrayJson($array)
    {
		// codificando e retornando a string JSON contendo o array de parametros
		return Zend_Json::encode($array);
    }

    /**
     * Valida se a URL passada é válida para $urlRedirect
     * 
     * @param String $stringUrl
     * 
     * @return true|false
     */
    
  	public static function validaUrl($stringUrl)
    {
    	// verificando se a url é válida
        return Zend_Uri::check($stringUrl);
    }

    /**
     * Decodifica uma url do MVC em nome do modulo, nome do controlador, nome da acao e parametros
     * 
     * @param String $urlMCV
     * @param String $nomeModulo
     * @param String $nomeControlador
     * @param String $nomeAcao
     * @param Array  $arrayParametros
     * 
     * @return Boolean
     */
    public static function decodeNomeModuloNomeControladorNomeAcaoParametrosPorUrlMVC($urlMCV, &$nomeModulo, &$nomeControlador, &$nomeAcao, &$arrayParametros)
    {
    	// verificando os parametros passados
    	if ((!is_null($urlMCV)) and (!is_string($urlMCV)))
    		throw new Exception(MSG_ERRO_TIPO_ERRADO_TIPO_STRING . '($urlMCV)');
    	if ((!is_null($arrayParametros)) and (!is_array($arrayParametros)))
    		throw new Exception(MSG_ERRO_TIPO_ERRADO_TIPO_ARRAY . '($parametros)');

		// decodificando a url
		$decodeArray = explode(CARACTER_BARRA_URL, $urlMCV);

		// verificando o resultado da decodificacao
		if (count($decodeArray) > 2) {
			// recuperando o resultado da decodificacao
			$nomeModulo = $decodeArray[1];
			$nomeControlador = $decodeArray[2];
			// verificando se existe acao no resultado da decodificacao
			if (isset($decodeArray[3]))
				// recuperando a acao
				$nomeAcao = $decodeArray[3];
			else
				// setando para acao default do MVC
				$nomeAcao = 'index';

			// verificando se ha decodificacao de parametros
			if (isset($decodeArray[4])) {
				// limpando o array de parametros enviado como parametro
				$arrayParametros = array();
				
				// loop para recuperacao dos parametros
				for ($i = 4; $i < count($decodeArray); $i += 2) {
					// recuperando array de parametros
					$arrayParametros[$decodeArray[$i]] = $decodeArray[$i+1];
				}
			}

			return true;
		}
		
		return false;
    }

    /**
     * Roda um codigo PHP e retorna seu resultado se houver "return" no bloco de codigo.
     * Retorna false se nao conseguir rodar o codigo (problema de parser) ou se as chamadas de funcao nao estiverem na whitelist
     * 
     * @param String $phpCode
     * 
     * @return Mixed
     */
    public static function secureEval($phpCode)
    {
    	// parseando o codigo para verificar problemas
    	 if (!self::verificaParserCodigoPHP($phpCode))
    	 	return false;

		// retornando o resultado do eval
		return @eval($phpCode);
    }

    /**
     * Parsea um codigo PHP e retorna se o codigo pode ser executado
     * 
     * @param String $phpCode
     * 
     * @return Boolean
     */
    private static function verificaParserCodigoPHP($phpCode)
    {
    	// retornando o resultado do parser
    	return @eval('return true;' . $phpCode);
    }
    
    /**
     * Exibe um dialog com o conteudo TXT passado como parametro
     * 
     * @param String $dialogId
     * @param String $dialogTitle
     * @param String $txtContent
     * @param Integer $exibirBotao
     * 
     * @return String
     */
    public static function exibirDialogMensagem($dialogId, $dialogTitle, $txtContent, $exibirBotao = 1)
    {
    	// exibindo mensagem de sucesso
    	echo "<script type='text/javascript'>showDialogAlert('{$dialogId}', '{$dialogTitle}', '{$txtContent}', {$exibirBotao});</script>";
    }

    /**
     * Retorna a chamada javascript que abre um dialog com o conteudo TXT passado como parametro
     * 
     * @param String $dialogId
     * @param String $dialogTitle
     * @param String $txtContent
     * @param Integer $exibirBotao
     * 
     * @return String
     */
    public static function retornaJavaScriptDialogMensagem($dialogId, $dialogTitle, $txtContent, $exibirBotao = 1)
    {
    	// exibindo mensagem de sucesso
    	return "showDialogAlert('{$dialogId}', '{$dialogTitle}', '{$txtContent}', {$exibirBotao});";
    }

    /**
     * Exibe um dialog com o conteudo extraido de um array
     * 
     * @param String $dialogId
     * @param String $dialogTitle
     * @param Array $arrayInfo
     * @param Integer $exibirBotao
     * 
     * @return String
     */
    public static function retornaJavaScriptDialogMensagemViaArrayInfo($dialogId, $dialogTitle, $arrayInfo, $exibirBotao = 1)
    {
    	// instanciando variaveis
		$textoDialog = '';

		if (count($arrayInfo) > 0) {
	    	// loop para montar o texto do dialog
	    	foreach ($arrayInfo as $chave => $valor) {
	    		// montando o texto que sera exibido no dialog, atraves do array passado como parametro
	    		$textoDialog .= "<b>{$chave}</b>:<br>{$valor}<br><br>";
	    	}
		} else {
			// montando resultado vazio
			$textoDialog = '';
		}

    	// removendo ultimos "<br><br>" do texto do dialog
    	$textoDialog = substr($textoDialog, 0, strlen($textoDialog)-8);

    	// retornando o resultado do metodo exibirDialogMensagem
    	return self::retornaJavaScriptDialogMensagem($dialogId, $dialogTitle, $textoDialog, $exibirBotao);
    }

    /**
     * Exibe um dialog com o conteudo extraido de um array, com o titulo de debug info
     * 
     * @param Array $arrayInfo
     * 
     * @return String
     */
    public static function retornaJavaScriptDialogMensagemViaArrayInfoDebugInfo($arrayInfo)
    {
    	// verificando se trata-se de ambiente de desenvolvimento
    	if (self::ambienteDesenvolvimento()) {
	    	// retornando o resultado do metodo exibirDialogMensagemViaArrayInfo
	    	return self::retornaJavaScriptDialogMensagemViaArrayInfo('dialogDebugInfo', ':: DEBUG INFO ::', $arrayInfo, 1);
    	}
    	
    	return;
    }

    /**
     * Envia para o cliente uma chamada javascript que muda o focus do tabcontainer para a aba especificada
     * 
     * @param String $formName
     * @param String $subFormName
     */
    public static function setaFocusAbaTabContainerDojoFormViaJavaScript($formName, $subFormName)
    {
    	// enviando javascript para setar o focus de um tabcontainer em uma aba especifica
    	echo "<script type=\"text/javascript\">dojo.addOnLoad(function () {dijit.byId('{$formName}-TabContainer').selectChild('{$subFormName}');});</script>";
    }
}