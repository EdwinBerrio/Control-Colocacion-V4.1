using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppControl
{
    public partial class M_ActualizarUsuario : System.Web.UI.Page
    {
        LayerBussinnes.LayerBusinnesControl oLB = new LayerBussinnes.LayerBusinnesControl();
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0PR0TLI;Initial Catalog = BDControlColocacion; Integrated Security = True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }
            else
            {
                try
                {
                    oLB.ActualizarUsuario(Convert.ToInt64(TextIdCodigo.Text), TextApellidos.Text, TextNombres.Text, Convert.ToDateTime(TextFechaNacimiento.Text), Convert.ToInt64(TextCargoEmpleado.Text), Convert.ToDouble(TextNumeroTelefono.Text), TextEmail.Text);
                    Response.Write("<script>alert('USUARIO ACTUALIZADO')</script>");
                }
                catch
                {
                    Response.Write("<script>alert('REGISTRO INCORRECTO')</script>");
                }
                finally
                {
                    oLB = null;
                }
            }
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            TextBIdCodigo.Text = "";
            TextIdCodigo.Text = " ";
            TextApellidos.Text = " ";
            TextNombres.Text = " ";
            TextFechaNacimiento.Text = " ";
            TextCargoEmpleado.Text = " ";
            TextNumeroTelefono.Text = " ";
            TextEmail.Text = " ";

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string cadSql = "Select * from Usuario where IdCodigo='" + TextBIdCodigo.Text+" '";
            SqlCommand comando = new SqlCommand(cadSql, con);
            con.Open();
            
            SqlDataReader leer = comando.ExecuteReader();
            if (leer.Read()==true)
            {
                //Response.Write("<script>alert('USUARIO ESCORRECTO')</script>");
                TextIdCodigo.Text = leer["IdCodigo"].ToString();
                TextApellidos.Text = leer["Apellidos"].ToString();
                TextNombres.Text = leer["Nombres"].ToString();
                TextFechaNacimiento.Text = leer["FechaNacimiento"].ToString();  
                TextCargoEmpleado.Text = leer["CargoEmpleado"].ToString();
                TextNumeroTelefono.Text = leer["NumeroTelefono"].ToString();
                TextEmail.Text = leer["Email"].ToString();

            }
            else
            {
                Response.Write("<script>alert('USUARIO NO ES CORRECTO')</script>");
                TextIdCodigo.Text = " ";
                TextApellidos.Text = " ";
                TextNombres.Text = " ";
                TextFechaNacimiento.Text = " ";
                TextCargoEmpleado.Text = " ";
                TextNumeroTelefono.Text = " ";
                TextEmail.Text = " ";
            }
        }
        
    }
}