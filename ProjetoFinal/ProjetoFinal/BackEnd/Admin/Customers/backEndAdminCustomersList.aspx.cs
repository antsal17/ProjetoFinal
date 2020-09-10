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

                //((Button)e.Item.FindControl("btn_grava")).CommandArgument = dr["id"].ToString();
                //((Button)e.Item.FindControl("btn_apaga")).CommandArgument = dr["id"].ToString();

            }
        }

        protected void rp_utilizadores_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}