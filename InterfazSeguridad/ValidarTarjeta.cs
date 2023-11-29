﻿using InterfazSeguridad.wsSeguridad;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace InterfazSeguridad
{
    public partial class ValidarTarjeta : Form
    {
        private static byte[] generateKey;
        private static byte[] generateIv;
        private static string tarjeta;
        private static string textoSanitizado;
        private static byte[] encryptText;
        private static byte[] hash;
        private static byte[] hashDesencriptado;
        private static string decryptText;
        public static readonly wsSeguridad.WsSeguridad ws = new wsSeguridad.WsSeguridad();
        public ValidarTarjeta()
        {
            InitializeComponent();
        }

        private void btnProcesar_Click(object sender, EventArgs e)
        {
            tarjeta = Regex.Replace(txbTarjeta.Text, @"[^\w\s.!@$%^&*()\-\/]+", "");
            lblProcesando.Text = "Texto Sanitizado "+ tarjeta;

            textoSanitizado = ws.Tarjetas(tarjeta);
            txbTarjeta.Text = textoSanitizado;
            lblProcesando.Text += "\nValidacion Tarjeta "+ textoSanitizado;
            if (!textoSanitizado.Contains("No es tarjeta Valida"))
            {
                if (generateIv == null && generateKey == null)
                {
                    _ = new GeneradorLlaves();
                    GeneradorLlaves llaves = ws.ObtenerLlaves();
                    generateKey = llaves.Key;
                    generateIv = llaves.Iv;
                }
                lblProcesando.Text += "\nLlave: " + Convert.ToBase64String(generateKey);
                lblProcesando.Text += "\nIV: " + Convert.ToBase64String(generateIv);
                hash = ws.Hashing(tarjeta);
                lblProcesando.Text += "\nHash: " + Convert.ToBase64String(hash);
                wsSeguridad.Encriptador objetoEncriptador = new Encriptador();
                
                objetoEncriptador.Key = generateKey;
                objetoEncriptador.IV = generateIv;
                objetoEncriptador.PlainText = tarjeta;
                encryptText = ws.Encriptar(objetoEncriptador);

                lblProcesando.Text += "\nTextoEncriptado: " + Convert.ToBase64String(encryptText);

                Desencriptador desencriptador = new Desencriptador();
                desencriptador.Key = generateKey;
                desencriptador.IV = generateIv;
                desencriptador.CipherText = encryptText;
                decryptText = ws.Desencriptar(desencriptador);

                lblProcesando.Text += "\nTextoDesencriptado: " + decryptText;

                hashDesencriptado = ws.Hashing(decryptText);
                lblProcesando.Text += "\nHash despues de desencriptar: " + Convert.ToBase64String(hashDesencriptado);

                if (Convert.ToBase64String(hash) == Convert.ToBase64String(hashDesencriptado)) lblProcesando.Text += "\nPrimer Hash igual a hash despues de desencriptacion ";
            }





        }

        private void txbTarjeta_Enter(object sender, EventArgs e)
        {
                txbTarjeta.Text = tarjeta;
        }

        private void txbTarjeta_Leave(object sender, EventArgs e)
        {
                //txbTarjeta.Text = textoSanitizado;
        }
    }
}
