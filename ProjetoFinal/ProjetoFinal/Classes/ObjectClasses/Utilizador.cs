using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoFinal.Classes.ObjectClasses
{
    
    public class Utilizador
    {
        public string nome { get; set; }
        public string apelido { get; set; }
        public string telefone { get; set; }
        public string nif { get; set; }
        public bool ativo { get; set; }
        public DateTime dataRegisto { get; set; }
        public string foto { get; set; }
        public string id_tipoUtilizador { get; set; }
        public string pass { get; set; }
        public string username { get; set; }
        public string email { get; set; }

    }
}