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
        public int InsertarUsuarios(Int64 IdCodigo, string Apellidos, string Nombres, DateTime FechaNac, Int64 CargoEmpl, double NumeroTele, string Email)
        {
            try
            {
                return DAle.InsertarUsuario(IdCodigo, Apellidos, Nombres, FechaNac, CargoEmpl, NumeroTele, Email);

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
        //metodo que reciba los parametros y se los pase a star procidius
        // Metodo Insertar Produccion instanciar los parametros a la clase layer data
        //public int InsertarProduccion(Int64 IdReporte, DateTime FechaServicio, string TipoBomba, string NombreObra, string NumeroPedido, double MetrosColocados, DateTime HoraInicio, DateTime HoraFin)
        public int InsertarProduccion(Int64 IdReporte,double IdOperario, DateTime FechaServicio, string TipoBomba,double CodigoBomba, string NombreObra, string NumeroPedido , double MetrosColocados, DateTime HoraInicio, DateTime HoraFin, DateTime FechaFinal)
        {
            try
            {
                return DAle.InsertarProduccion(IdReporte,IdOperario,FechaServicio,TipoBomba,CodigoBomba,NombreObra,NumeroPedido,MetrosColocados,HoraInicio,HoraFin,FechaFinal);
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
        //public int InsertarProduccion(Int64 IdReporte, DateTime FechaServicio, string TipoBomba, string NombreObra, string NumeroPedido, double MetrosColocados, DateTime HoraInicio, DateTime HoraFin)
        public int InsertarEquipoBombeo(Int64 IdBomba, string Marca, double Modelo, Int64 TipoBomba, double Alcance)
        {
            try
            {
                return DAle.InsertarEquipoBombeo(IdBomba,Marca,Modelo,TipoBomba,Alcance);
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
        //  Metodo SpBuscar Usuario() para enlazar con el SP.
        public DataSet ActualizarUsuarioControl(Int64 BIdCodigo)
        {
            try
            {
                return DAle.BuscarUsuario(BIdCodigo);
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

        //metodo MostrarServiciosXusuario()
        //public DataSet ConsultaProduccionXusuario(Int64 PIdOperario, DateTime PFechaServicio, DateTime PFechaFinal)
        //{
        //    try
        //    {
        //       // return DAle.InsertarEquipoBombeo(PIdOperario, PFechaServicio, PFechaFinal);
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


    }
}
