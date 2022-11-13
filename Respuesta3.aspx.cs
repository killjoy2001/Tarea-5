using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestasTarea5
{
    public partial class Respuesta3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void bNuevaEncuesta_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPrincipal.aspx");
        }

        protected void Salvar()
        {
            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["EncuestasTarea5ConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO Persona (CedulaP, Nombre, Genero) VALUES('" + Persona.cedula + "', '" + Persona.nombre + "', '" + Persona.genero + "')", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();

                conexion.Open();
                comando = new SqlCommand(" INSERT INTO Respuestas VALUES('" + Persona.cedula + "', '" + Persona.r1 + "', '" + Persona.r2 + "', '" + Persona.r3 + "')", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();

                LlenarGrid();
            }
            catch(Exception)
            {

            }          
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["EncuestasTarea5ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT r.ID, r.CedulaR, p.Nombre, r.R1, r.R2, r.R3 from Respuestas r inner join Persona p on r.CedulaR= p.CedulaP"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        // imprime el cálculo de respuestas buenas y malas. 
        
        protected void Nota()
        {
            if (Persona.r1 == "f")
            {
                Label1.Text = "Pregunta 1 correcta";

            }
            else { Label1.Text = "Pregunta 1 incorrecta"; }
            if (Persona.r2 == "b")
            {
                Label2.Text = "Pregunta 2 correcta";
            }
            else { Label2.Text = "Pregunta 2 incorrecta"; }
            if (Persona.r3 == "a")
            {
                Label3.Text = "Pregunta 3 correcta";
            }
            else { Label3.Text = "Pregunta 3 incorrecta."; }

            Label4.Text = "Nota obtenida: " + Persona.notaTotal + " ("+ Persona.rBuenas+" buenas y "+Persona.rMalas+" malas)";
        }
        protected void bSalvar_Click(object sender, EventArgs e)
        {
            Persona.r3 = DropDownList1.SelectedValue;
            Persona.Nota();
            Nota();
            Salvar();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}