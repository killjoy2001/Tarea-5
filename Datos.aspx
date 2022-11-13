<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="EncuestasTarea5.Datos" %>

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
            width: 289px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div class="auto-style1">
            Datos</div>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CedulaP" DataSourceID="SqlDataSource1" Width="366px">
                        <Columns>
                            <asp:BoundField DataField="CedulaP" HeaderText="CedulaP" ReadOnly="True" SortExpression="CedulaP"></asp:BoundField>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                            <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero"></asp:BoundField>
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EncuestasTarea5ConnectionString %>" DeleteCommand="DELETE FROM [Persona] WHERE [CedulaP] = @CedulaP" InsertCommand="INSERT INTO [Persona] ([CedulaP], [Nombre], [Genero], [Fecha]) VALUES (@CedulaP, @Nombre, @Genero, @Fecha)" SelectCommand="SELECT * FROM [Persona]" UpdateCommand="UPDATE [Persona] SET [Nombre] = @Nombre, [Genero] = @Genero, [Fecha] = @Fecha WHERE [CedulaP] = @CedulaP">
                        <DeleteParameters>
                            <asp:Parameter Name="CedulaP" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CedulaP" Type="String" />
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Genero" Type="String" />
                            <asp:Parameter DbType="Date" Name="Fecha" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Genero" Type="String" />
                            <asp:Parameter DbType="Date" Name="Fecha" />
                            <asp:Parameter Name="CedulaP" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="147px">
                        <Columns>
                            <asp:BoundField DataField="R1" HeaderText="R1" SortExpression="R1" />
                            <asp:BoundField DataField="R2" HeaderText="R2" SortExpression="R2" />
                            <asp:BoundField DataField="R3" HeaderText="R3" SortExpression="R3" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EncuestasTarea5ConnectionString %>" SelectCommand="SELECT [R1], [R3], [R2] FROM [Respuestas] ORDER BY [CedulaR]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
