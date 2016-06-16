<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarProduccion.aspx.cs" Inherits="WebAppControl.MostrarProduccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/StyleSLogin.css" type="text/css" />
    <title></title>
</head>
<body>
    <header>
        <nav>
            <ul id="">
                <li>Menu </li>
                <li><a id ="A1" runat="server" href="/InsertarUsuario.aspx">Registrar Usuario</a></li>
                <li><a id ="A6" runat="server" href="/InserProduccion.aspx">Registrar Produccion</a></li>
                <li><a id ="A2" runat="server" href="/InsertEquipoBombeo.aspx">Registrar Equipo Bombeo</a></li>
       
                 <li><a id ="A3" runat="server" href="/MostrarUsuario.aspx">Usuarios Registrados</a></li>
                <li>Produccion</li>
                <li><a id ="A5" runat="server" href="/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li>
            </ul>
        </nav>
    </header>
    <form id="form1" runat="server">
    <div>
        <h1>Produccion </h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="IdReporte" HeaderText="Numero de reporte" />
                <asp:BoundField DataField="FechaServicio" HeaderText="Fecha Servicio" />
                <asp:BoundField DataField="IdOperario" HeaderText="Identificacion Operario" />
                <asp:BoundField DataField="TipoBomba" HeaderText="Tipo Bomba" />
                <asp:BoundField DataField="CodigoBomba" HeaderText="Codigo Bomba" />
                <asp:BoundField DataField="NombreObra" HeaderText="Nombre Obra" />
                <asp:BoundField DataField="NumeroPedido" HeaderText="Numero Pedido" />
                <asp:BoundField DataField="MetrosColocados" HeaderText="M3 Colocados" />
                <asp:BoundField DataField="HoraInicio" HeaderText="Hora Inicio Servicio" />
                <asp:BoundField DataField="HoraFin" HeaderText="Hora Fin Servicio" />
            </Columns>
        </asp:GridView>

    </div>
    </form>
</body>
</html>
