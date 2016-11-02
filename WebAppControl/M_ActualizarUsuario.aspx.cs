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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }
            else
            {
                try
                {
                    oLB.ActualizarUsuarioControl(Convert.ToInt64(TextIdCodigo.Text));
                    Response.Write("<script>alert('REGISTRO CORRECTO')</script>");
                }
                catch 
                {
                    Response.Write("<script>alert('REGISTRO CORRECTO')</script>");
                }
                finally
                {
                    oLB = null;

                }
            }
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {


        }
    }
}