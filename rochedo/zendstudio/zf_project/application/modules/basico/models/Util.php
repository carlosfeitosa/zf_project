<?php
/**
 * Util model
 *
 * @subpackage Model
 */
class Basico_Model_Util
{
	/**
	 * Cria diretorios recursivamente.
	 * @param String $caminho
	 * @param int $folderRights
	 * @return Boolean
	 */
    public static function mkdirRecursive($caminho, $folderRights = 0777)
    {
        try {
    	    $dirs = explode('/', $caminho);
    	    $dir='';
    	    foreach ($dirs as $part) 
    	    {
    	        $dir.=$part.'/';
    	        if (!is_dir($dir) && strlen($dir)>0)
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
     * @param String $filename
     * @return String
     */
    public static function getFileContent($filename)
    {        
        return file_get_contents($filename);
    }
    
    /**
     * Retorna conteúdo de uma uri passada como parametro.
     * @param String $uri
     * @return String
     */
    public static function getUrlContent($uri)
    {
        $encodedUri = urldecode($uri);
        
        return file_get_contents($encodedUri);
    }
    
    /**
     * Retorna o id da PessoaPefil do sistema.
     * @return Int
     */
	public static function retornaIdPessoaPerfilSistema()
	{
	    $login = new Basico_Model_Login();
	    $perfil = new Basico_Model_Perfil();
	    $pessoaPerfil = new Basico_Model_PessoaPerfil();

	    $applicationSystemLogin = APPLICATION_SYSTEM_LOGIN;
	    $applicationSystemPerfil = APPLICATION_SYSTEM_PERFIL;
	    
	    $loginSistema = $login->fetchList("login = '{$applicationSystemLogin}'", null, 1, 0);
	       
	    if (count($loginSistema) === 0)
	        throw new Exception(MSG_ERRO_USUARIO_MASTER_NAO_ENCONTRADO);
	        
        $perfilSistema = $perfil->fetchList("nome = '{$applicationSystemPerfil}'", null, 1, 0);
        
        if (count($perfilSistema) === 0)
	        throw new Exception(MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO);
	        
        $pessoaPerfilSistema = $pessoaPerfil->fetchList("id_pessoa = {$loginSistema[0]->pessoa} and id_perfil = {$perfilSistema[0]->id}", null, 1, 0);
        
        if (!$pessoaPerfilSistema[0]->id)
            throw new Exception(MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO);

        return $pessoaPerfilSistema[0]->id;
	}
	
	/**
	 * Retorna IP do usuário.
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
	 * @param $fullFileName
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
	 * retorna o valor da chave primaria de um objeto
	 * @param $objeto
	 */
    public static function retornaIdGenericoObjeto($objeto)
    {
    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();
		// recuperando o nome do campo da chave primaria da tabela vinculada ao objeto
		$tablePrimaryKey = $tableInfo['primary'];
		$tablePrimaryKey = $tablePrimaryKey[1];
		// retornando o valor do id generico vindo do objeto
		return $objeto->$tablePrimaryKey;
    }
    
    /**
     * retorna o nome da tabela vinculada a um objeto
     * @param $objeto
     */
    public static function retornaTableNameObjeto($objeto)
    {
    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();
		// recuperando nome da tabela vinculada ao objeto
		$tableName = $tableInfo['name'];
		return $tableName;
    }
    
    /**
     * retorna o nome da chave primaria da tabela vinculada ao objeto
     * @param $objeto
     */
    public static function retornaPrimaryKeyObjeto($objeto)
    {
    	// recuperando informacoes sobre a tabela vinculada ao objeto
		$tableInfo = $objeto->getMapper()->getDbTable()->info();
		// recuperando o nome do campo da chave primaria da tabela vinculada ao objeto
		$tablePrimaryKey = $tableInfo['primary'];
		// retorna o nome do campo da chave primaria
		return $tablePrimaryKey[1];
    }
    
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
}