dojo.require("dijit.Dialog");
dojo.require("dijit.form.Button");
dojo.require("dijit.Form");

function validateForm(formid) 
{
    var form = dijit.byId(formid);
    
    if (!form.validate()) 
    {
	    showDialogAlert("dialogCadastroNovoUsuario", "Atenção", "Por favor, preencha todos os campos antes de continuar.", 1);
        return false;
    }
    showDialogAlert("dialogCadastroNovoUsuario", "Enviando", "<div id='loading_img'></div><br><center><label>Enviando...</label></center>", 0);
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
	thisdialog.startup();
	thisdialog.show();
}

function hideDialog(dialogId)
{
	var dlg = dijit.byId(dialogId);
    dlg.hide();
}

function showLoadingImg()
{
    if (document.getElementById) 
    { 
	    (document.getElementById("loading_img")).style.visibility = "visible"; 
	}
}