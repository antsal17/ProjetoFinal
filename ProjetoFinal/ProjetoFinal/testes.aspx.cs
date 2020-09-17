using ProjetoFinal.Classes.FunctionClasses;
using ProjetoFinal.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal
{
    public partial class testes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = DistanceTo(38.76322, -9.09372, 38.755881, -9.288707).ToString();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = PassEncrypt.EncryptString(tb.Text.ToString());
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //EmailSending.enviaEmailNovoUtilizador(TextBox1.Text.ToString()); 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Text = PassEncrypt.DecryptString(tb0.Text.ToString());
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string id = "", nome = "";

            (id, nome) = DBConnections.recuperacaoPW(TextBox2.Text.ToString());

            Label3.Text = $"ID:{id},nome:{nome}";

            //EmailSending.enviaEmailRecuperaPW(tb_email.Value.ToString(), id, nome);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label6.Text = DistanceTo(38.76322, -9.09372, 38.755881, -9.288707).ToString();
        }

        public static double DistanceTo(double lat1, double lon1, double lat2, double lon2, char unit = 'K')
        {
            double rlat1 = Math.PI * lat1 / 180;
            double rlat2 = Math.PI * lat2 / 180;
            double theta = lon1 - lon2;
            double rtheta = Math.PI * theta / 180;
            double dist =
                Math.Sin(rlat1) * Math.Sin(rlat2) + Math.Cos(rlat1) *
                Math.Cos(rlat2) * Math.Cos(rtheta);
            dist = Math.Acos(dist);
            dist = dist * 180 / Math.PI;
            dist = dist * 60 * 1.1515;

            switch (unit)
            {
                case 'K': //Kilometers -> default
                    return dist * 1.609344;
                case 'N': //Nautical Miles 
                    return dist * 0.8684;
                case 'M': //Miles
                    return dist;
            }

            return dist;
        }

    }
}