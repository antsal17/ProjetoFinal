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
    public partial class NewPassRecovery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_recuperar_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"].ToString() == "" || Request.QueryString["id"] == null) {
                Response.Redirect("Login.aspx");
            }
            string id = Request.QueryString["id"].ToString();

            DBConnections.recuperacaoPWInsercao(id, PassEncrypt.EncryptString(pass.Value.ToString()));

        }
    }
}