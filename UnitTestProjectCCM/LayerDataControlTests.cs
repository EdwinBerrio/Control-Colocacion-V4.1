using Microsoft.VisualStudio.TestTools.UnitTesting;
using LayerData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace LayerData.Tests
{
    [TestClass()]
    public class LayerDataControlTests
    {
        public string strconn = @"Data Source=DESKTOP-0PR0TLI;Initial Catalog=BDControlColocacion;Integrated Security=True";
        [TestMethod()]
        public void MostrarUsuarioTest()
        {

            using (SqlConnection cnx = new SqlConnection(strconn))
            {
                cnx.Open();
                SqlDataAdapter dAd = new SqlDataAdapter("SpMostrarUsuarios", cnx);
                dAd.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
                System.Data.DataSet ds = new DataSet();
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
    }
}