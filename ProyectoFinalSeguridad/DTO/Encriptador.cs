using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoFinalSeguridad.DTO
{
    public class Encriptador
    {
        
        public string PlainText { get; set; }
        public byte[] Key { get; set; }
        public byte[] IV { get; set; }
    }
}