using System;
using System.Collections.Generic;
using System.EnterpriseServices.Internal;
using System.Linq;
using System.Web;

namespace EncuestasTarea5
{
    public class Persona
    {
        public static string cedula { get; set; }
        public static string nombre { get; set; }
        public static string genero { get; set; }
        public static string r1 { get; set; }
        public static string r2 { get; set; }
        public static string r3 { get; set; }

        public static byte rBuenas;
        public static byte rMalas;

        public static string notaTotal = "0";
       

        public Persona() { }

        // lleva el conteo y saca el cálculo de respuestas buenas y malas. 
        public static void Nota()
        {
            if (r1 == "f")
            {
                rBuenas++;
                
            } else { rMalas++; }
            if (r2 == "b")
            {
                rBuenas++;
            }
            else { rMalas++; }
            if (r1 == "a")
            {
                rBuenas++;
            }
            else { rMalas++; }
            if (rBuenas == 3)
            {
                notaTotal = "100";
            } else if (rBuenas == 2)
            {
                notaTotal = "66";
            } else if (rBuenas == 1)
            {
                notaTotal = "33";
            } else { notaTotal = "0"; }
        }
        
    }
}