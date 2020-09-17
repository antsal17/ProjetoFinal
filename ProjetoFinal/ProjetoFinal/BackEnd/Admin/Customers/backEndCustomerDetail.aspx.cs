using ProjetoFinal.Classes.APIS;
using ProjetoFinal.Classes.FunctionClasses;
using ProjetoFinal.Classes.ObjectClasses;
using ProjetoFinal.Classes.Services;
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
using static ProjetoFinal.Classes.APIS.AdressAPIGoogle;
using static ProjetoFinal.Classes.Models.CoordAPIGoogle;

namespace ProjetoFinal.BackEnd.Admin.Customers
{
    public partial class backEndCustomerDetail : System.Web.UI.Page
    {
        static string nomeFoto = "", novoNomeFoto = "";
        static string idUtilizador = "";
        static string idMoradaSelecionado = "";
        static bool addAdress = false, eliminarMorada=false;
        AdressAPIGoogle_Service apiGoogle = new AdressAPIGoogle_Service();
        CoordAPIGoogle_Service apiCoordGoogle = new CoordAPIGoogle_Service();
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
                preencheMorada();
            }
            else { 
            if (addAdress ==true) {
                    Response.Write("entrei no pageload vou mostrar o modal");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                    addAdress = false;
                }
            }
            //}
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            
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
            
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalEliminaMorada();", true);
            eliminarMorada = false;
            modal_body_text.Text = "Tem a certeza que pertende salvar as alterações?";
            modal_title_text.Text = "Guardar Alterações";
            btn_eliminar.Text = "Gravar";
            


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
                addAdress = false;
                eliminarMorada = true;
                modal_body_text.Text = "Está prestes a eliminar uma morada, pertende continuar?";
                modal_title_text.Text = "Eliminar Morada";
                btn_eliminar.Text = "Eliminar";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalEliminaMorada();", true);
                idMoradaSelecionado = ((LinkButton)e.Item.FindControl("btn_delete")).CommandArgument;
                
                preencheMorada();
            }

            if (e.CommandName.Equals("btn_edit"))
            {
                addAdress = false;
                Morada m;
                string erro;
                idMoradaSelecionado = ((LinkButton)e.Item.FindControl("btn_edit")).CommandArgument;
                (erro,m)= DBConnections.listaMoradaClienteAdmin(idUtilizador, idMoradaSelecionado);
                Response.Write(erro);
                tb_city.Value = m.cidade;
                tb_description.Value = m.descricao;
                tb_localidade.Value = m.localidade;
                tb_street.Value = m.rua;
                tb_zipCode.Text = m.zip;
                tb_longitude.Value = m.lon;
                tb_latitude.Value = m.lat;
                cb_byDefault.Checked = m.def;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                btn_adicionar.Text = "Save";
            }
        }

      

        protected void btn_addAdress_Click(object sender, EventArgs e)
        {
            addAdress = true;
            btn_adicionar.Text = "Add";
            limpaMorada();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }

        protected void btn_adicionar_Click(object sender, EventArgs e)
        {
            if (addAdress==true || btn_adicionar.Text == "Add")
            {
                string retorno = DBConnections.insereMoradaClienteAdmin(idUtilizador, tb_city.Value, cb_byDefault.Checked, tb_zipCode.Text, tb_localidade.Value, tb_street.Value, tb_description.Value, tb_latitude.Value, tb_longitude.Value);
                rp_moradas.DataBind();
                limpaMorada();
            }
            else
            {
                string retorno = DBConnections.atualizaMoradaClienteAdmin(idUtilizador, idMoradaSelecionado, tb_city.Value, cb_byDefault.Checked, tb_zipCode.Text, tb_localidade.Value, tb_street.Value, tb_description.Value, tb_latitude.Value, tb_longitude.Value);
                Response.Write(retorno);
                rp_moradas.DataBind();
            }
            
        }

        protected void btn_eliminar_Click(object sender, EventArgs e)
        {
            addAdress = false;
            if (eliminarMorada==true) { 
            DBConnections.eliminaMoradaClienteAdmin(idUtilizador, idMoradaSelecionado);
            idMoradaSelecionado = "";
            rp_moradas.DataBind();
            limpaMorada();
            }
            else
            {
                DBConnections.atualizarClienteAdmin(idUtilizador, tb_userName.Value, tb_firstName.Value, tb_lastName.Value, tb_phone.Value, novoNomeFoto, tb_email.Value, ddl_usertype.SelectedValue, Convert.ToBoolean((ddl_state.SelectedValue == "1") ? true : false));
                devolveCliente();
            }
        }

        protected void refresh_Click(object sender, EventArgs e)
        {
            
            Rootobject obj = apiGoogle.devolveServico(tb_zipCode.Text);
             string latitude = obj.results[0].geometry.location.lat.ToString().Replace(",",".");
             string longitude = obj.results[0].geometry.location.lng.ToString().Replace(",", ".");

            RootobjectCoord objCoord = apiCoordGoogle.devolveServico(latitude, longitude);

            tb_street.Value= objCoord.results[0].address_components[1].long_name.ToString();
            tb_localidade.Value = objCoord.results[0].address_components[2].long_name.ToString();
            tb_city.Value = objCoord.results[0].address_components[3].long_name.ToString();
            tb_longitude.Value = latitude;
            tb_latitude.Value = longitude;
        }

        protected void close_Click(object sender, EventArgs e)
        {
           
            addAdress = false;
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
            cb_byDefault.Checked = true;
             
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
            cb_byDefault.Checked = false;
        }


    }
}