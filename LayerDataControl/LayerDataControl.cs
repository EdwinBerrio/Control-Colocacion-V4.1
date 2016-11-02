using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;


namespace LayerData
{
    public class LayerDataControl
    {
        ////string de conexion
        public string strconn = @"Data Source=DESKTOP-0PR0TLI;Initial Catalog = BDControlColocacion; Integrated Security = True";

        //string de conexion AZURE
        //public string strconn = @"Data Source=controlcolocaciondemezclasservidor.database.windows.net;Initial Catalog=BDcontrol3;Persist Security Info=True;User ID=BDcontrol3; Password=BDcontrol.2016";
                                 
        //"Data Source=servnominaesne.database.windows.net;Initial Catalog=BDNomina3;Persist Security Info=True;User ID=servnomina2;Password=Nomina123."; Password=BDcontrol.2016 // controlcolocaciondemezclasservidor.database.windows.net
        //metodo constructor
        public LayerDataControl() { }

        //metodo  insertar empleado para enlazar con el stor procidios
        public int InsertarUsuario(Int64 IdCodigo, string Apellidos, string Nombre, DateTime FechaNacimiento, Int64 CargoEmpleado, double NumeroTelefono, string Email)
        {
            using (SqlConnection cnx = new SqlConnection(strconn))
            {
                //conexion a la base de datos
                cnx.Open();
                SqlCommand OrdenSql = new SqlCommand("SPInsertarUsuario", cnx);
                OrdenSql.CommandType = CommandType.StoredProcedure;
                //loque se va a ejecutar para validar si no prosigue
                try
                {
                    OrdenSql.Parameters.AddWithValue("@IdCodigo", IdCodigo);
                    OrdenSql.Parameters.AddWithValue("@Apellidos", Apellidos);
                    OrdenSql.Parameters.AddWithValue("@Nombres", Nombre);
                    OrdenSql.Parameters.AddWithValue("@FechaNacimiento", FechaNacimiento);
                    OrdenSql.Parameters.AddWithValue("@CargoEmpleado", CargoEmpleado);
                    OrdenSql.Parameters.AddWithValue("@NumeroTelefono", NumeroTelefono);
                    OrdenSql.Parameters.AddWithValue("@Email", Email);

                    return OrdenSql.ExecuteNonQuery();
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    //se cierra la conexion a la BD 
                    cnx.Close();
                    cnx.Dispose();
                    OrdenSql.Dispose();
                }
            }
        }

        // Metodo mostrar empleado para enlazar con el SP.
        public DataTable MostrarUsuario()
        {
            using (SqlConnection cnx = new SqlConnection(strconn))
            {
                cnx.Open();
                SqlDataAdapter dAd = new SqlDataAdapter("SpMostrarUsuarios", cnx);
                dAd.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                try
                {
                    dAd.Fill(ds, "Table");
                    return ds.Tables["Table"];
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    cnx.Close();
                    cnx.Dispose();
                    dAd.Dispose();
                    ds.Dispose();
                }
            }
        }

        //metodo  Insertar Produccion para enlazar con el stor procidios
        //public int InsertarProduccion(Int64 IdReport, DateTime FechaServici, string TipoBomb,string NombreObr, string NumeroPedid, double MetrosColocado, DateTime HoraInici, DateTime HoraFin)
        public int InsertarProduccion(Int64 IdReport, double IdOperar, DateTime FechaServici, string TipoBomb, double CodigoBomb, String NombreObr, string NumeroPedid, double MetrosColocado, DateTime HoraInici, DateTime HoraFin, DateTime FechaFinal)
        {
            using (SqlConnection cnxp = new SqlConnection(strconn))
            {
                //conexion a la base de datos
                cnxp.Open();
                SqlCommand OrdenSql = new SqlCommand("SPInsertarProduccion", cnxp);
                OrdenSql.CommandType = CommandType.StoredProcedure;
                //loque se va a ejecutar para validar si no prosigue
                try
                {
                    //OrdenSql.Parameters.AddWithValue("@IdReporte",IdReport);
                    OrdenSql.Parameters.AddWithValue("@IdReporte", IdReport);
                    OrdenSql.Parameters.AddWithValue("@IdOperario", IdOperar);
                    OrdenSql.Parameters.AddWithValue("@FechaServicio", FechaServici);
                    OrdenSql.Parameters.AddWithValue("@TipoBomba", TipoBomb);
                    OrdenSql.Parameters.AddWithValue("@CodigoBomba", CodigoBomb);
                    OrdenSql.Parameters.AddWithValue("@NombreObra", NombreObr);
                    OrdenSql.Parameters.AddWithValue("@NumeroPedido", NumeroPedid);
                    OrdenSql.Parameters.AddWithValue("@MetrosColocados", MetrosColocado);
                    OrdenSql.Parameters.AddWithValue("@HoraInicio", HoraInici);
                    OrdenSql.Parameters.AddWithValue("@HoraFin", HoraFin);
                    OrdenSql.Parameters.AddWithValue("@FechaFinal", FechaFinal);

                    return OrdenSql.ExecuteNonQuery();
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    //se cierra la conexion a la BD 
                    cnxp.Close();
                    cnxp.Dispose();
                    OrdenSql.Dispose();
                }
            }
        }

        // Metodo MostrarProduccion() para enlazar con el SP.
        public DataTable MostrarProduccion()
        {
            using (SqlConnection cnx = new SqlConnection(strconn))
            {
                cnx.Open();
                SqlDataAdapter dAd = new SqlDataAdapter("SpMostrarProduccion", cnx);
                dAd.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                try
                {
                    dAd.Fill(ds, "TableProducc");
                    return ds.Tables["TableProducc"];
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    cnx.Close();
                    cnx.Dispose();
                    dAd.Dispose();
                    ds.Dispose();
                }
            }
        }

        //metodo  Insertar EquipoBombeo para enlazar con el stor procidios
        public int InsertarEquipoBombeo(Int64 IdBomba, string Marca, double Modelo, Int64 TipoBomba, double Alcance)
        {
            using (SqlConnection cnxEB = new SqlConnection(strconn))
            {
                //conexion a la base de datos
                cnxEB.Open();
                SqlCommand OrdenSql = new SqlCommand("SPInsertarEquipoBombeo", cnxEB);
                OrdenSql.CommandType = CommandType.StoredProcedure;
                //loque se va a ejecutar para validar si no prosigue
                try
                {
                    OrdenSql.Parameters.AddWithValue("@IdBomba", IdBomba);
                    OrdenSql.Parameters.AddWithValue("@Marca", Marca);
                    OrdenSql.Parameters.AddWithValue("@Modelo", Modelo);
                    OrdenSql.Parameters.AddWithValue("@TipoBomba", TipoBomba);
                    OrdenSql.Parameters.AddWithValue("@Alcance", Alcance);

                    return OrdenSql.ExecuteNonQuery();
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    //se cierra la conexion a la BD 
                    cnxEB.Close();
                    cnxEB.Dispose();
                    OrdenSql.Dispose();
                }
            }
        }

        // Metodo MostrarProduccion() para enlazar con el SP.
        public DataTable MostrarEquipoBombeo()
        {
            using (SqlConnection cnxME = new SqlConnection(strconn))
            {
                cnxME.Open();
                SqlDataAdapter dAd = new SqlDataAdapter("SpMostrarEquiposBombeo", cnxME);
                dAd.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                try
                {
                    dAd.Fill(ds, "TableEquipo");
                    return ds.Tables["TableEquipo"];
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    cnxME.Close();
                    cnxME.Dispose();
                    dAd.Dispose();
                    ds.Dispose();
                }
            }
        }

        //Metodo SpBuscar Usuario() para enlazar con el SP.
        public DataSet BuscarUsuario(Int64 BIdCodigo)
        {
            using (SqlConnection cnx = new SqlConnection(strconn))
            {
                cnx.Open();
                SqlCommand com = new SqlCommand("SpBuscar", cnx);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@IdCodigo", BIdCodigo);
                SqlDataAdapter ad = new SqlDataAdapter(com);
                SqlDataReader leer = com.ExecuteReader();
                if (leer.Read() == true)
                {

                }
                DataSet d = new DataSet();

                try
                {
                    ad.Fill(d);
                    return d;
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    cnx.Close();
                    cnx.Dispose();
                    com.Dispose();
                    d.Dispose();
                }

                //return d;
            }

            //   }
            //}

            //public DataSet ConsultaProduccionXusuario(Int64 PIdOperario, DateTime PFechaServicio, DateTime PFechaFinal)
            //{
            //    using (SqlConnection cnx = new SqlConnection(strconn))
            //    {
            //        cnx.Open();
            //        SqlCommand com = new SqlCommand("SpConsultaProduccionXusuario", cnx);
            //        com.CommandType = CommandType.StoredProcedure;
            //        com.Parameters.AddWithValue("@IdOperario", PIdOperario);
            //        com.Parameters.AddWithValue("@FechaServicio", PFechaServicio);
            //        com.Parameters.AddWithValue("@FechaFinal", PFechaFinal);
            //        SqlDataAdapter ad = new SqlDataAdapter(com);


            //        DataSet d = new DataSet();

            //        try
            //        {
            //            ad.Fill(d);
            //            return d;
            //        }
            //        catch (Exception)
            //        {
            //            throw;
            //        }
            //        finally
            //        {
            //            cnx.Close();
            //            cnx.Dispose();
            //            com.Dispose();
            //            d.Dispose();
            //        }

            //        //return d;
            //    }
            //}
        }
        }
