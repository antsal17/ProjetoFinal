using ProjetoFinal.Classes.ObjectClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.Login
{
    public partial class singUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            Utilizador utilizador = new Utilizador();
            utilizador.username = username.Value;
            utilizador.pass = pass.Value;
            utilizador.email = email.Value;
            Session["novoUtilizador"] = utilizador;
            Response.Redirect("singUpCont.aspx");

        }
    }
}