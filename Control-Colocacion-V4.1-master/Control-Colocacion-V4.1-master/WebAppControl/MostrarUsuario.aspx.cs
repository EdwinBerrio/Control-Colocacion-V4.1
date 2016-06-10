using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppControl
{
    public partial class MostrarUsuario : System.Web.UI.Page
    {
        // llamar el objeto de la clase layerbusinnessCliente
        LayerBussinnes.LayerBusinnesControl oLB = new LayerBussinnes.LayerBusinnesControl();

        protected void Page_Load(object sender, EventArgs e)
        {
            // pege_goad carga la pagina cada ves que se refresque la pagina
          
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

    }

}