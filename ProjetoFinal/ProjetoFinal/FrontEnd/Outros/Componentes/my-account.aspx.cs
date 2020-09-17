using ProjetoFinal.Classes.ObjectClasses;
using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.FrontEnd.Outros.Componentes
{
    public partial class my_account : System.Web.UI.Page
    {
        static string nomeFoto = "";
        static string idUtilizador = "";
        static string idMoradaSelecionado = "";
        static string tipoUser = "";
        static bool addAdress = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            idUtilizador = "8";
            if (!IsPostBack)
            {
                devolveCliente();
            }
        }

        protected void devolveCliente()
        {
            Utilizador utilizador = DBConnections.DevolveClienteDetailAdmin(idUtilizador);
            tb_firstName.Value = utilizador.nome;
            tb_lastName.Value = utilizador.apelido;
            tb_email.Value = utilizador.email;
            tb_nif.Value = utilizador.nif;
            tb_phone.Value = utilizador.telefone;
            tb_username.Value = utilizador.username;
            tipoUser = utilizador.id_tipoUtilizador;
            nomeFoto = utilizador.foto;
            imgBtn_foto.ImageUrl = "~/Imagens/utilizadores/" + utilizador.foto;

        }

        protected void btn_updateData_ServerClick(object sender, EventArgs e)
        {
            string novoNomeFoto = "";
            if (fu_img.PostedFile.FileName != "")
            {
                string tipoFicheiro = fu_img.PostedFile.ContentType;
                string terminacaoTipoFicheiro = tipoFicheiro.Substring(tipoFicheiro.IndexOf("/") + 1);
                novoNomeFoto = tb_nif.Value + "." + terminacaoTipoFicheiro;
                fu_img.PostedFile.SaveAs(AppDomain.CurrentDomain.BaseDirectory + "Imagens\\utilizadores\\" + novoNomeFoto);

            }
            else
            {
                novoNomeFoto = nomeFoto;
            }


            DBConnections.atualizarClienteAdmin(idUtilizador, tb_username.Value, tb_firstName.Value, tb_lastName.Value, tb_phone.Value, novoNomeFoto, tb_email.Value, tipoUser , true);
            devolveCliente();
        }
    }
}