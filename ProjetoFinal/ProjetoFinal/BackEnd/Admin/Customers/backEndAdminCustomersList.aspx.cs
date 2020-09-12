using ProjetoFinal.Classes.FunctionClasses;
using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal.BackEnd.Admin.customers
{
    public partial class backEndAdminCustomersList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rp_utilizadores_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView dr = (DataRowView)e.Item.DataItem;
                ((Image)e.Item.FindControl("img")).ImageUrl = "../../../Imagens/utilizadores/" + dr["foto"].ToString();
                ((Label)e.Item.FindControl("lbl_name")).Text = dr["nome"].ToString();
                ((Label)e.Item.FindControl("tb_email")).Text = dr["email"].ToString();
                ((Label)e.Item.FindControl("tb_phone")).Text = dr["telefone"].ToString();
                ((Label)e.Item.FindControl("tb_user")).Text = dr["tipo"].ToString();
                ((CheckBox)e.Item.FindControl("cb_ativo")).Checked = Convert.ToBoolean(dr["ativo"].ToString());
                ((LinkButton)e.Item.FindControl("btnImg_edit")).CommandArgument = dr["id"].ToString();
                ((LinkButton)e.Item.FindControl("btn_delete")).CommandArgument = dr["id"].ToString();
            }
        }

        protected void rp_utilizadores_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName.Equals("btn_delete"))
            {

                string id = ((LinkButton)e.Item.FindControl("btn_delete")).CommandArgument;

                string retorno = DBConnections.eliminaClienteAdmin(id);
                Response.Write(retorno);
                if (retorno == "1")
                {
                    Response.Write("<script>alert('Cliente apagado com sucesso!')</script>");
                }
                else
                {
                    Response.Write(retorno);
                }
            }
            rp_utilizadores.DataBind();
            if (e.CommandName.Equals("btnImg_edit"))
            {
                string id = ((LinkButton)e.Item.FindControl("btnImg_edit")).CommandArgument;
                Response.Redirect("backEndCustomerDetail.aspx?id=" + PassEncrypt.EncryptString(id));
            }
        }
    }
}