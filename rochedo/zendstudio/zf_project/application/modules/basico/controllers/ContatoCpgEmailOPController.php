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
class Basico_OPController_ContatoCpgEmailOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_ContatoCpgEmailOPController
	 */
	private static $_singleton;

	/**
	 * 
	 * @var Basico_Model_ContatoCpgEmail
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_contato.cpg_email
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_contato.cpg_email';

	/**
	 * Nome do campo id da tabela basico_contato.cpg_email
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_ContatoCpgEmailOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializacao do controlador Basico_OPController_ContatoCpgEmailOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();
		
		return;
	}

	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 30/04/2012
	 */
	protected function initControllers()
	{
		return;
	}

	/**
	 * Inicializa o controlador Email.
	 * 
	 * @return Basico_OPController_ContatoCpgEmailOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ContatoCpgEmailOPController();
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
		$arrayObjEmail = self::retornaObjetoEmailPorEmail($email);
		
		// verificando se o objeto foi recuperado/existe
		if (is_object($arrayObjEmail))
			// retornando uniqueId
    	    return $arrayObjEmail->uniqueId;
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
		$objEmail = $this->retornaObjetosPorParametros("email = '{$email}'", null, 1, 0);

		// verificando se o objeto foi recuperado/existe
		if (is_object($objEmail))
			// retornando objeto e-mail
    	    return $objEmail;
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
		$objEmail = $this->retornaObjetosPorParametros("id = '{$idEmail}'", null, 1, 0);

		// verificando se o objeto foi recuperado/existe
		if (is_object($objEmail))
			// retornando o id generico do proprietario do objeto e-mail
    	    return $objEmail->idGenericoProprietario;
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
		$objEmailSistema = $this->retornaObjetosPorParametros("id_categoria = {$idCategoriaEmailSistema}", null, 1, 0);
		
		// verificando se o objeto foi recuperado/existe
		if (is_object($objEmailSistema))
			// retornando o e-mail do sistema
    	    return $objEmailSistema->email;
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
			$objEmailPrimario = $this->retornaObjetosPorParametros("id_generico_proprietario = {$idPessoa} and id_categoria = {$idCategoriaEmailPrimario}");
			
			// checando se o email foi encontrado
			if (is_object($objEmailPrimario)) {
				// retornando o objeto
				return $objEmailPrimario;
			}
		}
		return false;
	}
	
    /**
     * Retorna objeto proprietario do email passado
     * @param Basico_Model_Email $email
     * @return Object
     */
    public function retornaObjetoProprietarioEmail(Basico_Model_ContatoCpgEmail $email)
    {
    	//recuperando a categoria chave estrangeira do email passado 
    	$categoriaChaveEstrangeira = Basico_OPController_CategoriaAssocChaveEstrangeiraOPController::getInstance()->retornaObjetoCategoriaChaveEstrangeiraPorIdCategoria($email->idCategoria);
    	   	
    	//setando o nome da classe a ser instanciada
    	$moduloName = strtolower($categoriaChaveEstrangeira->getModuloObject()->nome);
    	$moduloName = ucfirst($moduloName);
    	
    	$nomeClasse = $moduloName . '_Model_' . ucfirst(str_replace("{$moduloName}.", '', ucfirst($categoriaChaveEstrangeira->tabelaEstrangeira)));
    	
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
		$novoEmail = $this->retornaNovoObjetoModelo();
		// setando o idGenericoProprietario
        $novoEmail->idGenericoProprietario = $idGenericoProprietario;
        // setando o uniqueId 
        $novoEmail->uniqueId  			   = $this->retornaNovoUniqueIdEmail();
        // setando a categoria
        $novoEmail->idCategoria 		   = $idCategoria;
        // setando o email
        $novoEmail->email     			   = $email;
        // setando o email como não validado
        $novoEmail->validado  			   = false;
        // setando o email como nao ativo
        $novoEmail->ativo     			   = false;
        // salvando o objeto email
        parent::salvarObjeto($novoEmail, Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL(LOG_NOVO_EMAIL), LOG_MSG_NOVO_EMAIL);

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
    public function validarEmail(Basico_Model_ContatoCpgEmail $email)
    {
		// recuperando a ultima versao do email
    	$versaoUpdateEmail = Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($email);
    		
    	// validando o e-mail no objeto
	    $email->datahoraUltimaValidacao = Basico_OPController_UtilOPController::retornaDateTimeAtual();
	    $email->validado = 1;
	    $email->ativo    = 1;
	    	
	    // salvando o objeto e-mail no banco de dados
	    parent::salvarObjeto($email, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_EMAIL, true), LOG_MSG_UPDATE_EMAIL, $versaoUpdateEmail);

	    return $email;
    }
    
    /**
     * Verifica se o email eh primario
     * 
     * @param Int $objEmail
     */
    public function verificaEmailPrimario(Basico_Model_ContatoCpgEmail $objEmail)
    {
    	// recuperando o id da categoria EMAIL_PRIMARIO
		$idCategoriaEmailPrimario = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(EMAIL_PRIMARIO);
		
		// verificando se o email passado eh da categoria email primario
		if ($objEmail->idCategoria === $idCategoriaEmailPrimario) {
			return true;
		}else{
			return false;
		}
    }
}