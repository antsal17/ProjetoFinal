using ProjetoFinal.Classes.FunctionClasses;
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
            //if (Session["utilizador"] == null || (utilizador = (Utilizador)Session["utilizador"]).id_tipoUtilizador != "1")
            //{
            //    Response.Redirect("../../../Login/Login.aspx");
            //}
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            string randomPassWord = PassEncrypt.GenerateRandomString(8, 15, 2, 2, 2, 1);
            
            string id_utilizador = DBConnections.insereRegisto(tb_userName.Value, tb_firstName.Value, tb_lastName.Value, tb_phone.Value, tb_nif.Value, "avatar.png", randomPassWord, tb_email.Value, ddl_usertype.SelectedValue, true);
            Response.Write(id_utilizador);
            if (Convert.ToInt32(id_utilizador) >= 0)
            {
               
                Response.Write("Utilizador Registado Com Sucesso!");

                //Envia email ao utilizador para agradecer o registo e envia link para ativar a conta

                EmailSending.enviaEmailNovoUtilizador(tb_email.Value, id_utilizador, tb_firstName.Value, Convert.ToInt32(id_utilizador), randomPassWord, false,true);
            }
            else if (Convert.ToInt32(id_utilizador) == -1)
            {
                Response.Write("<script>alert('Já existe um Utilizador com o mesmo User Name')</script>");
                
            }
            else if (Convert.ToInt32(id_utilizador) == -2)
            {
                Response.Write("<script>alert('Já existe um Utilizador com o mesmo Email')</script>");
                
            }
            else if (Convert.ToInt32(id_utilizador) == -3)
            {
                Response.Write("<script>alert('Já existe um Utilizador com o mesmo NIF')</script>");
                
            }
        }
    }
}