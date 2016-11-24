using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppControl
{
    public partial class M_ActualizarEquipo : System.Web.UI.Page
    {
        LayerBussinnes.LayerBusinnesControl oLB = new LayerBussinnes.LayerBusinnesControl();
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0PR0TLI;Initial Catalog=BDControlColocacion;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string cadSql = "Select * from EquipoBombeo where IdBomba ='" + TextCodigoBomb.Text + " '";
            SqlCommand comando = new SqlCommand(cadSql, con);
            con.Open();

            SqlDataReader leer = comando.ExecuteReader();
            if (leer.Read() == true)
            {
                TextIdBomba.Text = leer["IdBomba"].ToString();
                TextModelo.Text = leer["Modelo"].ToString();
                TextMarca.Text = leer["Marca"].ToString();
                TextTipoBomba.Text = leer["TipoBomba"].ToString();
                TextAlcance.Text = leer["Alcance"].ToString();
                //TextBox4.Text = "";
                TextEstado.Text = leer["Estado"].ToString();
                TextPlanta.Text = leer["Planta"].ToString();
            }
            else
            {
                TextCodigoBomb.Text = "";
                TextIdBomba.Text = "";
                TextEstado.SelectedIndex = 0;
                TextModelo.Text = "";
                TextMarca.Text = "";
                TextTipoBomba.Text = "";
                TextAlcance.Text = "";
                TextBox4.Text = "";
                TextPlanta.SelectedIndex = 0;
                Response.Write("<script>alert('USUARIO NO ES CORRECTO')</script>");
            }
        }
       
        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }
            else
            {
                try
                {
                    oLB.ActuaEquipoBombeo(Convert.ToInt64(TextIdBomba.Text), TextMarca.Text, Convert.ToDouble(TextModelo.Text), Convert.ToInt64(TextTipoBomba.Text), Convert.ToDouble(TextAlcance.Text), TextEstado.Text, TextPlanta.Text);
                    Response.Write("<script>alert('EQUIPO ACTUALIZADO CORRECTAMENTE')</script>");
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('EQUIPO  NO ACTUALIZADO')</script>");
                }
                finally
                {
                    oLB = null;
                }
            }

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            TextCodigoBomb.Text = "";
            TextIdBomba.Text = "";
            TextEstado.SelectedIndex = 0;
            TextModelo.Text = "";
            TextMarca.Text = "";
            TextTipoBomba.Text = "";
            TextAlcance.Text = "";
            TextBox4.Text = "";
            TextPlanta.SelectedIndex = 0;

        }
    }
}