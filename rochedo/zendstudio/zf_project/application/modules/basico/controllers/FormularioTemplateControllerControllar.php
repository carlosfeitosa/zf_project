<?php
/**
 * Controlador FormularioTemplate.
 *
 */
class Basico_FormularioTemplateControllerController
{
	/**
	 * Instância do Controlador FormularioTemplate
	 * @var Basico_FormularioTemplateController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo FormularioTemplate.
	 * @var Basico_Model_FormularioTemplate
	 */
	private $formularioTemplate;
	
	/**
	 * Construtor do Controlador FormularioTemplate.
	 * @return void
	 */
	private function __construct()
	{
		$this->formulario = new Basico_Model_FormularioTemplate();
	}
	
	/**
	 * Retorna instância do Controlador FormularioTemplate.
	 * @return Basico_FormularioTemplateController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_FormularioTemplateControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_FormularioTemplate $novoFormularioTemplate
	 * @return void
	 */
	public function salvarFormularioTemplate($novoFormularioTemplate)
	{
		try {
			$this->formularioTemplate = $novoFormularioTemplate;
			$this->formularioTemplate->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaControllerController::init();
			$controladorLog       = Basico_LogControllerController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovoFormularioTemplate();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = Basico_Model_Util::retornaIdPessoaPerfilSistema();
            $novoLog->categoria      = $categoriaLog->id;

            $novoLog->dataHoraEvento = Basico_Model_Util::retornaDateTimeAtual();
            $novoLog->descricao      = LOG_MSG_NOVO_FORMULARIO_TEMPLATE;
            $controladorLog->salvarLog($novoLog);
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}