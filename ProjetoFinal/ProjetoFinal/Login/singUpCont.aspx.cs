using ProjetoFinal.Classes.FunctionClasses;
using ProjetoFinal.Classes.ObjectClasses;
using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.Login
{
    public partial class singUpCont : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(((Utilizador)Session["novoUtilizador"]).username);
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            Utilizador utilizador = (Utilizador)Session["novoUtilizador"];
            
            utilizador.nome = name.Value;
            utilizador.apelido = surname.Value;
            utilizador.nif = nif.Value;
            utilizador.telefone = phone.Value;
            utilizador.id_tipoUtilizador = (agree.Checked) ? "3" : "4";
            utilizador.foto = "avatar.png";
            
            
            string resposta = DBConnections.insereRegisto(utilizador.username, utilizador.nome, utilizador.apelido, utilizador.telefone, utilizador.nif, utilizador.foto, utilizador.pass, utilizador.email, utilizador.id_tipoUtilizador,false);

            utilizador.id = Convert.ToInt32(resposta);
            Session["novoUtilizador"] = utilizador;

            if (Convert.ToInt32(resposta) >= 0)
            {
                Response.Write("Utilizador Registado Com Sucesso!");

                //Envia email ao utilizador para agradecer o registo e envia link para ativar a conta

                EmailSending.enviaEmailNovoUtilizador(utilizador.email, utilizador.id.ToString(), utilizador.nome);
                Session["novoUtilizador"] = null;
                Session["mensagem"] = null;
                Response.Write("<script>alert('Verifique o seu email para ativar a sua conta')</script>");
                utilizador = null;

            }
            else if (Convert.ToInt32(resposta) == -1) {
                Session["mensagem"]="<script>alert('Já existe um Utilizador com o mesmo User Name')</script>";
                Response.Redirect("singUp.aspx");
            }
            else if (Convert.ToInt32(resposta) == -2)
            {
                Session["mensagem"] = "<script>alert('Já existe um Utilizador com o mesmo Email')</script>";
                Response.Redirect("singUp.aspx");
            }
            else if (Convert.ToInt32(resposta) == -3)
            {
                Session["mensagem"]= "<script>alert('Já existe um Utilizador com o mesmo NIF')</script>";
                Response.Redirect("singUp.aspx");
            }

        }
    }
}