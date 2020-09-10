using ProjetoFinal.Classes.ObjectClasses;
using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_entrar_Click(object sender, EventArgs e)
        {
            string retorno = "";
            Utilizador utilizador;

            (retorno, utilizador) = DBConnections.verificaLogin(tb_email_user.Value.ToString(), tb_pass.Value.ToString());

            if (retorno == "2")
            {
                Session["utilizador"] = utilizador;
                //if(utilizador.id_tipoUtilizador=="1" || utilizador.id_tipoUtilizador == "2") { }
                Response.Redirect("../Home/index.aspx");
            }
            else if (retorno == "1")
            {
                Response.Write("<script>alert('A sua Conta não está Ativa')</script>");
            }
            else if (retorno == "0")
            {
                Response.Write("<script>alert('Palavra Passe Errada')</script>");
            }
            else if (retorno == "-1")
            {
                Response.Write("<script>alert('O email inserido não se encontra Registado! Registe-se')</script>");
            }
            else
            {
                Response.Write("<script>alert('Ocorreu um Erro, Contacte a Administração')</script>");
            }

        }
    }
}