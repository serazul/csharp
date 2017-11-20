using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Registro.Models
{
    public class UserData
    {
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Email { get; set; }
        public string Zip { get; set; }
        public string Genero { get; set; }
        public string Pais { get; set; }
    }
}