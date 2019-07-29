using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Models
{
    public class ubicaciones
    {

        public int id { get; set; }

        public String provincia { get; set; }

        public int idProvincia { get; set; }

        public String canton { get; set; }

        public int idCanton { get; set; }

        public String distritos { get; set; }

    }
}