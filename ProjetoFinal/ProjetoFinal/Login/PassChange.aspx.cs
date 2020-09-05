using ProjetoFinal.Classes.FunctionClasses;
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
    public partial class PassChange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["utilizador"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void btn_change_Click(object sender, EventArgs e)
        {
            Utilizador util = (Utilizador)Session["utilizador"];
            string retorno = DBConnections.alteracaoPW(util.id, PassEncrypt.EncryptString(oldPass.Value.ToString()), PassEncrypt.EncryptString(NewPass.Value.ToString()));
            if (retorno == "2")
            {
                Response.Write("<script>alert('Palavra Passe Alterada com Sucesso!')</script>");
            }
        }
    }
}