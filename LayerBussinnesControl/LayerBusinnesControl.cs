using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace LayerBussinnes
{
    public class LayerBusinnesControl
    {
        //crea objeto que instancia el layerdata
        LayerData.LayerDataControl DAle = new LayerData.LayerDataControl();

        //metodo que reciba los parametros y se los pase a star procidius
        // Metodo Insertar Usuario instanciar los parametros a la clase layer data
        public int InsertarUsuarios(Int64 IdCodigo, string Apellidos, string Nombres, DateTime FechaNac, Int64 CargoEmpl, double NumeroTele, 
            string Email, string Planta, string UserName, string Password, string Estado)
        {
            try
            {
                return DAle.InsertarUsuario(IdCodigo, Apellidos, Nombres, FechaNac, CargoEmpl, NumeroTele, Email, Planta, UserName, Password, Estado);

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                DAle = null;
            }
        }

        //metodo mostrar usuario
        public DataTable MostrarUsuario()
        {
            try
            {
                return DAle.MostrarUsuario();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                DAle = null;
            }
        }

        // Metodo Actualizar usuario
        public int ActualizarUsuario(Int64 IdCodigo, string Apellidos, string Nombres, DateTime FechaNac, Int64 CargoEmpl, double NumeroTele,
            string Email, string Planta, string UserName, string Password, string Estado)
        {
            try
            {
                return DAle.ActualizarUsua(IdCodigo, Apellidos, Nombres, FechaNac, CargoEmpl, NumeroTele, Email, Planta, UserName, Password, Estado);

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                DAle = null;
            }
        }
        //metodo que reciba los parametros y se los pase a star procidius
        // Metodo Insertar Produccion instanciar los parametros a la clase layer data
        //public int InsertarProduccion(Int64 IdReporte, DateTime FechaServicio, string TipoBomba, string NombreObra, string NumeroPedido, double MetrosColocados, DateTime HoraInicio, DateTime HoraFin)

        public int InsertarProduccion(Int64 IdReporte,double IdOperario, DateTime FechaServicio, string TipoBomba,double CodigoBomba, string NombreObra, string NumeroPedido , 
            double MetrosColocados,double MetrosTuberia, DateTime HoraInicio, DateTime HoraFin, DateTime FechaFinal)
        {
            try
            {
                return DAle.InsertarProduccion(IdReporte,IdOperario,FechaServicio,TipoBomba,CodigoBomba,NombreObra,NumeroPedido,MetrosColocados,MetrosTuberia,HoraInicio,HoraFin,FechaFinal);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                DAle = null;
            }

        }

        //metodo MostrarProduccion()
        public DataTable MostrarProduccion()
        {
            try
            {
                return DAle.MostrarProduccion();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                DAle = null;
            }
        }

        //metodo que reciba los parametros y se los pase a star procidius
        // Metodo Insertar Produccion instanciar los parametros a la clase layer data
        public int InsertarEquipoBombeo(Int64 IdBomba, string Marca, double Modelo, Int64 TipoBomba, double Alcance, string Estado, string Planta)
        {
            try
            {
                return DAle.InsertarEquipoBombeo(IdBomba, Marca, Modelo, TipoBomba, Alcance, Estado, Planta);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                DAle = null;
            }
        }

                //public int BuscarEquipoBombeo() //Int64 IdBomba, string Marca, double Modelo, Int64 TipoBomba, double Alcance
        //{
        //    try
        //    {
        //        return DAle.BuscarEquipo();
        //        //(IdBomba, Marca, Modelo, TipoBomba, Alcance);
        //    }
        //    catch (Exception)
        //    {
        //        throw;
        //    }
        //    finally
        //    {
        //        DAle = null;
        //    }
        //}
        //metodo MostrarEquipoBombeo()
        public DataTable MostrarEquipoBombeo()
        {
            try
            {
                return DAle.MostrarEquipoBombeo();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                DAle = null;
            }
        }
        // Metodo Actualizar Equipo
        public int ActuaEquipoBombeo(Int64 IdBomba, string Marca, double Modelo, Int64 TipoBomba, double Alcance, string Estado, string Planta)
        {
            try
            {
                return DAle.ActualizarEquipoBombeo(IdBomba, Marca, Modelo, TipoBomba, Alcance, Estado, Planta);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                DAle = null;
            }
        }

        //metodo MostrarServicios()
        public DataTable ConsultaProduccion1(Int64 PIdOperario, Int64 PCodigoBomba, DateTime PFechaServicio, DateTime PFechaFinal)
        {
            try
            {
                return DAle.ConsultaProduccion(PIdOperario, PCodigoBomba, PFechaServicio, PFechaFinal);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                DAle = null;
            }
        }


    }
}
