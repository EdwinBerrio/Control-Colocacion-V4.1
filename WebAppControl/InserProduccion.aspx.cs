﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppControl
{
    public partial class InserProduccion : System.Web.UI.Page
    {
        LayerBussinnes.LayerBusinnesControl oLB = new LayerBussinnes.LayerBusinnesControl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            //if (!Page.IsValid)
            //{
            //    return;
            //}
            //else
            //{
            //    try
            //    {
            //        oLB.InsertarProduccion(Convert.ToInt64(TextIdReporte.Text),Convert.ToDouble(TextIdOperario.Text), Convert.ToDateTime(TextFechaServicio.Text), TextTipoBomba.Text,
            //            Convert.ToInt64(TextCodigoBomba.Text), TextNombreObra.Text, TextNumeroPedido.Text, Convert.ToDouble(TextMetrosColocados.Text), Convert.ToDateTime(TextHoraInicio.Text),
            //            Convert.ToDateTime(TextHoraFin.Text), Convert.ToDateTime(TextFechaFinal.Text));
                    
            //    }
            //    catch (Exception exc)
            //    {
            //        lbLMsg.Text = exc.Message.ToString();
            //    }
            //    finally
            //    {
            //        oLB = null;

            //    }
            //}
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            TextIdReporte.Text = "";
            TextIdOperario.Text = "";
            TextFechaServicio.Text = "";
            TextTipoBomba.SelectedIndex = 0;
            TextCodigoBomba.SelectedIndex = 0;
            TextNombreObra.Text = "";
            TextNumeroPedido.Text = "";
            TextMetrosColocados.Text = "";
            TextHoraInicio.Text = "";
            TextHoraFin.Text = "";
            TextFechaFinal.Text = "";
        }

        protected void TextCodigoBomba_SelectedIndexChanged(object sender, EventArgs e)
        {

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