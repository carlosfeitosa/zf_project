<?php
/**
 * Controlador Email
 * 
 * Responsável pelos e-mails do sistema
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_Email
 * 
 * @since 21/03/2011
 */
class Basico_OPController_EmailOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_EmailOPController
	 */
	private static $_singleton;

	/**
	 * 
	 * @var Basico_Model_Email
	 */
	private $_model;

	/**
	 * Construtor do Controlador Basico_OPController_EmailOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializacao do controlador Basico_OPController_EmailOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Inicializa o controlador Email.
	 * 
	 * @return Basico_OPController_EmailOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_EmailOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um UniqueId a partir de um endereco de e-mail
	 * 
	 * @return String
	 */
	private function gerarUniqueIdEmail()
	{
		// retorna o resultado do metodo "geradorUniqueIdGerarId" na classe "Basico_OPController_GeradorOPController"
		return Basico_OPController_GeradorOPController::geradorUniqueIdGerarId($this->_model, 'unique_id');
	}

	/**
	 * Retorna um novo UniqueId
	 * 
	 * @return String 
	 */
	public function retornaNovoUniqueIdEmail()
	{
		// retorna um novo uniqueId
		return $this->gerarUniqueIdEmail();
	}

	/**
	 * Retorna o UniqueId do email passado como parametro. 
	 * 
	 * @param String $email
	 * 
	 * @return Basico_Model_Email|null
	 */
	public function retornaUniqueIdEmail($email) 
	{
		// recuperando objetos e-mail
		$arrayObjsEmail = self::retornaObjetoEmailPorEmail($email);
		
		// verificando se o objeto foi recuperado/existe
		if (isset($arrayObjsEmail[0]))
			// retornando uniqueId
    	    return $arrayObjsEmail[0]->uniqueId;
    	else
    	    return NULL;
	}

	/**
	 * Retorna o objeto email carregado ou null se o email passado não existir no banco.
	 * 
	 * @param String $email
	 * 
	 * @return Basico_Model_Email|null
	 */
	private function retornaObjetoEmailPorEmail($email)
	{
		// recuperando objetos e-mail
		$objsEmail = $this->retornaObjetosPorParametros($this->_model, "email = '{$email}'", null, 1, 0);

		// verificando se o objeto foi recuperado/existe
		if (isset($objsEmail[0]))
			// retornando objeto e-mail
    	    return $objsEmail[0];
    	else
    	    return NULL;
	}

    /**
	 * Retorna o id do email ou null se o email passado não existir no banco.
	 * 
	 * @param String $email
	 * 
	 * @return Integer|null
	 */
	public function retornaIdEmailPorEmail($email)
	{
		// recuperando objeto e-mail
		$objEmail = self::retornaObjetoEmailPorEmail($email);

		// verificando se o objeto foi recuperado/existe
		if (isset($objEmail))
			// retornando o id do objeto e-mail
    	    return $objEmail->id;
    	else
    	    return NULL;
	}

    /**
	 * Retorna o email pelo id passado ou null se o id passado não existir no banco.
	 * 
	 * @param Integer $id
	 * 
	 * @return Basico_Model_Email|null
	 */
	public function retornaObjetoEmailPorId($id)
	{
		// retornando o objeto email atraves do id
		return Basico_OPController_PersistenceOPController::bdObjectFind($this->_model, $id);
	}

	/**
	 * Retorna o id da pessoa pelo email passado como parâmetro.
	 * 
	 * @param Int $idEmail
	 * 
	 * @return Basico_Model_Email|null
	 */
	public function retornaIdProprietarioEmailPorIdEmail($idEmail)
	{
		// recuperando objetos e-mail
		$objsEmail = $this->retornaObjetosPorParametros($this->_model, "id = '{$idEmail}'", null, 1, 0);

		// verificando se o objeto foi recuperado/existe
		if (isset($objsEmail[0]))
			// retornando o id generico do proprietario do objeto e-mail
    	    return $objsEmail[0]->idGenericoProprietario;
    	else
    	    return NULL;
	}

	/**
	 * Verifica se o email existe, se existir retorna o atributo 'validado' do email.
	 * 
	 * @param String $email
	 * 
	 * @return Boolean|null
	 */
	public function verificaEmailExistente($email)
	{
		// recuperando objetos e-mail
		$objEmail = $this->retornaObjetoEmailPorEmail($email);

		// verificando se o objeto foi recuperado/existe
		if(isset($objEmail))
			// retornando o atributo validado
			return $objEmail->validado;
		else
		    return NULL;
	}

	/**
	 * Salva o objeto email no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Email $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Email', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_EMAIL, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_EMAIL;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_EMAIL, true);
	    		$mensagemLog    = LOG_MSG_NOVO_EMAIL;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}
	
    /**
	 * Apaga o objeto email do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Email $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Email', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_EMAIL, true);
	    	$mensagemLog    = LOG_MSG_DELETE_EMAIL;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Retorna o email do Sistema
	 * 
	 * @return String
	 */
	public function retornaEmailSistema()
    {
    	// instanciando controladores
    	$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();

		// buscando o e-mail do sistema
		$idCategoriaEmailSistema = $categoriaOPController->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(SISTEMA_EMAIL);
		$objEmailSistema = $this->retornaObjetosPorParametros($this->_model, "id_categoria = {$idCategoriaEmailSistema}", null, 1, 0);
		
		// verificando se o objeto foi recuperado/existe
		if (isset($objEmailSistema[0]))
			// retornando o e-mail do sistema
    	    return $objEmailSistema[0]->email;
    	else
    	    return NULL;
	}
	
	/**
	 * Retorna o Objeto email primario do id da pessoa passada
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return Basico_Model_Email
	 * 
	 */
	public function retornaObjetoEmailPrimarioPessoa($idPessoa)
	{
		if ((Int) $idPessoa > 0) {
			// instanciando controladores
			$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();

			// recuperando o id da categoria EMAIL_PRIMARIO
			$idCategoriaEmailPrimario = $categoriaOPController->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(EMAIL_PRIMARIO);

			// recuperando o email primario da pessoa passada
			$objEmailPrimario = $this->retornaObjetosPorParametros($this->_model, "id_generico_proprietario = {$idPessoa} and id_categoria = {$idCategoriaEmailPrimario}");
			
			// checando se o email foi encontrado
			if (isset($objEmailPrimario[0])) {
				// retornando o objeto
				return $objEmailPrimario[0];
			}
		}
		return false;
	}
	
    /**
     * Retorna objeto proprietario do email passado
     * @param Basico_Model_Email $email
     * @return Object
     */
    public function retornaObjetoProprietarioEmail(Basico_Model_Email $email)
    {
    	//recuperando a categoria chave estrangeira do email passado 
    	$categoriaChaveEstrangeira = Basico_OPController_CategoriaChaveEstrangeiraOPController::getInstance()->retornaObjetoCategoriaChaveEstrangeiraPorIdCategoria($email->categoria);
    	   	
    	//setando o nome da classe a ser instanciada
    	$moduloName = strtolower($categoriaChaveEstrangeira->getModuloObject()->nome);
    	$moduloName = ucfirst($moduloName);
    	
    	$nomeClasse = $moduloName . '_Model_' . ucfirst($categoriaChaveEstrangeira->tabelaEstrangeira);
    	
    	//instanciando a classe
    	$model = new $nomeClasse();
    	
    	//retornando o objeto proprietario
    	return Basico_OPController_PersistenceOPController::bdObjectFind($model, $email->idGenericoProprietario);
    	
    }
    
    /**
     * Salva um novo objeto email e retorna o id
     * 
     * @param String $email
     * @param Int $idGenericoProprietario
     * @param Int $idCategoria
     * 
     * @return Int
     */
    public function retornaIdNovoObjetoEmail($email, $idGenericoProprietario, $idCategoria)
    {
    	// criando novo objeto email
		$novoEmail = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
		// setando o idGenericoProprietario
        $novoEmail->idGenericoProprietario = $idGenericoProprietario;
        // setando o uniqueId 
        $novoEmail->uniqueId  			   = $this->retornaNovoUniqueIdEmail();
        // setando a categoria
        $novoEmail->categoria 			   = $idCategoria;
        // setando o email
        $novoEmail->email     			   = $email;
        // setando o email como não validado
        $novoEmail->validado  			   = false;
        // setando o email como nao ativo
        $novoEmail->ativo     			   = false;
        // salvando o objeto email
        $this->salvarObjeto($novoEmail);

        // retornando o id
        return $novoEmail->id;
    }
    
    /**
     * Valida o email primario da pessoa passada
     * 
     * @param Int $idPessoa
     */
    public function validarEmailPrimarioPessoa($idPessoa)
    {
    	// recuperando o email primario do usuario
    	$emailPrimario = $this->retornaObjetoEmailPrimarioPessoa($idPessoa);
    	
    	// validando o email
    	$emailPrimario = $this->validarEmail($emailPrimario);
	    
	    return $emailPrimario;
    }
    
    /**
     * Valida o email passado
     * 
     * @param Basico_Model_Email $email
     */
    public function validarEmail(Basico_Model_Email $email)
    {
		// recuperando a ultima versao do email
    	$versaoUpdateEmail = Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($email);
    		
    	// validando o e-mail no objeto
	    $email->datahoraUltimaValidacao = Basico_OPController_UtilOPController::retornaDateTimeAtual();
	    $email->validado = 1;
	    $email->ativo    = 1;
	    	
	    // salvando o objeto e-mail no banco de dados
	    $this->salvarObjeto($email, $versaoUpdateEmail);

	    return $email;
    }
    
    /**
     * Verifica se o email eh primario
     * 
     * @param Int $objEmail
     */
    public function verificaEmailPrimario(Basico_Model_Email $objEmail)
    {
    	// recuperando o id da categoria EMAIL_PRIMARIO
		$idCategoriaEmailPrimario = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(EMAIL_PRIMARIO);
		
		// verificando se o email passado eh da categoria email primario
		if ($objEmail->categoria === $idCategoriaEmailPrimario) {
			return true;
		}else{
			return false;
		}
    }
}