//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Proyecto.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class distritos
    {
        public int id { get; set; }
        public Nullable<int> idCanton { get; set; }
        public string distritos1 { get; set; }
    
        public virtual cantones cantones { get; set; }
    }
}
