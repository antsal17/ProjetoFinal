using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using static ProjetoFinal.Classes.Models.CoordAPIGoogle;

namespace ProjetoFinal.Classes.Services
{
    public class CoordAPIGoogle_Service
    {
        public RootobjectCoord devolveServico(string lat, string lng)
        {
            
            string url = String.Format("https://maps.googleapis.com/maps/api/geocode/json?latlng={0},{1}&key=AIzaSyCXMunW_R0k4kqH6qIf0_XiUszIqIqA6vc&sensor=true", lat, lng);
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
            RootobjectCoord objList = (RootobjectCoord)serializer.Deserialize(resultTest, typeof(RootobjectCoord));

            return objList;

        }
    }
}