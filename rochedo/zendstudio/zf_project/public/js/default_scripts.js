dojo.require("dijit.Dialog");
dojo.require("dijit.form.Form");
dojo.require("dijit.form.Button");
dojo.require("dijit.form.TextBox");
dojo.require("dijit.DialogUnderlay");
dojo.require("dojox.form.PasswordValidator");
dojo.require("dijit.TitlePane");
dojo.require("dijit.form.TimeTextBox");
dojo.require("dijit.form.SimpleTextarea");
dojo.require("dijit.form.DateTextBox");
dojo.require("dijit.form.CurrencyTextBox");
dojo.require("dijit.form.CheckBox");

var underlay;

/*
 * Função para validar uma string
 * @var inputObject - O input a ser validado
 * @var filterType  - O tipo do filtro a ser aplicado
 */
function validaString(inputObject, filterType)
{   	
	var generic_pattners={'special':/[\W]/g, 
		                  'quotes':/['\''&'\"']/g, 
		                  'notnumbers':/[^\d]/g
		                 };
	
	var login_patterns = {'inicio' : /^[0-9\W_]+/g,
		                  'fim'    : /[^a-zA-Z0-9@._]*$/g
	                     };
	
	if (dijit.byId(inputObject.id).getValue() != "") {
		
		if (filterType == "login") {
			
			for (var i in login_patterns){
				dijit.byId(inputObject.id).attr('value', dijit.byId(inputObject.id).getValue().replace(login_patterns[i],''));
			}
			
		}else{
			
		    dijit.byId(inputObject.id).attr('value', dijit.byId(inputObject.id).getValue().replace(generic_pattners[filterType],''));
		}
    }
}

function loading() 
{
    underlay = new dijit.DialogUnderlay({'class': 'loading'});
    underlay.show();
}

function exibirDialogConteudo(dialogName, content, title, urlRedirect, urlRedirectHide, formAction, onLoadValues, errorMessage, errorTitle, errorElements)
{
	// procurando se o dialog ja existe na sessao do usuario
	dialog = dijit.byId(dialogName);

	if (!dialog) {
		// criando dialog
		var dialog = new dijit.Dialog({title: title, content: content, id: dialogName,
										onHide: dojo.hitch(this, function(){
											// verificando se o dialog possui o hidden para redirect
											if (document.getElementsByName('BasicoAutenticacaoUsuarioUrlRedirect')[0] && urlRedirectHide)
							                	window.location = urlRedirectHide;
							            })});

		// setando tempo de fadein
		dialog.duration = 500;
	}

	// verificando se os elementos devem ser carregados com valores
	if (onLoadValues) {
		dojo.addOnLoad(function() {
			carregaValoresElementos(onLoadValues);
		});

		// verificando se eh necessario mostrar uma mensagem de erro
		if (errorMessage)
			adicionaElementoMensagemErro(dialogName, errorMessage, errorTitle);

		// verificando se eh necessario marcar elementos com erro
		if (errorElements)
			marcaElementosErro(errorElements);
	}

	// verificando se eh preciso setar o hidden urlRedirect
	if (urlRedirect) {
		hiddenUrlRedirect = document.getElementsByName('BasicoAutenticacaoUsuarioUrlRedirect')[0];
		
		// verificando se existe o elemento hidden urlRedirect
		if (hiddenUrlRedirect)
			// setando o valor do hidden
			hiddenUrlRedirect.value = urlRedirect;
	}

	// verificando se eh preciso mudar a acao do formulario
	if (formAction) {
		document.getElementsByTagName('form')[0].action = formAction;
	}

	// mostrando dialog
	dialog.show();
}

function exibirDialogUrl(dialogName, url, title, urlRedirect, urlRedirectHide, formAction, onLoadValues, errorMessage, errorTitle, errorElements)
{
    // setando os parametros do xhrGet: url, como manipular e os callbacks
    var xhrArgs = {
        url: url,
        handleAs: "text",
        load: function(data) {
        	// chamando metodo de abertura de caixa de dialogo com o conteudo da url
        	exibirDialogConteudo(dialogName, data, title, urlRedirect, urlRedirectHide, formAction, onLoadValues, errorMessage, errorTitle, errorElements);
        },
        error: function(error) {
        	// mostrando erro
            dialog.setContent("Um erro aconteceu: " + error);
        }
    };

    // carregando o conteudo da url no dialog
    dojo.xhrGet(xhrArgs);
}

function showDialogAlert(txtDialogId, txtTitle, txtContent, botaoFechar)
{
	if (botaoFechar == 1)
	{
	    var botaoFechar = "<br><br><center><button dojoType='dijit.form.Button' type='submit' onclick='hideDialog('"+ txtDialogId +"')'>OK</button></center>";
	}else{
		var botaoFechar = "";	
	}
	var thisdialog = new dijit.Dialog({ title: txtTitle, content: txtContent+botaoFechar});
	dojo.body().appendChild(thisdialog.domNode);
	thisdialog.closeButtonNode.style.display='none';
    thisdialog.startup();
	thisdialog.show();
}

function hideDialog(dialogId, urlRedirectHide)
{
	// localizando o dialog
	var dlg = dijit.byId(dialogId);

	// verificando se o dialog existe
	if (dlg != null) {
		// verificando se o dialog possui o hidden urlRedirect
		hiddenUrlRedirect = document.getElementsByName('BasicoAutenticacaoUsuarioUrlRedirect')[0];
		if (hiddenUrlRedirect && urlRedirectHide)
			window.location = urlRedirectHide;
		dlg.hide();
	}
}

function carregaValoresElementos(stringParametrosJson) {
	// loop para atribuir os valores dos elementos
	for (chave in stringParametrosJson) {
		// localizando o elemento (DOJO)
		elemento = dijit.byId(chave);
		
		// verificando se o elemento esta carregado no cliente
		if (elemento) {
			// setando o valor
			elemento.setValue(stringParametrosJson[chave]);
		}
		else if (!elemento) {
			// localizando o elemento
			elemento = document.getElementsByName(chave)[0];
			// verificando se o elemento esta carregado no cliente
			if (elemento)
				// setando o valor
				elemento.value = stringParametrosJson[chave];
		}
	}
}

function adicionaElementoMensagemErro(dialogName, errorMessage, errorTitle)
{
	// inicializando variaveis
	var arrayErrorMessages = new Array();

	// recuperando dialog
	dialog = dijit.byId(dialogName);
	
	// verificando se o dialog foi recuperado
	if (dialog) {
		
		// verificando se a mensagem de erro eh um array
		if ((errorMessage instanceof Array) === false)
			arrayErrorMessages[0] = errorMessage;
		else
			arrayErrorMessages = errorMessage;

		// criando elemento container div
		var containerDivErrorMessage = document.createElement('div');
		// setando atributos do div
		containerDivErrorMessage.id = 'divContainerError';

		// verificando se existe titulo para a mensagem de erro
		if (errorTitle) {
			// criando elemento label
			var labelContainerDivErrorMessage = document.createElement('label');
			// setando o conteudo do titulo
			labelContainerDivErrorMessage.innerHTML = '<center><b>' + errorTitle + '</b></center>';
			// adicionando elemeneto ul no container div
			containerDivErrorMessage.appendChild(labelContainerDivErrorMessage);
		}

		// criando elemento container ul
		var containerUlErrorMessage = document.createElement('ul');
		// setando o id da ul
		containerUlErrorMessage.id = 'errorUl';

		// adicionando elemeneto ul no container div
		containerDivErrorMessage.appendChild(containerUlErrorMessage);

		// loop para recuperar as mensagens de erro
		for (chave in arrayErrorMessages) {
			// criando elemento li item
			var itemErrorMessage = document.createElement('li');
			// setando o conteudo do elemento li item
			itemErrorMessage.innerHTML = arrayErrorMessages[chave];
			// adicionado o elemento ao containter ul
			containerUlErrorMessage.appendChild(itemErrorMessage);
		}

		// adicionando o elemento container ul no dialog
		dojo.place(containerDivErrorMessage, dialog.domNode.childNodes[3].childNodes[0].childNodes[0],  "before");
	}
}

function marcaElementosErro(errorElements)
{
	// loop nos elementos com erro
	for (chave in errorElements) {
		// recuperando elemento
		elemento = dijit.byId(errorElements[chave]);
		// setando estado de erro
		elemento.state = 'Error';
		elemento._setStateClass();
		dijit.setWaiState(elemento, 'invalid', 'true');
		elemento._maskValidSubsetError = true;
	}
}

function setaFocoElemento(nomeElemento)
{
	// recupernado o elemento via dojo
	elemento = recuperaElemento(nomeElemento);

	// verificando se o elemento esta carregado no cliente
	if (elemento) {
		// setando o foco no elemento
		elemento.focus();
	}
}

function setaFocoPrimeiroElementoFormulario(nomeFormulario)
{
	// recupernado o elemento via dojo
	elemento = recuperaElemento(nomeFormulario);

	// verificando se o elemento foi recuperado
	if (elemento) {
		// recuperando elementos filhos
		elementosFilhos = elemento.getChildren();

		// loop para localizar o primeiro elemento "focavel"
		for (chaveElementoFilho in elementosFilhos) {
			// verificando se o elemento eh "focavel"
			if ((elementosFilhos[chaveElementoFilho].isFocusable()) && (elementosFilhos[chaveElementoFilho].tabIndex != -1)) {
				// setando foco no elemento
				elementosFilhos[chaveElementoFilho].focus();
				// saindo do loop
				break;
			}
		}
	}
}

function recuperaElemento(nomeElemento)
{
	// recupernado o elemento via dojo
	elemento = dijit.byId(nomeElemento);

	// verificando se o elemento esta carregado no cliente
	if (!elemento) {
		// recuperando o elemento via DOM 
		elemento = document.getElementsByName(nomeElemento)[0];
	}
	
	return elemento;
}

function validateForm(formId, titulo, message, baseUrl) 
{
	// recuperando o formulario
    var form = dojo.byId(formId);

    // validando o formulario
    if (!form.validate()) 
    {
    	// mostando mensagem de erro ao tentar submeter o formulario
	    showDialogAlert(formId, titulo, message, 1);
	    // desabilitando underlay
	    underlay.hide();

        return false;
    }

    return true;
}
	
function verificaDisponibilidade(nomeTabela, nomeCampo, stringPesquisa, idPessoa, nome, dataNascimento, urlMetodo)
{	
	if (stringPesquisa != "") {
		dojo.byId("BasicoCadastrarUsuarioValidadoLoginDisponivel-label").innerHTML = "<img src='/rochedo_project/public/images/loading.gif' style='width: 15px; height: 15px;'>";
		
		dojo.xhrGet({
	    	url: urlMetodo + stringPesquisa + "/idPessoa/" + idPessoa + "/nome/" + nome + "/dataNascimento/" + dataNascimento,
	    	timeout: 5000,
	    	load: function(response, ioArgs)
	    	{
			dojo.byId("BasicoCadastrarUsuarioValidadoLoginDisponivel-label").innerHTML = response;
	    	}
	    });
	}else{
		dojo.byId("BasicoCadastrarUsuarioValidadoLoginDisponivel-label").innerHTML = "";
	}
}

function exibirMensagem(mensagem)
{
	humanMsg.displayMsg('<span class="indent">' + mensagem + '</span>');
}

function adicionaMensagemErroZendDojoFormElement(elementName, errorMessage)
{
	// inicializando variaveis
	var arrayErrorMessages = new Array();
	
	// recuperando elemento
	element = dojo.byId(elementName);

	// verificando se o element foi recuperado
	if (element) {
		// verificando se a mensagem de erro eh um array
		if ((errorMessage instanceof Array) === false)
			arrayErrorMessages[0] = errorMessage;
		else
			arrayErrorMessages = errorMessage;
		
		// criando elemento ul
		var elementUlErrorMessage = document.createElement('ul');
		// setando o id da ul
		elementUlErrorMessage.id = 'errorUl';
		elementUlErrorMessage.className = 'errors';

		// loop para recuperar as mensagens de erro
		for (chave in arrayErrorMessages) {
			// criando elemento li item
			var itemErrorMessage = document.createElement('li');
			// setando o conteudo do elemento li item
			itemErrorMessage.innerHTML = arrayErrorMessages[chave];
			// adicionado o elemento li ao elemento ul
			elementUlErrorMessage.appendChild(itemErrorMessage);
		}
		// adicionando o elemento ul apos o elemento
		dojo.place(elementUlErrorMessage, element.id, "after");
	}
}


function limparMensagemErroZendDojoForm(formName)
{
	//verifica se o nome do formulario foi passada e se existe o formulario
	if (formName && dojo.query('form[id="' + formName + '"]'))
		parametro = 'form[id="' + formName + '"]';		
	else
		parametro = '';
	
	// busca todos os elementos de erros com className 'errors', do formulario passado ou de todos os formularios
	var errors = dojo.query(parametro + ' .errors');

    // remove todos os elementos encontrados
    for (var i = 0; i < errors.length; i++) {
		dojo._destroyElement(dojo.byId(errors[i]));
    }
    
    // busca todas as mensagens com o id='divContainerError'  
    var mensagens = dojo.query(parametro + ' #divContainerError');
    
    // remove todas as mensagens encontradas no formulário. 
    for (var i = 0; i < mensagens.length; i++) {
		dojo._destroyElement(dojo.byId(mensagens[i]));
    }
}

function strpos (haystack, needle, offset) {
	var i = (haystack + '').indexOf(needle, (offset || 0));
	return i === -1 ? false : i;
}

function processaResponseDojoFormRequest(data, args, formThis)
{
	if(typeof data == "error") {
    	// erro nos dados
		console.warn("error!",args);	
	}else{
		console.debug('data response...: ', data);
		
		// parser data 
		console.debug('data response: ', data);	
		json = eval(data); //json = eval("(" + data + ")");
		console.debug('data evaluated: ', json);
		
		// get the modules
        dojo.forEach(json.view.modules, function(module)
        {
            dojo.require(module);
            console.debug('modulo carregado:', module);
        });
		
		// Get html elements
		console.debug(json.view.html);
		for (idElemento in json.view.html)	{
			console.debug('elemento:', idElemento);
			
			if (dojo.byId(idElemento)) {
				dojo.byId(idElemento).innerHTML = json.view.html[idElemento];
			} else {
				console.debug('elemento html nao encontrado:', idElemento);
			}
		}  
	    
		if (dojo.byId(json.view.idResponseSource)) {
			
			// Get zendFormsMessages
			zendFormsMessages = json.view.zendFormsMessages;
			
			limparMensagemErroZendDojoForm(json.view.idResponseSource);
			
			if (zendFormsMessages.length != 0) {
				for (form in zendFormsMessages)	{
					console.debug('form in zendFormsMessages:', form);
					
					formulario = dijit.byId(form);
					console.debug('formulario eh:', formulario);	
					
					class_form = formulario.declaredClass;
					console.debug('classe do formulario:', class_form);					
					
					for (nomeElementForm in zendFormsMessages[form])	{
						console.debug('nomeElementForm in zendFormsMessages[form]:', nomeElementForm);
						
						nomeElemento = form + '-' + nomeElementForm;
						console.debug('nomeElemento:', nomeElemento);
						
						elementoFormulario = dojo.byId(nomeElemento);
						console.debug('elemento formulario eh:', elementoFormulario);

						for (mensagens in zendFormsMessages[form][nomeElementForm]) {
							console.debug('mensagens in zendFormsMessages[form][nomeElementForm] :', mensagens);
							mensagem = zendFormsMessages[form][nomeElementForm][mensagens];
							console.debug('mensagen:', mensagem); 
							
							
							elemento = dojo.byId(nomeElementForm);
							console.debug('elemento :', elemento, 'nomeElemento:', nomeElementForm);
							if (elemento != null && elemento.type == 'hidden') {
								
								console.debug('elemento hiddden encontrado:', elemento);
								
								// procura pela a string Csrf () no final do nome do elemento.
								csrfEncontrado = strpos(elemento.name, 'Csrf', 0);
								if (csrfEncontrado) {
									adicionaElementoMensagemErro('Basico_Form_CadastrarTelefone', mensagem, 'Tempo de envio do formulario esgotou. Tente novamente.')
								}
							}
							
							adicionaMensagemErroZendDojoFormElement('widget_' + nomeElementForm, mensagem);
						}
					}
				}
				
			}
		}
		
		//----------------------
		console.debug('iniciando foreache dojo attr dijits');
		dojo.forEach(json.view.dijits, function(info, i) {
			console.debug(info, "at index", i);
			
        	var n = dojo.byId(info.id);
        	if (null != n) {
            	dojo.attr(n, dojo.mixin({ id: info.id }, info.params));
            	console.debug('dojo mixin');
        	}
        });
        console.debug('finalizado foreache dojo attr dijits');
        //---------------
		
        
		dojo.parser.parse();
		
		// processa scripts
		console.debug('verificando se existe scripts');
		scripts = json.view.scripts;
		for (script in scripts)	{
				eval(scripts[script]);
				console.debug('script processado(', script, ')');
		}
		console.debug('scripts end...'); 
	}	
}

function urlAjaxCall(urlCall) {
	loading();
	dojo.xhrPost({ url: urlCall,
				  handleAs: 'json',
				  load: function(data,args){
							processaResponseDojoFormRequest(data,args, this, "alert('teste callback function')");
				  		},
				  handle: 	function(error, ioargs) {
								var message = "";
							    switch (ioargs.xhr.status) {
							    	case 200:
							        	message = "Good request.";
							            break;
							        case 404:
							        	message = "The requested page was not found";
							            break;
							        case 500:
							            message = "The server reported an error.";
							            break;
							        case 407:
										message = "You need to authenticate with a proxy.";
							            break;
							        default:
							            message = "Unknown error.";
							     }
							     console.debug(message);
							     
							     console.debug('desativando underlay....');
							     underlay.hide();
							     console.debug('underlay desativado');
							     
							} 
				
	});
}

/**
 * função que transporta o login escolhido, para o campo login do formulario de cadastro de usuario validado
 * @param String urlMetodo 
 */
function carregaSugestaoLogin(urlMetodo) {
	// recuperando o valor da opção de login escolhida pelo usuario
	for (var i=0; i < document.forms['BasicoSugestaoLogin'].BasicoSugestaoLoginSugestaoLogin.length; i++)
	{
	   if (document.forms['BasicoSugestaoLogin'].BasicoSugestaoLoginSugestaoLogin[i].checked)
       {
	      var radioValue = document.forms['BasicoSugestaoLogin'].BasicoSugestaoLoginSugestaoLogin[i].value;
	   }
	}
	
	// setando valor do campo login
	dijit.byId('BasicoCadastrarUsuarioValidadoLogin').setValue(radioValue);
	// escondendo o dialog de sugestao
	hideDialog('Basico_Form_SugestaoLogin');
	// executando funcao para verificar a disponibilidade do login escolhido
	verificaDisponibilidade('login', 'login', radioValue, dojo.byId('idPessoa').value, dojo.byId('BasicoCadastrarUsuarioValidadoNome').value, dojo.byId('BasicoCadastrarUsuarioValidadoDataNascimento').value, urlMetodo);
}