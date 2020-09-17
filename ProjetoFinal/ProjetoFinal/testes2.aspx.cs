using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal
{
    public partial class testes2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 8;
        }

        protected void rp_moradas_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void rp_moradas_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView dr = (DataRowView)e.Item.DataItem;
                ((TextBox)e.Item.FindControl("tb_morada")).Text = dr["rua"].ToString();
                ((TextBox)e.Item.FindControl("tb_cidade")).Text = dr["nome"].ToString();
                ((TextBox)e.Item.FindControl("tb_cod")).Text = dr["codPostal"].ToString();
                ((CheckBox)e.Item.FindControl("cb_pre")).Checked = (dr["predefinida"].ToString()=="1")?true:false;
                ((HyperLink)e.Item.FindControl("hl_coord")).NavigateUrl = "https://www.google.pt/maps/dir//" + dr["latitude"].ToString() + "," + dr["longitude"].ToString();
                ((LinkButton)e.Item.FindControl("btn_edit")).CommandArgument = dr["idMorada"].ToString();
                ((LinkButton)e.Item.FindControl("btn_delete")).CommandArgument = dr["idMorada"].ToString();
            }
        }
    }
}