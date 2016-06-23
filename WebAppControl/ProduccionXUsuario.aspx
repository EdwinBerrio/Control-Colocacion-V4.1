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
        <div id="logotitulo">
            <table>
                <tr>
                    <td>
                        <img src="/Imagen/logo.png" />
                    </td>
                    <td>
                        <h1 id="titulo">CONTROL Y COLOCACIÒN DE MEZCLAS </h1>
                    </td>
                </tr>
            </table>
            
        </div>
    
    <div id="navcontainer">
        
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
    <div id="container2">
        
        <div id="cajamenuPU">
       <table style="margin-left: 27px; margin-top: 6px">
           <h2 id="titulosFormu">PRODUCCION POR USUARIO</h2>
           <tr>

                <td class="auto-style2">
                    <asp:Label ID="label9" runat="server" Text="Identificacion Operario"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextIdOperario" runat ="server" TextMode="Number" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label2" runat="server" Text="Fecha Inicio Servicio"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextFechaServicio" runat ="server" TextMode="Date" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label11" runat="server" Text="Fecha Fin Servicio"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextFechaFinal" runat ="server" TextMode="Date" Height="30px" Width="200px"></asp:TextBox>
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

        </div>
         <div>

                    <h3 id="titulosFormu2"> TOTAL M3 COLOCADOS</h3>
                    
                    <asp:GridView ID="GridViewTotal" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSourceTotal" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="30px" Width="156px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Total produccion" HeaderText="TOTAL M3 " ReadOnly="True" SortExpression="Total produccion" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceTotal" runat="server" ConnectionString="<%$ ConnectionStrings:BDcontrol3ConnectionString %>" SelectCommand="SpConsultaProduccionXusuario" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextIdOperario" Name="IdOperario" PropertyName="Text" Type="Int64" />
                            <asp:ControlParameter ControlID="TextFechaServicio" DbType="Date" Name="FechaServicio" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextFechaFinal" DbType="Date" Name="FechaFinal" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

            <div id="tituloGrilla3">
                <h1>SERVICIOS REALIZADOS</h1>
            </div>
        <div id="tablamostrar">
            
                <asp:GridView ID="GridViewProduccUsuario" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceProduccionXUsuario" DataKeyNames="IdReporte" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
                   
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                   
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSourceProduccionXUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:BDcontrol3ConnectionStringCargoEmpleado %>" SelectCommand="SELECT * FROM [Produccion] WHERE (([IdOperario] = @IdOperario) AND ([FechaServicio] &gt;= @FechaServicio) AND ([FechaFinal] &lt;= @FechaFinal))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextIdOperario" Name="IdOperario" PropertyName="Text" Type="Int64" />
                        <asp:ControlParameter ControlID="TextFechaServicio" DbType="Date" Name="FechaServicio" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextFechaFinal" DbType="Date" Name="FechaFinal" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
               

            </div>

         </div> 
       <p>
            <asp:Label ID="lbLMsg" runat="server"></asp:Label>
            
       </p>
   
    </form>
</body>
</html>
