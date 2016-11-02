using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppControl
{
    public partial class M_ActuElimUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        private void GetData()
        {
            string  cadena = ConfigurationManager.ConnectionStrings["BDControlColocacionConnectionString"].ConnectionString;
            using (SqlConnection cnx = new SqlConnection(cadena))
            {
                SqlCommand cmd = new SqlCommand("SpMostrarU", cnx);

                cmd.CommandType = CommandType.StoredProcedure;
                
                cnx.Open();
               

                //cmd.ExecuteNonQuery();
                //GvDatos.DataSource = cmd.ExecuteReader();
                //GvDatos.DataBind();
                
            }
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            string cadena = ConfigurationManager.ConnectionStrings["BDControlColocacionConnectionString"].ConnectionString;
            using (SqlConnection cnx = new SqlConnection(cadena))
            {
                SqlCommand cmd = new SqlCommand("SpBuscar", cnx);
               
                cmd.CommandType = CommandType.StoredProcedure;
                if (txtCodigo.Text != string.Empty)
                {
                    SqlParameter bus = new SqlParameter("@IdCodigo", txtCodigo.Text);
                    cmd.Parameters.Add(bus);

                }

                //cnx.Open();
                ////cmd.ExecuteNonQuery();
                //GvDatos.DataSource = cmd.ExecuteReader();               
                //GvDatos.DataBind();
            }
        }
    }
}