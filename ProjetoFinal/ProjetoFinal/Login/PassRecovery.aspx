<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassRecovery.aspx.cs" Inherits="ProjetoFinal.Login.PassRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
            <asp:Button ID="btn_sumeter" runat="server" Text="Recuperar" OnClick="btn_sumeter_Click"/>
        </div>
    </form>
</body>
</html>
