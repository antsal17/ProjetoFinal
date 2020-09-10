using ProjetoFinal.Classes.ObjectClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.Login
{
    public partial class singUp : System.Web.UI.Page
    {
        Utilizador utilizador = new Utilizador();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pass.Attributes["type"] = "password";
                if (Session["novoUtilizador"] != null)
                {
                    Response.Write("Page load");
                    utilizador = (Utilizador)Session["novoUtilizador"];
                    tb_username.Text = utilizador.username.ToString();
                    tb_email.Value = utilizador.email;
                    string texto = Session["mensagem"].ToString();
                    Response.Write(texto);
                    if (texto.Contains("Email"))
                    {
                        tb_email.Attributes.Add("style", "color: red");
                    }
                    else if (texto.Contains("User Name"))
                    {
                        tb_username.Attributes.Add("style", "color: red");
                    }
                }
            }
        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            if (verificarPassWord() == false) {
                lblmensagem.Visible = true;
              
            }
            else { 
            Utilizador utilizador2 = new Utilizador();
            utilizador2.username = tb_username.Text;
            utilizador2.pass = pass.Value.ToString();
            utilizador2.email = tb_email.Value;
            Session["novoUtilizador"] = null;
            Session["novoUtilizador"] = utilizador2;
            Response.Redirect("singUpCont.aspx");
            lblmensagem.Visible = false;
            }
        }

        protected bool verificarPassWord()
        {
           return (pass.Value != re_pass.Value) ? false : true;
        }
            
            
            
            
    }
}