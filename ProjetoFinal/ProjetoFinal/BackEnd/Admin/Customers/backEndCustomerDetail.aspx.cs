using ProjetoFinal.Classes.APIS;
using ProjetoFinal.Classes.FunctionClasses;
using ProjetoFinal.Classes.ObjectClasses;
using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Data;
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
        static string idUtilizador = "";
        static string idMoradaAEliminar = "";
        static bool addAdress = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            ////Request.QueryString["id"] = PassEncrypt.EncryptString("8");
            //if (Request.QueryString["id"] == null) { Response.Redirect("../../../Login/Login.aspx"); }
            //else
            //{
            //idUtilizador = PassEncrypt.DecryptString(Request.QueryString["id"]);
            idUtilizador = "8";
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


            DBConnections.atualizarClienteAdmin(idUtilizador, tb_userName.Value, tb_firstName.Value, tb_lastName.Value, tb_phone.Value, novoNomeFoto, tb_email.Value, ddl_usertype.SelectedValue, Convert.ToBoolean((ddl_state.SelectedValue == "1") ? true : false));
            devolveCliente();
        }

        protected void devolveCliente()
        {
            Utilizador utilizador = DBConnections.DevolveClienteDetailAdmin(idUtilizador); 
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

        protected void rp_moradas_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                
                DataRowView dr = (DataRowView)e.Item.DataItem;
                ((TextBox)e.Item.FindControl("tb_morada")).Text = dr["rua"].ToString();
                ((TextBox)e.Item.FindControl("tb_cidade")).Text = dr["nome"].ToString();
                ((TextBox)e.Item.FindControl("tb_cod")).Text = dr["codPostal"].ToString();
                ((CheckBox)e.Item.FindControl("cb_pre")).Checked = Convert.ToBoolean(dr["predefinida"].ToString());
                ((HyperLink)e.Item.FindControl("hl_coord")).NavigateUrl = "https://www.google.pt/maps/dir//" + dr["latitude"].ToString() + "," + dr["longitude"].ToString();
                ((LinkButton)e.Item.FindControl("btn_edit")).CommandArgument = dr["idMorada"].ToString();
                ((LinkButton)e.Item.FindControl("btn_delete")).CommandArgument = dr["idMorada"].ToString();
                

            }
        }

        protected void rp_moradas_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("btn_delete"))
            {
                
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalEliminaMorada();", true);
                idMoradaAEliminar = ((LinkButton)e.Item.FindControl("btn_delete")).CommandArgument;
                btn_adicionar.Text = "Add";
                preencheMorada();



            }

            if (e.CommandName.Equals("btn_edit"))
            {
                addAdress = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                idMoradaAEliminar = ((LinkButton)e.Item.FindControl("btn_edit")).CommandArgument;
                btn_adicionar.Text = "Save";
            }
        }

        protected void tb_zipCode_TextChanged(object sender, EventArgs e)
        {
            Response.Write("Caraças");
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
            
            tb_morada1.Text = rua;
            tb_cidade1.Text = cidade;
            tb_street.Value = rua;
            tb_localidade.Value = cidade;


        }

        protected void btn_addAdress_Click(object sender, EventArgs e)
        {
            addAdress = true;
            limpaMorada();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }

        protected void btn_adicionar_Click(object sender, EventArgs e)
        {
            if (addAdress == true)
            {
                string retorno = DBConnections.insereMoradaClienteAdmin(idUtilizador, tb_city.Value, cb_byDefault.Checked, tb_zipCode.Text, tb_localidade.Value, tb_street.Value, tb_description.Value, tb_latitude.Value, tb_longitude.Value);
                rp_moradas.DataBind();
            }
            else
                Response.Write("Olá");
        }

        protected void btn_eliminar_Click(object sender, EventArgs e)
        {
            DBConnections.eliminaMoradaClienteAdmin(idUtilizador, idMoradaAEliminar);
            idMoradaAEliminar = "";
            rp_moradas.DataBind();
            limpaMorada();
        }

        protected void preencheMorada()
        {
            tb_city.Value = "...";
            tb_description.Value = "...";
            tb_localidade.Value = "...";
            tb_street.Value = "...";
            tb_zipCode.Text = "0000-000";
            tb_longitude.Value = "...";
            tb_latitude.Value = "...";
             
        }

        protected void limpaMorada()
        {
            tb_city.Value = "";
            tb_description.Value = "";
            tb_localidade.Value = "";
            tb_street.Value = "";
            tb_zipCode.Text = "";
            tb_longitude.Value = "";
            tb_latitude.Value = "";

        }


    }
}