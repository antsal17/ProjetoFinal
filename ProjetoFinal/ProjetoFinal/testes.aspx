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
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
        &nbsp;Encripta pass<br />
            <br />
            <asp:TextBox ID="tb0" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click"/>
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


            <select class="form-control" id="ddl_clientState" runat="server" required="required">
                                                        <option value="true">Activate</option>
                                                        <option value="false">Deactivate</option>
                                                    </select>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />

        </div>
    </form>
</body>
</html>
