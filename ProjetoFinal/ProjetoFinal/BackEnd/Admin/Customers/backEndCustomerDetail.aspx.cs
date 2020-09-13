using ProjetoFinal.Classes.APIS;
using ProjetoFinal.Classes.FunctionClasses;
using ProjetoFinal.Classes.ObjectClasses;
using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.BackEnd.Admin.Customers
{
    public partial class backEndCustomerDetail : System.Web.UI.Page
    {
        static string nomeFoto = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ////Request.QueryString["id"] = PassEncrypt.EncryptString("8");
            //if (Request.QueryString["id"] == null) { Response.Redirect("../../../Login/Login.aspx"); }
            //else
            //{
            if (!IsPostBack)
            {
                devolveCliente();



            }
            //}
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            string novoNomeFoto = "";
            Response.Write(fu_img.PostedFile.FileName);
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


            DBConnections.atualizarClienteAdmin("2009", tb_userName.Value, tb_firstName.Value, tb_lastName.Value, tb_phone.Value, novoNomeFoto, tb_email.Value, ddl_usertype.SelectedValue, Convert.ToBoolean((ddl_state.SelectedValue == "1") ? true : false));
            devolveCliente();
        }

        protected void devolveCliente()
        {
            Utilizador utilizador = DBConnections.DevolveClienteDetailAdmin("2009"); //PassEncrypt.DecryptString(Request.QueryString["id"]));
            tb_firstName.Value = utilizador.nome;
            tb_lastName.Value = utilizador.apelido;
            tb_email.Value = utilizador.email;
            tb_nif.Value = utilizador.nif;
            tb_phone.Value = utilizador.telefone;
            tb_userName.Value = utilizador.username;
            tb_date.Value = utilizador.dataRegisto.ToString();
            ddl_usertype.SelectedValue = utilizador.id_tipoUtilizador.ToString();
            nomeFoto = utilizador.foto;
            imgBtn_foto.ImageUrl = "~/Imagens/utilizadores/" + utilizador.foto;
            ddl_state.SelectedValue = Convert.ToInt32(utilizador.ativo).ToString();
        }

        protected void tb_zipCode_TextChanged(object sender, EventArgs e)
        {
            string zipHTTP = tb_zipCode.Text.Replace("-", "");
            string url = String.Format("http://codigospostais.appspot.com/cp7?codigo=" + zipHTTP);
            WebRequest request = WebRequest.Create(url);
            request.Method = "GET";
            HttpWebResponse responseObject = null;
            responseObject = (HttpWebResponse)request.GetResponse();

            string resultTest = null;
            using (Stream st = responseObject.GetResponseStream())
            {
                StreamReader sr = new StreamReader(st);
                resultTest = sr.ReadToEnd();
                sr.Close();
            }

            var serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            zipCode objList = (zipCode)serializer.Deserialize(resultTest, typeof(zipCode));

            string rua = objList.arteria;
            string cidade = objList.localidade;

            tb_address.Value = rua;
            tb_city.Value = cidade;


        }
    }
}