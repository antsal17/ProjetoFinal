using ProjetoFinal.Classes.FunctionClasses;
using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.Login
{
    public partial class AccountUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"]==null) {
                Response.Redirect("Login.aspx");
            }
            string id= PassEncrypt.DecryptString(Request.QueryString["id"].ToString());

            string retorno=DBConnections.ativacaoConta(id);

            if (retorno=="2") {

                Response.Write("<script>alert('A sua Conta Encontra-se neste Momento Ativa')</script>");
            }
            else if (retorno == "1")
            {
                Response.Write("<script>alert('A sua Conta Já tinha Sido Ativada')</script>");
            }
            else
            {
                Response.Write("<script>alert('Ocorreu um erro Contacte a Administracao')</script>");
            }
        }
    }
}