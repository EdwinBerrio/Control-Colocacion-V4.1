using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppControl
{
    public partial class M_RegistrarEquipo : System.Web.UI.Page
    {
        LayerBussinnes.LayerBusinnesControl oLB = new LayerBussinnes.LayerBusinnesControl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }
            else
            {
                try
                {
                    oLB.InsertarEquipoBombeo(Convert.ToInt64(TextCodigoBomba.Text), TextMarca.Text, Convert.ToDouble(TextModelo.Text), Convert.ToInt64(TextTipoBomba.Text), Convert.ToDouble(TextAlcance.Text));
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

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {

        }
    }
}