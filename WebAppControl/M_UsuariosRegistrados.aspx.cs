using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppControl
{
    public partial class M_UsuariosRegistrados : System.Web.UI.Page
    {
        LayerBussinnes.LayerBusinnesControl oLB = new LayerBussinnes.LayerBusinnesControl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {  // invocamos el metodo llenardatos
                CargarDatos();
            }

        }
        public void CargarDatos()
        {
            GridView1.DataSource = oLB.MostrarUsuario();
            GridView1.DataBind();
            // DataSource cargar datos
            // DataBind refrescar o actualizar datos..
        }
        protected void BtnGuardar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {

        }
    }
}