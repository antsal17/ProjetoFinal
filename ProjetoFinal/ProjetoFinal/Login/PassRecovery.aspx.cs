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
    public partial class PassRecovery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_recuperar_Click(object sender, EventArgs e)
        {
            string id = "", nome = "";

            (id, nome)=DBConnections.recuperacaoPW(tb_email.Value.ToString());

            EmailSending.enviaEmailRecuperaPW(tb_email.Value.ToString(), id, nome);
        }
    }
}