using ProjetoFinal.Classes.FunctionClasses;
using ProjetoFinal.Classes.ObjectClasses;
using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.BackEnd.Admin.Customers
{
    public partial class backEndCustomerDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Request.QueryString["id"] = PassEncrypt.EncryptString("8");
            //if (Request.QueryString["id"] == null) { Response.Redirect("../../../Login/Login.aspx"); }
            //else
            //{
                Utilizador utilizador = DBConnections.DevolveClienteDetailAdmin("8"); //PassEncrypt.DecryptString(Request.QueryString["id"]));
                tb_firstName.Value = utilizador.nome;
                tb_lastName.Value = utilizador.apelido;
                tb_email.Value = utilizador.email;
                tb_nif.Value = utilizador.nif;
                tb_phone.Value = utilizador.telefone;
                tb_userName.Value = utilizador.username;
            tb_date.Value = utilizador.dataRegisto.ToString();
                ddl_usertype.SelectedValue = utilizador.id_tipoUtilizador;
                imgBtn_foto.ImageUrl = "~/Imagens/utilizadores/" + utilizador.foto;
            ddl_state.SelectedValue = Convert.ToInt32(utilizador.ativo).ToString();



            //}
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {

        }

        protected void imgBtn_foto_Click(object sender, ImageClickEventArgs e)
        {
          
        }
    }
}