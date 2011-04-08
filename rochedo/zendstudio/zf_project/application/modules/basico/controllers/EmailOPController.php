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
	 * @return Basico_EmailController
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
		$arrayObjsEmail = $this->_model->fetchList("email = '{$email}'", null, 1, 0);
		
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
		$objsEmail = $this->_model->fetchList("email = '{$email}'", null, 1, 0);

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
		return $this->_model->find($id);
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
		$objsEmail = $this->_model->fetchList("id = '{$idEmail}'", null, 1, 0);

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
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogPorNomeCategoria(LOG_UPDATE_EMAIL, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_EMAIL;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogPorNomeCategoria(LOG_NOVO_EMAIL, true);
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
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogPorNomeCategoria(LOG_DELETE_EMAIL, true);
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
		$idCategoriaEmailSistema = $categoriaOPController->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(SISTEMA_EMAIL);
		$objEmailSistema = $this->_model->fetchList("id_categoria = {$idCategoriaEmailSistema}", null, 1, 0);
		
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
	public function retornaEmailPrimarioPessoa($idPessoa)
	{
		if ((Int) $idPessoa > 0) {
			// instanciando controladores
			$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();

			// recuperando o id da categoria EMAIL_PRIMARIO
			$idCategoriaEmailPrimario = $categoriaOPController->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(EMAIL_PRIMARIO);

			// recuperando o email primario da pessoa passada
			$objEmailPrimario = $this->_model->fetchList("id_generico_proprietario = {$idPessoa} and id_categoria = {$idCategoriaEmailPrimario}");
			
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
    	return $model->find($email->idGenericoProprietario);
    	
    }
}