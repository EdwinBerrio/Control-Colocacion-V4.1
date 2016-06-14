<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarEquipoBomb.aspx.cs" Inherits="WebAppControl.MostrarEquipoBomb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
                <li><a id ="A4" runat="server" href="/MostrarProduccion.aspx">Produccion</a></li>
                <li>Equipos de Bombeo</li>
            </ul>
        </nav>
    </header>
    <form id="form1" runat="server">
    <div>
    <h1>Equipos Registrados</h1>
        <asp:GridView ID="TablaEquiposBombeo" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="TablaEquiposBombeo_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="IdBomba" HeaderText="Codigo Bomba" />
                <asp:BoundField DataField="Marca" HeaderText="Marca Equipo" />
                <asp:BoundField DataField="Modelo" HeaderText="Modelo Bomba" />
                <asp:BoundField DataField="TipoBomba" HeaderText="Tipo Bomba" />
                <asp:BoundField DataField="Alcance" HeaderText="Alcance del Equipo" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
