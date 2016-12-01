using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppControl
{
    public partial class M_RegistrarProduccion : System.Web.UI.Page
    {
        LayerBussinnes.LayerBusinnesControl oLB = new LayerBussinnes.LayerBusinnesControl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGuardarP_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }
            else
            {
                try
                {
                    oLB.InsertarProduccion(Convert.ToInt64(TextIdReporte.Text), Convert.ToDouble(TextIdIdentificacion.Text), Convert.ToDateTime(TextFecha1.Text), TextTipoBomba.Text,
                        Convert.ToInt64(TextCodigoBomba.Text), TextNombreObra.Text, TextPedido.Text, Convert.ToDouble(TextMetrosC.Text), Convert.ToDouble(TextTuberia.Text),
                        Convert.ToDateTime(TextHora1.Text), Convert.ToDateTime(TextHora2.Text), Convert.ToDateTime(TextFecha2.Text));
                    Response.Write("<script>alert('SERVICIO REGISTRADO CORRECTAMENTE')</script>");
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('SERVICIO NO REGISTRADO')</script>");
                }
                finally
                {
                    oLB = null;

                }
            }
        }


        protected void BtnCancelarP_Click(object sender, EventArgs e)
        {
            TextIdReporte.Text = "";
            TextIdIdentificacion.Text = "";
            TextFecha1.Text = "";
            TextTipoBomba.Text = "";
            TextCodigoBomba.Text = "";
            TextNombreObra.Text = "";
            TextPedido.Text = "";
            TextMetrosC.Text = "";
            TextTuberia.Text = "";
            TextHora1.Text = "";
            TextHora2.Text = "";
            TextFecha2.Text = "";
        }

   }
}
