<?php
/**
 * Controlador FormularioFormularioElemento.
 *
 */
class Basico_FormularioFormularioElementoControllerController
{
	/**
	 * Instância do Controlador FormularioFormularioElemento
	 * @var Basico_FormularioController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo FormularioFormularioElemento.
	 * @var Basico_Model_FormularioFormularioElemento
	 */
	private $formularioFormularioElemento;
	
	/**
	 * Construtor do Controlador FormularioFormularioElemento.
	 * @return void
	 */
	private function __construct()
	{
		$this->formularioFormularioElemento = new Basico_Model_FormularioFormularioElemento();
	}
	
	/**
	 * Retorna instância do Controlador FormularioFormularioElemento.
	 * @return Basico_FormularioFormularioElementoController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_FormularioFormularioElementoControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_FormularioFormularioElemento $novoFormularioFormularioElemento
	 * @return void
	 */
	public function salvarFormularioFormularioElemento($novoFormularioFormularioElemento)
	{
		try {
			$this->formularioFormularioElemento = $novoFormularioFormularioElemento;
			$this->formularioFormularioElemento->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaControllerController::init();
			$controladorLog       = Basico_LogControllerController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovaPessoa();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = Basico_Model_Util::retornaIdPessoaPerfilSistema();
            $novoLog->categoria      = $categoriaLog->id;

            $novoLog->dataHoraEvento = Basico_Model_Util::retornaDateTimeAtual();
            $novoLog->descricao      = LOG_MSG_NOVA_PESSOA;
            $controladorLog->salvarLog($novoLog);
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}
