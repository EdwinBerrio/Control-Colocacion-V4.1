<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProduccionXUsuario.aspx.cs" Inherits="WebAppControl.ProduccionXUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="css/Style1.css" type="text/css" />
    <title></title>
</head>
<body>
    
<header>
    <div id="navcontainer">
        <h1 id="titulo">CONTROL Y COLOCACIÒN DE MEZCLAS </h1>
    <ul id="navlist">

        <li><a id ="A1" runat="server" href="/Index.aspx">Menu Principal</a></li>         
        <li><a id ="A2" runat="server" href="/InsertarUsuario.aspx">Registrar Usuario</a></li>                            
        <li><a id ="A3" runat="server" href="/InsertEquipoBombeo.aspx">Registrar Equipo</a></li>
        <li><a id ="A4" runat="server" href="/InserProduccion.aspx">Registrar Produccion</a></li>                         
        <li><a id ="A5" runat="server" href="/MostrarUsuario.aspx">Usuarios Registrados</a></li>                           
        <li><a id ="A6" runat="server" href="/MostrarProduccion.aspx">Produccion</a></li>                         
        <li><a id ="A7" runat="server" href="/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li>
        <li><a id ="A8" runat="server" href="/ProduccionXUsuario.aspx">Produccion por Usuario</a></li>

    </ul>
</div>
    </header>

     <form id="form2" runat="server">
    <div>
        <h1>PRODUCCION POR USUARIO</h1>
        <div id="cajamenu">
       <table>
           <tr>

                <td>
                    <asp:Label ID="label9" runat="server" Text="Identificacion Operario"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextIdOperario" runat ="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label2" runat="server" Text="Fecha Inicio Servicio"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextFechaServicio" runat ="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label11" runat="server" Text="Fecha Fin Servicio"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextFechaFinal" runat ="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
             
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" Height="22px" Width="62px" />
                    <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" OnClick="BtnCancelar_Click" OnClientClick="return confirm('¿Esta seguro que desea cancelar la busqueda?');"  Height="22px" Width="62px" />
                    <asp:Button ID="BtnSalir" runat="server" Text="Salir" OnClick="BtnSalir_Click" OnClientClick="return confirm('¿Esta seguro que desea salir?');"  Height="22px" Width="62px" />
                </td>
            </tr>

       </table>
            <div>
                <asp:GridView ID="GridViewProduccUsuario" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceProduccionXUsuario" DataKeyNames="IdReporte">
                    <Columns>
                        <asp:BoundField DataField="IdReporte" HeaderText="IdReporte" ReadOnly="True" SortExpression="IdReporte" />
                        <asp:BoundField DataField="IdOperario" HeaderText="IdOperario" SortExpression="IdOperario" />
                        <asp:BoundField DataField="FechaServicio" HeaderText="FechaServicio" SortExpression="FechaServicio" />
                        <asp:BoundField DataField="TipoBomba" HeaderText="TipoBomba" SortExpression="TipoBomba" />
                        <asp:BoundField DataField="CodigoBomba" HeaderText="CodigoBomba" SortExpression="CodigoBomba" />
                        <asp:BoundField DataField="NombreObra" HeaderText="NombreObra" SortExpression="NombreObra" />
                        <asp:BoundField DataField="NumeroPedido" HeaderText="NumeroPedido" SortExpression="NumeroPedido" />
                        <asp:BoundField DataField="MetrosColocados" HeaderText="MetrosColocados" SortExpression="MetrosColocados" />
                        <asp:BoundField DataField="HoraInicio" HeaderText="HoraInicio" SortExpression="HoraInicio" />
                        <asp:BoundField DataField="HoraFin" HeaderText="HoraFin" SortExpression="HoraFin" />
                        <asp:BoundField DataField="FechaFinal" HeaderText="FechaFinal" SortExpression="FechaFinal" />
                    </Columns>
                   
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSourceProduccionXUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:BDcontrol3ConnectionStringCargoEmpleado %>" SelectCommand="SELECT * FROM [Produccion] WHERE (([IdOperario] = @IdOperario) AND ([FechaServicio] &gt;= @FechaServicio) AND ([FechaFinal] &lt;= @FechaFinal))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextIdOperario" Name="IdOperario" PropertyName="Text" Type="Int64" />
                        <asp:ControlParameter ControlID="TextFechaServicio" DbType="Date" Name="FechaServicio" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextFechaFinal" DbType="Date" Name="FechaFinal" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <div>

                    <h3> TOTAL PRODUCCION USUARIO</h3>
                    
                    <asp:GridView ID="GridViewTotal" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSourceTotal">
                        <Columns>
                            <asp:BoundField DataField="Total produccion" HeaderText="Total produccion" ReadOnly="True" SortExpression="Total produccion" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceTotal" runat="server" ConnectionString="<%$ ConnectionStrings:BDcontrol3ConnectionString %>" SelectCommand="SpConsultaProduccionXusuario" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextIdOperario" Name="IdOperario" PropertyName="Text" Type="Int64" />
                            <asp:ControlParameter ControlID="TextFechaServicio" DbType="Date" Name="FechaServicio" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextFechaFinal" DbType="Date" Name="FechaFinal" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

            </div>
            </div>
         </div> 
       <p>
            <asp:Label ID="lbLMsg" runat="server"></asp:Label>
            
       </p>
   
    </form>
</body>
</html>
