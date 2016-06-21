using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;

namespace Login
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void picture_login_Click(object sender, EventArgs e)
        {
            try
            {
                //creando la conexion
                SqlConnection strconn = new SqlConnection(@"Data Source=controlcolocaciondemezclasservidor.database.windows.net;
                                                            Initial Catalog=BDcontrol3;Persist Security Info=True;User ID=BDcontrol3; Password=BDcontrol.2016");
                //abriendo conexion
                strconn.Open();

                SqlCommand comando = new SqlCommand("select UserName, password from dbo.IdLogin where UserName = '" + text_Nombre.Text + "'And password = '" + text_Contraseña.Text + "' ", strconn);

                //ejecuta una instruccion de sql devolviendo el numero de las filas afectadas
                comando.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(comando);

                //Llenando el dataAdapter
                da.Fill(ds, "dbo.IdLogin");
                //utilizado para representar una fila de la tabla q necesitas en este caso usuario
                DataRow DR;
                DR = ds.Tables["dbo.IdLogin"].Rows[0];

                //evaluando que la contraseña y usuario sean correctos
                if ((text_Nombre.Text == DR["UserName"].ToString()) || (text_Contraseña.Text == DR["password"].ToString()))
                {
                    //instanciando el formulario principal
                    Form1 frmPrincipal = new Form1();
                    frmPrincipal.Show();//abriendo el formulario principal
                    this.Hide();//esto sirve para ocultar el formulario de login
                }
                catch
                {
                //en caso que la contraseña sea erronea mostrara un mensaje
                //dentro de los parentesis va: "Mensaje a mostrar","Titulo de la ventana",botones a mostrar en ste caso OK, icono a mostrar en este caso uno de error
                MessageBox.Show("Error! Su contraseña y/o usuario son invalidos", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
    }
}
