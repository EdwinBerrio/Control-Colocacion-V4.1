using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppControl
{
    public partial class MostrarEquipoBomb : System.Web.UI.Page
    {
        LayerBussinnes.LayerBusinnesControl oLB = new LayerBussinnes.LayerBusinnesControl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEquipos();
            }
        }

        protected void CargarEquipos()
        {
            TablaEquiposBombeo.DataSource = oLB.MostrarEquipoBombeo();
            TablaEquiposBombeo.DataBind();
        }

        protected void TablaEquiposBombeo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("/index.aspx");
        }
    }
    
}