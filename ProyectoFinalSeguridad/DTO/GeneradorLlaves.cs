using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoFinalSeguridad.DTO
{
    public class GeneradorLlaves
    {
        
        public byte[] Key { get; set; }
        public byte[] Iv { get; set; }
    }
}