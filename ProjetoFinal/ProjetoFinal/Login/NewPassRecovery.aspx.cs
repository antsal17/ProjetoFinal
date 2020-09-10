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
            //if (Request.QueryString["id"] == null || Request.QueryString["id"].ToString() == "")
            //{
            //    Response.Redirect("Login.aspx");
            //}
        }

        protected void btn_recuperar_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);

            //if (pass.Value != re_pass.Value)
            //{
            //    lblmensagem.Visible = true;
            //}
            //else
            //{
            //    string id = Request.QueryString["id"].ToString();
            //    DBConnections.recuperacaoPWInsercao(id, PassEncrypt.EncryptString(pass.Value.ToString()));
            //    lblmensagem.Visible = false;
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                

            //}
        }
    }
}