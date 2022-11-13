<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Respuesta3.aspx.cs" Inherits="EncuestasTarea5.Respuesta3" %>

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
            height: 47px;
        }
        .auto-style5 {
            text-align: center;
            height: 29px;
        }
        .auto-style6 {
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div class="auto-style1">
            Pregunta 3</div>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="337px" ImageUrl="~/Imagen3.png" Width="380px" />
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
                    
                    <table class="auto-style2">
                        <tr>
                            <td>
                                <table class="auto-style2">
                                    <tr>
                                        <td class="auto-style6"><asp:Button ID="bSalvar" runat="server" Text="Guardar respuestas y terminar" OnClick="bSalvar_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="bSalir" runat="server" OnClick="bNuevaEncuesta_Click" Text="Salir" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
