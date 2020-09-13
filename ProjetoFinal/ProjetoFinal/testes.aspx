<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testes.aspx.cs" Inherits="ProjetoFinal.testes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group">
            <asp:TextBox ID="tb" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            &nbsp;Encripta pass<br />
            <br />
            <asp:TextBox ID="tb0" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
            <br />
            <br />
            Teste email: Mensagem de novo utilizador:<br />
            Coloca email:<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />

            Teste recuperacao pw: :<br />
            Coloca email:<br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            ID e nome:
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
            <br />
            <br />
            <asp:DropDownList ID="DropDownList2" AutoPostBack="true" class="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="username" DataValueField="id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProjetoFinalConnectionString %>" SelectCommand="SELECT * FROM [utilizador] INNER JOIN [tipoUtilizador] ON tipoUtilizador.id = utilizador.id_tipoUtilizador WHERE tipoUtilizador.id = 3"></asp:SqlDataSource>
            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="rua" DataValueField="id" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjetoFinalConnectionString %>" SelectCommand="select * from utilizador INNER JOIN utilizador_morada ON utilizador_morada.id_utilizador = utilizador.id INNER JOIN morada ON  morada.idMorada = utilizador_morada.id_morada where utilizador.id = @id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Random PAssWord" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.stackoverflow.com">HyperLink</asp:HyperLink>

        </div>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
