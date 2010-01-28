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
	
    /**
     * Gera um Token para qualquer modelo passado como parametro
     * @param Object $modelo
     * @param String $nomeDoCampoBancoDeDados
     * @return String
     */
	private function gerarToken($modelo, $nomeDoCampoBancoDeDados)
	{
		$gerador = new Basico_Model_Gerador();
		$tokenString = $gerador->getGeradorUniqueIdObject()->gerar($modelo, $nomeDoCampoBancoDeDados);
		return $tokenString;
	}
	
	
    public function salvarToken($novoToken, $idPessoaPerfilCriador = null)
	{
    	try{
    		// VERIFICA SE A OPERACAO ESTA SENDO REALIZADA POR UM USUARIO OU PELO SISTEMA
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();
	    		
    		$this->token = $novoToken;
			$this->token->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaController::init();
			$controladorLog       = Basico_LogController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovoEmail();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = $idPessoaPerfilCriador;
            $novoLog->categoria      = $categoriaLog->id;
            $novoLog->dataHoraEvento = Zend_Date::now();
            $novoLog->descricao      = LOG_MSG_NOVO_EMAIL;
            $controladorLog->salvarLog($novoLog);
			
    	} catch (Exception $e) {
    		throw new Exception($e);
    	}
	}
}
