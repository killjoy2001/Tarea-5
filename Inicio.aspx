<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="EncuestasTarea5.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
            color: #FFFFFF;
            background-color: #336699;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: left;
            width: 359px;
        }
        .auto-style5 {
            width: 359px;
        }
        .auto-style6 {
            width: 359px;
            height: 21px;
            text-align: left;
        }
        .auto-style7 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Encuesta</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">Ingrese sus datos para comenzar:</td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">Nombre:<asp:TextBox ID="tNombre" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Cédula&nbsp; :<asp:TextBox ID="tCedula" runat="server" OnTextChanged="tCedula_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:RadioButton ID="rm" Text="Masculino" runat="server" />
                    <asp:RadioButton ID="rf" Text="Femenino" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="bIniciarEncuesta" runat="server" OnClick="bIniciarEncuesta_Click" Text="Iniciar encuesta!" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
