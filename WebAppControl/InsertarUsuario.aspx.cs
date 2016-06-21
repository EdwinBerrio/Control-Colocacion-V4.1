using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace WebAppControl
{
    public partial class InsertarUsuario : System.Web.UI.Page
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
                    oLB.InsertarUsuarios(Convert.ToInt64(TextIdCodigo.Text), TextApellidos.Text, TextNombres.Text, Convert.ToDateTime(TextFechaNacimiento.Text), Convert.ToInt64(TextCargoEmpleado.Text), Convert.ToDouble(TextNumeroTelefono.Text), TextEmail.Text);
                    lbLMsg.Text = "Usuario Insertado Correctamante";
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
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            TextIdCodigo.Text = "";
            TextApellidos.Text = "";
            TextNombres.Text = "";
            TextFechaNacimiento.Text = "";
            TextCargoEmpleado.SelectedIndex = 0;
            TextNumeroTelefono.Text = "";
            TextEmail.Text = "";
            
        }

        protected void TextCargoEmpleado_SelectedIndexChanged(object sender, EventArgs e)
        {
            


        }
        protected void BtnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("/index.aspx");
        }
    }
}