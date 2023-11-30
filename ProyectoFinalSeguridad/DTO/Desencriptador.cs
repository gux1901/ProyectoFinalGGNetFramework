using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoFinalSeguridad.DTO
{
    public class Desencriptador
    {

        public byte[] CipherText { get; set; }
        public byte[] Key { get; set; }
        public byte[] IV { get; set; }
    }
}