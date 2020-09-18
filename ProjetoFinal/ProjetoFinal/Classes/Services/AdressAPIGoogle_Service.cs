using ProjetoFinal.Classes.APIS;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using static ProjetoFinal.Classes.APIS.AdressAPIGoogle;

namespace ProjetoFinal.Classes.Services
{
    public class AdressAPIGoogle_Service
    {
        
        public Rootobject devolveServico(string zip)
        {
            
            string url = String.Format("https://maps.googleapis.com/maps/api/geocode/json?&address={0}&key=AIzaSyCXMunW_R0k4kqH6qIf0_XiUszIqIqA6vc",zip);
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
            Rootobject objList = (Rootobject)serializer.Deserialize(resultTest, typeof(Rootobject));

            return objList;
        }
    }
}