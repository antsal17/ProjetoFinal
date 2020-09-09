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

        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            Utilizador utilizador = (Utilizador)Session["novoUtilizador"];
            utilizador.nome = name.Value;
            utilizador.apelido = surname.Value;
            utilizador.nif = nif.Value;
            utilizador.telefone = phone.Value;
            utilizador.id_tipoUtilizador = (agree.Checked) ? "3" : "4";

            if (file.PostedFile != null && file.PostedFile.ContentLength > 4000)
            {
                string nomeFicheiro = file.PostedFile.FileName.ToString();
                file.PostedFile.SaveAs(Server.MapPath("..//Imagens//utilizadores//" +nif.Value.ToString() + nomeFicheiro));
                utilizador.foto = nif.Value.ToString()+nomeFicheiro;
            }
            else
                return; // Deverá colocar-se uma mensagem ao utilizador caso ele não coloque a foto?????
            
            string resposta = DBConnections.insereRegisto(utilizador.username, utilizador.nome, utilizador.apelido, utilizador.telefone, utilizador.nif, utilizador.foto, utilizador.pass, utilizador.email, utilizador.id_tipoUtilizador,false);

            utilizador.id = Convert.ToInt32(resposta);

            if (Convert.ToInt32(resposta)>=0) {
                Response.Write("Utilizador Registado Com Sucesso!");

                //Envia email ao utilizador para agradecer o registo e envia link para ativar a conta

                EmailSending.enviaEmailNovoUtilizador(utilizador.email, utilizador.id.ToString(),utilizador.nome);

                Response.Write("<script>alert('Verifique o seu email para ativar a sua conta')</script>");


            }
            utilizador = null;
        }
    }
}