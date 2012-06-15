<?php
/**
 * Arquivo de configuração do sistema
 * 
 * Este arquivo contem as configurações do sistema
 * 
 * @package core
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 04/05/2012
 */

// definições da aplicação
define("APPLICATION_NAME", "Rochedo Project");
define("APPLICATION_VERSION", "1.0");
define("APPLICATION_TITLE", "ROCHEDO software");
define("APPLICATION_CVC_USER_RESOLVE_CONFLICT", true);
define("RESOURCE_TYPE_BASICO_PLUGINS", "plugins");
define("RESOURCE_PATH_BASICO_PLUGINS", "actionControllers/plugins");
define("RESOURCE_NAMESPACE_BASICO_PLUGINS", "Controller_Plugin");
define("RESOURCE_TYPE_BASICO_OPCONTROLLERS_ABSTRACTS", "abstractsOPControllers");
define("RESOURCE_PATH_BASICO_OPCONTROLLERS_ABSTRACTS", "controllers/abstracts");
define("RESOURCE_NAMESPACE_BASICO_OPCONTROLLERS_ABSTRACTS", "AbstractOPController_");
define("RESOURCE_TYPE_BASICO_ACTIONCONTROLLERS_ABSTRACTS", "abstractsActionControllers");
define("RESOURCE_PATH_BASICO_ACTIONCONTROLLERS_ABSTRACTS", "actionControllers/abstracts");
define("RESOURCE_NAMESPACE_BASICO_ACTIONCONTROLLERS_ABSTRACTS", "AbstractActionController_");
define("RESOURCE_TYPE_BASICO_OPCONTROLLERS", "OPControllers");
define("RESOURCE_PATH_BASICO_OPCONTROLLERS", "controllers");
define("RESOURCE_NAMESPACE_BASICO_OPCONTROLLERS", "OPController_");
define("RESOURCE_TYPE_BASICO_MODELS_ABSTRACTS", "abstractsModels");
define("RESOURCE_PATH_BASICO_MODELS_ABSTRACTS", "models/abstracts");
define("RESOURCE_NAMESPACE_BASICO_MODELS_ABSTRACTS", "AbstractModel_");
define("RESOURCE_TYPE_BASICO_MAPPERS_ABSTRACTS", "abstractsMappers");
define("RESOURCE_PATH_BASICO_MAPPERS_ABSTRACTS", "models/abstracts");
define("RESOURCE_NAMESPACE_BASICO_MAPPERS_ABSTRACTS", "AbstractMapper_");
define("RESOURCE_TYPE_BASICO_MODELS_INTERFACES", "interfacesModels");
define("RESOURCE_PATH_BASICO_MODELS_INTERFACES", "models/interfaces");
define("RESOURCE_NAMESPACE_BASICO_MODELS_INTERFACES", "InterfaceModel_");
define("RESOURCE_TYPE_BASICO_MAPPERS_INTERFACES", "interfacesMappers");
define("RESOURCE_PATH_BASICO_MAPPERS_INTERFACES", "models/interfaces");
define("RESOURCE_NAMESPACE_BASICO_MAPPERS_INTERFACES", "InterfaceMapper_");
define("RESOURCE_TYPE_BASICO_DBTABLES_ABSTRACTS", "abstractsDbTables");
define("RESOURCE_PATH_BASICO_DBTABLES_ABSTRACTS", "models/DbTable/abstracts");
define("RESOURCE_NAMESPACE_BASICO_DBTABLES_ABSTRACTS", "AbstractDbTable_");
define("INCLUDE_INCLUDE_ONCE", "include_once");
define("INCLUDE_REQUIRE_ONCE", "require_once");
define("INCLUDE_INCLUDE", "include");
define("INCLUDE_REQUIRE", "require");

// definições do rascunho
define("APPLICATION_FORM_DRAFT", true);

// definições do pool de SQL
define("APPLICATION_ENABLE_POOL_SQL", true);

// definições do log
$logSequence = date('Ym');
define("LOG_PATH", APPLICATION_PATH . "/logs/");
define("LOG_FILENAME_PREFIX", "error_log_");
define("LOG_FILENAME_SULFIX", ".log");
define("LOG_FILENAME", LOG_FILENAME_PREFIX . $logSequence . LOG_FILENAME_SULFIX);
define("LOG_FULL_FILENAME", LOG_PATH . LOG_FILENAME);

// definições do .htaccess
define("HTACCESS_FULLFILENAME", PUBLIC_PATH . "/.htaccess");

// definições de módulos
define("APPLICATION_MODULES_PATH", APPLICATION_PATH . "/modules");

// definições do e-mail de suporte
define("SUPPORT_EMAIL", "agil@facepe.br");

// definições de configuração de e-mail
define("SMTP_SERVER_AUTH_METHOD", "login");
define("SMTP_SERVER_HOST", "smtp.rochedoframework.com");
define("SMTP_SERVER_PORT", 587);
define("SMTP_USERNAME", "nao.responda@rochedoframework.com");
define("SMTP_PASSWORD", "nao#respond@");
define("EMAIL_CHARSET", "utf-8");

// definições do captcha
define("CAPTCHA_IMAGE_DIR", "/images/captcha/");
define("CAPTCHA_IMAGE_URL", "/images/captcha/");
define("CAPTCHA_FONT_PATH", "/fonts/typewcond_bold.otf");

// definições do DOJO
define("DOJO_LOCAL_PATH", "/js/library/dojo/dojo.js");
define("DOJO_STYLE_SHEET_PATH", "/js/library/dijit/themes/rochedo/rochedo.css");
define("DOJO_STYLE_SHEET_MODULE", "dijit.themes.rochedo");

// definições de javascripts
define("DEFAULT_JAVASCRIPT_FILE_PATH", "/js/default_scripts.js");
define("DEFAULT_AJAX_JAVASCRIPT_FILE_PATH", "/js/ajax_scripts.js");
define("DEFAULT_JAVASCRIPT_MASKS_FILE_PATH", "/js/default_masks_scripts.js");
define("DEFAULT_JAVASCRIPT_MASKS_JQUERY_FILE_PATH", "/js/library/plugins/jquery/maskMoney/jquery.maskMoney.js");
define("DEFAULT_JAVASCRIPT_JQUERY_RASCUNHO", "/js/rascunho.js");
define("JQGRID_JAVASCRIPT_FILE_PATH", "/js/library/plugins/jquery/jqGrid/js/jquery.jqGrid.min.js");
define("JQGRID_JAVASCRIPT_LANGUAGE_FILE_PATH", "/js/library/plugins/jquery/jqGrid/js/i18n/grid.locale-pt-br.js");
define("JQGRID_JAVASCRIPT_DEBUG_FILE_PATH", "/js/library/plugins/jquery/jqGrid/js/grid.loader.js");
define("JQGRID_ROCHEDO_CUSTOM_JAVASCRIPT_FILE_PATH", "/js/library/plugins/jquery/jqGrid/js/rochedo.custom.jqgrid.js");

// jQuery
define("JQUERY_JAVASCRIPT_FILE_PATH", "/js/library/jquery/jquery-1.7.2.min.js");
define("JQUERY_UI_CUSTOM_JAVASCRIPT_FILE_PATH", "/js/library/jquery/ui/jquery-ui-1.8.16.custom.min.js");
define("JQUERY_DATETIMEPICKER_ADDON_JAVASCRIPT_FILE_PATH", "/js/library/jquery/ui/jquery.ui.datepicker.addon.js");
define("JQUERY_SLIDER_ACCESS_JAVASCRIPT_FILE_PATH", "/js/library/jquery/ui/jquery.ui.sliderAccess.js");

// definições de css
define("JQGRID_CSS_FILE_PATH", "/js/library/plugins/jquery/jqGrid/css/ui.jqgrid.css");
define("JQUERY_UI_CSS_FILE_PATH", "/js/library/jquery/ui/jquery-ui-1.8.18.custom.css");
define("JQUERY_DATETIMEPICKER_ADDON_CSS_FILE_PATH", "/js/library/jquery/ui/jquery.ui.datepicker.addon.css");

// definições de sugestão de login
define("NUMERO_SUGESTOES_LOGIN_TOTAL", 6);
define("NUMERO_SUGESTOES_LOGIN_UTILIZANDO_LOGIN", 2);
define("NUMERO_SUGESTOES_LOGIN_UTILIZANDO_NOME", 2);
define("NUMERO_SUGESTOES_LOGIN_UTILIZANDO_EMAIL", 2);

// definições do gerador de formulários
define("GENERATE_PERSISTENT_FORM_WITH_HASH_ELEMENT", true);

// definições de autenticação
define("AUTH_TABLE", "basico_pessoa.login");
define("AUTH_IDENTITY_COLUMN", "login");
define("AUTH_CREDENTIAL_COLUMN", "senha");
define("AUTH_IDENTITY_ARRAY_KEY", "BasicoAutenticacaoUsuarioLogin");
define("AUTH_CREDENTIAL_ARRAY_KEY", "BasicoAutenticacaoUsuarioSenha");
define("AUTH_ID_LOGIN_SESSION_KEY", "AUTH_ID_LOGIN_SESSION_KEY");
define("AUTH_KEEP_LOGGED_KEY", "BasicoAutenticacaoUsuarioLoginManterLogado");

// definições de atributos
define("ROWINFO_ATRIBUTE_NAME", "rowinfo");
define("REQUEST_ACTION_KEY", "action");
define("PROPRIEDADE_DATAHORA_CRIACAO", "datahoraCriacao");
define("PROPRIEDADE_DATAHORA_ULTIMA_ATUALIZACAO", "datahoraUltimaAtualizacao");

// definições de atributos de sessão
define("SESSION_INICIO_PROCESSESSAMENTO_MICROSEGUNDOS_PHP", "inicioProcessamentoMicrosegundosPHP");
define("SESSION_POOL_REQUESTS_ARRAY", "poolRequestsArray");
define("SESSION_POOL_REQUESTS_ARRAY_LIMIT", 20);
define("SESSION_POOL_PARAMETROS_URL_ARRAY", "poolParametrosUrlArray");
define("SESSION_CHAVE_POST_ULTIMO_REQUEST", "chavePostUltimoRequest");
define("SESSION_FILA_RASCUNHO_PAI", "filaRascunhoPai");
define("SESSION_POST_ULTIMO_REQUEST", "postUltimoRequest");
define("SESSION_AUTHENTICATED_USER_IP", "authenticatedUserIp");
define("SESSION_ARRAY_ULTIMA_VISAO", "arrayUltimaVisao");

// definições de atributos de controle de versão de objetos
define("CVC_PARAM_CHAVE_POST_ULTIMO_REQUEST", "chavePostUltimoRequest");
define("CVC_PARAM_SOBRESCREVER_ATUALIZACAO", "sobrescreverAtualizacao");
define("CVC_PARAM_CANCELAR", "cancelar");
define("CVC_PARAM_NOME_OBJETO_EM_CONFLITO", "nomeObjetoEmConflito");
define("CVC_PARAM_ID_OBJETO_EM_CONFLITO", "idObjetoEmConflito");