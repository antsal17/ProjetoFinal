using ProjetoFinal.Classes.FunctionClasses;
using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal
{
    public partial class testes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = PassEncrypt.EncryptString(tb.Text.ToString());
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //EmailSending.enviaEmailNovoUtilizador(TextBox1.Text.ToString()); 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Text = PassEncrypt.DecryptString(tb0.Text.ToString());
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string id = "", nome = "";

            (id, nome) = DBConnections.recuperacaoPW(TextBox2.Text.ToString());

            Label3.Text = $"ID:{id},nome:{nome}";

            //EmailSending.enviaEmailRecuperaPW(tb_email.Value.ToString(), id, nome);
        }
    }
}