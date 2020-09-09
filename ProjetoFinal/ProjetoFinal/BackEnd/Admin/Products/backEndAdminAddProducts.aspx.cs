using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.BackEnd.Admin.Products
{
    public partial class backEndAdminAddProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_AddPdc_Click(object sender, EventArgs e)
        {
            string retorno = "";
             utilizador;

            (retorno, utilizador) = DBConnections.verificaLogin(tb_email_user.Value.ToString(), tb_pass.Value.ToString());

            if (retorno == "2")
            {
                Session["utilizador"] = utilizador;
                Response.Write(utilizador.email.ToString());
                Response.Redirect("../Home/index.aspx");
            }
            else
            {
                Response.Write(retorno.ToString());
            }
        }
    }
}