using ProjetoFinal.Classes.ObjectClasses;
using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.BackEnd.Admin.customers
{
    public partial class backEndAdminAddCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Utilizador utilizador;
            //if (Session["utilizador"] == null || (utilizador = (Utilizador)Session["utilizador"]).id_tipoUtilizador!="1")
            //{
            //    Response.Redirect("../../../Login/Login.aspx");
            //}
        }

        //protected void btn_insert_Click(object sender, EventArgs e)
        //{
        //    string nomeFicheiro="";
        //    if (fu_foto.PostedFile != null && fu_foto.PostedFile.ContentLength > 4000)
        //    {
        //        string fileType = fu_foto.PostedFile.ContentType.ToString();
        //        nomeFicheiro = tb_nif.Value.ToString() + "." +fileType.Substring(fileType.IndexOf("/")+1);
        //        fu_foto.PostedFile.SaveAs(Server.MapPath("..//..//..//Imagens//utilizadores//" + nomeFicheiro));
                
        //    }
        //    else
        //        return; // Deverá colocar-se uma mensagem ao utilizador caso ele não coloque a foto?????
        //    string retorno = DBConnections.insereRegisto(tb_userName.Value, tb_firstName.Value, tb_lastName.Value, tb_phone.Value, tb_nif.Value, nomeFicheiro, tb_pass.Value, tb_email.Value, ddl_usertype.SelectedValue,Convert.ToBoolean(ddl_clientState.Value));
        //}
    }
}