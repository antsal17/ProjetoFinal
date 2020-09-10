using ProjetoFinal.Classes.ObjectClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.BackEnd.Admin
{
    public partial class backEndAdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["utilizador"] != null)
            {
                Utilizador utilizador = (Utilizador)Session["utilizador"];
                if (utilizador.id_tipoUtilizador == "1")
                {
                    img_avatar.ImageUrl = "~/Imagens/utilizadores/" + utilizador.foto;
                }
            }
            else
            {
                Response.Redirect("../../Login/Login.aspx");
            }
        }
    }
}