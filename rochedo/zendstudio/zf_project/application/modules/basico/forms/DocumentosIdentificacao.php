<form dojoType="dijit.form.Form" id="documentosIdentificacao" name="documentosIdentificacao" method="post" action="salvarDocumentos">
<table>
<tr>
<td colspan="2"> Preencha pelo menos um dos campos abaixo.</td>

</tr>
        <tr>
            <td>
                <label for="cpf">
                    CPF:
                </label>
            </td>
            <td>
                <input dojoType="dijit.form.ValidationTextBox" type="text" name="cpf" id="cpf" style="width: 200;" maxlength="11">
            </td>
        </tr>
        <tr>
            <td>
                <label for="rg">
                    RG:
                </label>
            </td>
            <td>
                <input dojoType="dijit.form.ValidationTextBox" type="text" name="rg" id="rg" style="width: 200;">
            </td>
        </tr>
        <tr>
            <td>
                <label for="cnh">
                    CNH:
                </label>
            </td>
            <td>
                <input dojoType="dijit.form.ValidationTextBox" type="text" name="cnh" id="cnh" style="width: 200;">
            </td>
        </tr>
        <tr>
            <td>
                <label for="passaporte">
                    Passaporte:
                </label>
            </td>
            <td>
                <input dojoType="dijit.form.ValidationTextBox" type="text" name="passaporte" id="passaporte" style="width: 200;">
            </td>
        </tr>
    
     
        <tr>
            <td align="center" colspan="2">
                <button dojoType="dijit.form.Button" type="submit" onClick="return dijit.byId('formDocumentos').isValid();">
                    OK
                </button>
                <button dojoType="dijit.form.Button" type="button" onClick="hideDialog('formDocumentos');">
                    Cancel
                </button>
            </td>
        </tr>
       
    </table>
 </form>