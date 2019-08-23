using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Models
{
    public class ConsultaViewModel
    {
        //Consulta
        public int Id { get; set;}
        public string Nombre { get; set; }
        public string Consulta { get; set; }

        //Respuesta
        public int id { get; set; }
        public int consultaId { get; set; }
        public string nombre { get; set; }
        public string respuesta { get; set; }
    }
}