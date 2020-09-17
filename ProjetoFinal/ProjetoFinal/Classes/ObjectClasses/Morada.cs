using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoFinal.Classes.ObjectClasses
{
    public class Morada
    {
        public string cidade { get; set; }
		public bool def { get; set; }
		public string zip { get; set; }
		public string localidade { get; set; }
		public string rua { get; set; }
		public string descricao { get; set; }
		public string lat { get; set; }
		public string lon { get; set; }
    }
}