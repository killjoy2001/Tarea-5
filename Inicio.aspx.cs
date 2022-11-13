using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestasTarea5
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bIniciarEncuesta_Click(object sender, EventArgs e)
        {
            Persona.cedula = tCedula.Text;
            Persona.nombre = tNombre.Text;
            if (rf.Checked){
                Persona.genero = "F";
            } else 
            { 
                Persona.genero = "M"; 
            }
            
            Response.Redirect("Respuesta1.aspx");
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void tCedula_TextChanged(object sender, EventArgs e)
        {

        }
    }
}