dojo.require("dijit.Dialog");
dojo.require("dijit.form.Button");
dojo.require("dijit.Form");

function validateForm(formid) {
var form = dijit.byId(formid);
if (!form.validate()) {
	dialogAlert("Atenção!", "Preencha todos os campos antes de continuar.");
return false;
}

return true;
}

function dialogAlert(txtTitle, txtContent)
{
	var thisdialog = new dijit.Dialog({ title: txtTitle, content: txtContent });
	dojo.body().appendChild(thisdialog.domNode);
	thisdialog.startup();
	thisdialog.show();
}


