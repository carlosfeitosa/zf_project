dojo.require("dijit.Dialog");
dojo.require("dijit.form.Button");
dojo.require("dijit.form.TextBox");
dojo.require("dijit.DialogUnderlay");
dojo.require("dojox.form.PasswordValidator");
dojo.require("dijit.TitlePane");
dojo.require("dijit.form.TimeTextBox");


var underlay;
function loading() 
{
    underlay = new dijit.DialogUnderlay({'class': 'loading'});
    underlay.show();
}

function exibirFormDocumentos()
{
	formDocumentos = dijit.byId("formDocumentos");
    
	if (!formDocumentos) {
		var thisdialog = new dijit.Dialog({ 
                            title: "Documentos de Identificação", 
                            href: "http://localhost/rochedo_project/application/modules/basico/forms/DocumentosIdentificacao.php",
                            id: "formDocumentos"
		                             });
			thisdialog.startup();
			thisdialog.show();
	}else{
	    formDocumentos.show();	
	}
}

function validateForm(formid) 
{
    var form = dijit.byId(formid);
    
    if (!form.validate()) 
    {
	    showDialogAlert(formid, "Atenção", "Por favor, preencha todos os campos antes de continuar.", 1);
	    underlay.hide();
        return false;
    }
    return true;
}

function showDialogAlert(txtDialogId, txtTitle, txtContent, botaoFechar)
{
	if (botaoFechar == 1)
	{
	    var botaoFechar = "<br><br><center><button dojoType='dijit.form.Button' type='submit' onclick='hideDialog('"+ txtDialogId +"')'>Ok</button></center>";
	}else{
		var botaoFechar = "";	
	}
	var thisdialog = new dijit.Dialog({ title: txtTitle, content: txtContent+botaoFechar});
	dojo.body().appendChild(thisdialog.domNode);
	thisdialog.closeButtonNode.style.display='none';
    thisdialog.startup();
	thisdialog.show();
}

function hideDialog(dialogId)
{
	var dlg = dijit.byId(dialogId);
    dlg.hide();
}
