﻿using ProjetoFinal.Classes.ObjectClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.Home
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Utilizador util;
            if (Session["utilizador"] == null)
            {
                Response.Redirect("../Login/Login.aspx");
            }
            else
            {
               util = (Utilizador)Session["utilizador"];
               lbl_nome.Text = util.nome;
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Longin/PassChange.aspx");
        }
    }
}