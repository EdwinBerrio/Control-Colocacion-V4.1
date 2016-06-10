using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppControl
{
    public partial class ServicioXUsuario : System.Web.UI.Page
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
                    oLB.MostrarServiciosXusuario(Convert.ToInt64(TextIdOperario.Text), Convert.ToDateTime(TextFechaServicio.Text), Convert.ToDateTime(TextFechaFinal.Text));
                    lbLMsg.Text = "Consulta ingresada Correctamante";
                }
                catch (Exception exc)
                {
                    lbLMsg.Text = exc.Message.ToString();
                }
                finally
                {
                    oLB = null;

                }
            }
            //if (!IsPostBack)
            //{  // invocamos el metodo llenardatos
            //    CargarDatos();
            //}

        }
        public void CargarDatos()
        {
            GridViewProduccUsuario.DataSource = oLB.MostrarServiciosXusuario(Convert.ToInt64(TextIdOperario.Text), Convert.ToDateTime(TextFechaServicio.Text), Convert.ToDateTime(TextFechaFinal.Text));
            GridViewProduccUsuario.DataBind();
            //GridView1.DataSource = oLB.MostrarUsuario();
            //GridView1.DataBind();
            //// DataSource cargar datos
            //// DataBind refrescar o actualizar datos..
        }
        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {  // invocamos el metodo llenardatos
                CargarDatos();
            }
        }



        protected void BtnCancelar_Click(object sender, EventArgs e)
        {

        }
    }
}