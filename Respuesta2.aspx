<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Respuesta2.aspx.cs" Inherits="EncuestasTarea5.Respuesta2" %>

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
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            height: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Pregunta 2</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="303px" ImageUrl="~/Imagen2.png" Width="345px" />
                </td>
            </tr>
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
                <td class="auto-style3">
                    
                <asp:Button ID="bSiguiente1" runat="server" Text="Siguiente pregunta" OnClick="bSiguiente1_Click" />
            </tr>
        </table>
    </form>
</body>
</html>
