using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Models
{
    public class ubicaciones
    {
        //Provincias
        public int idProvincia { get; set; }

        public String provincias { get; set; }

        //Cantones
        public int idCanton { get; set; }

        public int idCantonProvincia { get; set; }

        public String cantones { get; set; }

        //Distritos
        public int idDistrito { get; set; }

        public int idDistritoCanton { get; set; }

        public String providistritosncia { get; set; }


    }
}