dojo.require("dijit.Dialog");
dojo.require("dijit.form.Button");
dojo.require("dijit.Form");

function validateForm(formid) 
{
    var form = dijit.byId(formid);
    
    if (!form.validate()) 
    {
	    showDialogAlert("dialogCadastroNovoUsuario", "Atenção!", "Por favor, preencha todos os campos antes de continuar.");
        return false;
    }

    return true;
}

function showDialogAlert(txtDialogId, txtTitle, txtContent)
{
	var botaoFechar = "<br><br><center><button dojoType='dijit.form.Button' type='submit' onclick='hideDialog('"+ txtDialogId +"')'>Ok</button></center>";
		
	var thisdialog = new dijit.Dialog({ title: txtTitle, content: txtContent+botaoFechar});
	dojo.body().appendChild(thisdialog.domNode);
	thisdialog.startup();
	thisdialog.show();
}

function hideDialog(dialogId)
{
    var dlg = dijit.byId(dialogId);
    dlg.hide();
}