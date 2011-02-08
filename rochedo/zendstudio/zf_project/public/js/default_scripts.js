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

function exibirDialogConteudo(dialogName, content, title, urlRedirect, urlRedirectHide)
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

	// verificando se eh preciso setar o hidden urlRedirect
	if (urlRedirect) {
		hiddenUrlRedirect = document.getElementsByName('BasicoAutenticacaoUsuarioUrlRedirect')[0];
		
		// verificando se existe o elemento hidden urlRedirect
		if (hiddenUrlRedirect)
			// setando o valor do hidden
			hiddenUrlRedirect.value = urlRedirect;
	}

	// mostrando dialog
	dialog.show();
}

function exibirDialogUrl(dialogName, url, title, urlRedirect, urlRedirectHide)
{
    // setando os parametros do xhrGet: url, como manipular e os callbacks
    var xhrArgs = {
        url: url,
        handleAs: "text",
        load: function(data) {
        	// chamando metodo de abertura de caixa de dialogo com o conteudo da url
        	exibirDialogConteudo(dialogName, data, title, urlRedirect, urlRedirectHide);
        },
        error: function(error) {
        	// mostrando erro
            dialog.setContent("Um erro aconteceu: " + error);
        }
    };

    // carregando o conteudo da url no dialog
    dojo.xhrGet(xhrArgs);
}

function validateForm(formId, titulo, message) 
{
    var form = dijit.byId(formId);
    
    if (!form.validate()) 
    {
	    showDialogAlert(formId, titulo, message, 1);
	    underlay.hide();
        return false;
    }
    return true;
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

function verificaDisponibilidade(nomeTabela, nomeCampo, stringPesquisa, urlMetodo)
{
	if (stringPesquisa != "") {
		dojo.byId("BasicoCadastrarUsuarioValidadoLoginDisponivel-label").innerHTML = "<img src='/rochedo_project/public/images/loading.gif' style='width: 15px; height: 15px;'>";
		
		dojo.xhrGet({
	    	url: urlMetodo + stringPesquisa,
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