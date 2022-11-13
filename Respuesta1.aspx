<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Respuesta1.aspx.cs" Inherits="EncuestasTarea5.Respuesta1" %>

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
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: center;
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div>
        <div class="auto-style1">
            Pregunta 1</div>
        </div>
            <asp:Image ID="Image1" runat="server" Height="311px" ImageUrl="~/Imagen1.png" Width="377px" />
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>a</asp:ListItem>
                        <asp:ListItem>b</asp:ListItem>
                        <asp:ListItem>c</asp:ListItem>
                        <asp:ListItem>d</asp:ListItem>
                        <asp:ListItem>e</asp:ListItem>
                        <asp:ListItem>f</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="bSiguiente1" runat="server" Text="Siguiente pregunta" OnClick="bSiguiente1_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
