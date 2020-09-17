using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace ProjetoFinal.BackEnd.Admin.Products
{
    public partial class backEndAdminAddProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_AddPdc_Click(object sender, EventArgs e)
        {
            // nome descricao status qtd preco id_categoria fotoMain foto1 foto2 foto3 idUser idMorada

           string retorno = DBConnections.insereProduto(validationCustom18.Text.ToString(), validationCustom12.Value.ToString(), true, Convert.ToInt32(validationCustom24.Text), Convert.ToDouble(validationCustom25.Text), Convert.ToInt32(validationCustom22.SelectedValue.ToString()), "eu.png", "nao.png", "sei.png", "cu.pne", Convert.ToInt32(DropDownList2.SelectedValue.ToString()), Convert.ToInt32(DropDownList1.SelectedValue.ToString()));

            if (retorno == "0")
            {
                //utilizador já existe
                lbl_insertMsg.Visible = true;
                lbl_insertMsg.Text = "Produto já existe!";
            }
            else if (retorno == "1")
            {
                lbl_insertMsg.Visible = true;
                lbl_insertMsg.Text = "Produto inserido com sucesso!";
                //inserido
            }
        }

        string image(HtmlInputFile file, Label label)
        {
            if (file.PostedFile != null && file.PostedFile.ContentLength > 4000)
            {
                string nomeFicheiro = file.PostedFile.FileName.ToString();
                file.PostedFile.SaveAs(Server.MapPath("..//..//..//Imagens//produto//" + validationCustom18.Text.ToString() + DropDownList2.SelectedValue.ToString() + DropDownList1.SelectedValue.ToString() + nomeFicheiro));
                string nomeFinal = validationCustom18.Text.ToString() + DropDownList2.SelectedValue.ToString() + DropDownList1.SelectedValue.ToString() + nomeFicheiro;
                label.Text = nomeFinal;
                return nomeFinal;
            }
            return "lol";
        }
    }
}