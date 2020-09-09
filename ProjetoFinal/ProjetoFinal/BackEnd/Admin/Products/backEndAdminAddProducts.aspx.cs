﻿using ProjetoFinal.FunctionClasses;
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
            string retorno = "";
            // nome descricao status qtd preco id_categoria fotoMain foto1 foto2 foto3 idUser idMorada

            if (ckbEstado.Checked)
            {
                retorno = DBConnections.insereProduto(validationCustom18.Text.ToString(), validationCustom12.Value.ToString(), true,  Convert.ToInt32(validationCustom24.Text), Convert.ToDouble(validationCustom25.Text), Convert.ToInt32(validationCustom22.SelectedValue.ToString()), image(validatedCustomFile, lblMain), image(validatedCustomFile1, lblImage1), image(validatedCustomFile2, lblImage2), image(validatedCustomFile3, lblImage3), Convert.ToInt32(DropDownList2.SelectedValue.ToString()), Convert.ToInt32(DropDownList1.SelectedValue.ToString()));
            }
            else
            {
                retorno = DBConnections.insereProduto(validationCustom18.Text.ToString(), validationCustom12.Value.ToString(), false, Convert.ToInt32(validationCustom24.Text), Convert.ToDouble(validationCustom25.Text), Convert.ToInt32(validationCustom22.SelectedValue.ToString()), image(validatedCustomFile, lblMain), image(validatedCustomFile1, lblImage1), image(validatedCustomFile2, lblImage2), image(validatedCustomFile3, lblImage3), Convert.ToInt32(DropDownList2.SelectedValue.ToString()), Convert.ToInt32(DropDownList1.SelectedValue.ToString()));
            }

            if (retorno == "0")
            {
                //utilizador já existe
            }
            else if (retorno == "1")
            {
                //inserido
            }
        }

        string image(HtmlInputFile file, Label label)
        {
            if (file.PostedFile != null && file.PostedFile.ContentLength > 4000)
            {
                string nomeFicheiro = file.PostedFile.FileName.ToString();
                file.PostedFile.SaveAs(Server.MapPath("..//Imagens//utilizadores//" + validationCustom18.Text.ToString() + DropDownList2.SelectedValue.ToString() + DropDownList1.SelectedValue.ToString() + nomeFicheiro));
                string nomeFinal = validationCustom18.Text.ToString() + DropDownList2.SelectedValue.ToString() + DropDownList1.SelectedValue.ToString() + nomeFicheiro;
                label.Text = nomeFinal;
                return nomeFinal;
            }
            return "lol";
       }
    }
}