using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebAppControl
{
    public partial class ProduccionXUsuario : System.Web.UI.Page
    {
        LayerBussinnes.LayerBusinnesControl oLB = new LayerBussinnes.LayerBusinnesControl();
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        //public void CargarProduccion()
        //{
        //    GridViewProduccUsuario.DataSource = oLB.MostrarProduccion();
        //    GridViewProduccUsuario.DataBind();
        //}

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            TextIdOperario.Text = "";
            TextFechaServicio.Text = "";
            TextFechaFinal.Text = "";
        }

        protected void BtnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("/index.aspx");
        }

        protected void GridViewProduccUsuario_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}