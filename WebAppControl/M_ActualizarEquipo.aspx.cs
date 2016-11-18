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
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0PR0TLI;Initial Catalog = BDControlColocacion; Integrated Security = True");
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
                //Response.Write("<script>alert('EQUIPO ES CORRECTO')</script>");
                //TextCodigoBomb.Text = leer["CodigoBomb"].ToString();
                TextIdBomba.Text = leer["IdBomba"].ToString();
                //Text1.Text = "";
                TextModelo.Text = leer["Modelo"].ToString();
                TextMarca.Text = leer["Marca"].ToString();
                TextTipoBomba.Text = leer["TipoBomba"].ToString();
                TextAlcance.Text = leer["Alcance"].ToString();
                //TextBox4.Text = "";
                //DropDownList1.Text = leer["Marca"].ToString();
                

            }
            else
            {
                Response.Write("<script>alert('USUARIO NO ES CORRECTO')</script>");
                TextCodigoBomb.Text = "";
                TextIdBomba.Text = "";
                Text1.Text = "";
                TextModelo.Text = "";
                TextMarca.Text = "";
                TextTipoBomba.Text = "";
                TextAlcance.Text = "";
                TextBox4.Text = "";
                DropDownList1.Text = "";
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
                    oLB.ActualizarEquipoB(Convert.ToInt64(TextIdBomba.Text), TextMarca.Text, Convert.ToDouble(TextModelo.Text), Convert.ToInt64(TextTipoBomba.Text), Convert.ToDouble(TextAlcance.Text));
                    Response.Write("<script>alert('EQUIPO ACTUALIZADO')</script>");
                }
                catch
                {
                    Response.Write("<script>alert('REGISTRO INCORRECTO')</script>");
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
            Text1.Text = "";
            TextModelo.Text = "";
            TextMarca.Text = "";
            TextTipoBomba.Text = "";
            TextAlcance.Text = "";
            TextBox4.Text = "";
            DropDownList1.Text = "";

        }
    }
}