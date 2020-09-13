<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testes2.aspx.cs" Inherits="ProjetoFinal.testes2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link href="BackEnd/Admin/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="BackEnd/Admin/vendors/iconic-fonts/font-awesome/css/all.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="BackEnd/Admin/vendors/iconic-fonts/flat-icons/flaticon.css" />
    <link rel="stylesheet" href="BackEnd/Admin/vendors/iconic-fonts/cryptocoins/cryptocoins.css" />
    <link rel="stylesheet" href="BackEnd/Admin/vendors/iconic-fonts/cryptocoins/cryptocoins-colors.css" />
</head>
<body>
    <form id="form1" runat="server">

        <asp:Repeater ID="rp_moradas" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="rp_moradas_ItemCommand" OnItemDataBound="rp_moradas_ItemDataBound">
            <HeaderTemplate>
                <div class="table-responsive ">
                    <table class="table table-striped">

                        <thead>
                            <tr>
                                <th scope="col">Morada</th>
                                <th scope="col">Cidade</th>
                                <th scope="col">Codigo Postal</th>
                                <th scope="col">Por Defeito</th>
                                <th scope="col">Abrir no Mapa</th>
                                <th scope="col"></th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><asp:TextBox ID="tb_morada" runat="server"></asp:TextBox></td>
                    
                    <td><asp:TextBox ID="tb_cidade" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="tb_cod" runat="server"></asp:TextBox></td>
                    <td><asp:CheckBox id="cb_pre" runat="server"></asp:CheckBox></td>
                    <td><asp:HyperLink ID="hl_coord" runat="server">HyperLink</asp:HyperLink></td>
                   
                    
                    <td><asp:LinkButton ID="btn_edit" runat="server" CommandName="btn_edit"><i class="fas fa-user-edit"></i></asp:LinkButton></td>
                    <td><asp:LinkButton ID="btn_delete" runat="server" CommandName="btn_delete"><i class="fas fa-trash-alt"></i></asp:LinkButton></td>
                </tr>

            </ItemTemplate>
            <FooterTemplate>
                </tbody>
  </table>
</div>
            </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ProjetoFinalConnectionString %>' SelectCommand="usp_lista_moradas_utilizador_admin" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:FormParameter FormField="id" DefaultValue="8" Name="id" Size="100000000" Type="Int32"></asp:FormParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>

</html>
