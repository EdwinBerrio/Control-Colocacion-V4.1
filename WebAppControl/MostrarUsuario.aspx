<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarUsuario.aspx.cs" Inherits="WebAppControl.MostrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/StyleSLogin.css" type="text/css" />
    <title>Mostrar Usuario</title>
</head>
<body>
    <header>
          <h1 id="title">Usuarios Inscritos</h1>
        <br /><br /><br />
        <nav id="menu">
            <ul>
                <li>Menu </li>
                <li><a id ="A1" runat="server" href="/InsertarUsuario.aspx">Registrar Usuario</a></li>
                <li><a id ="A6" runat="server" href="/InserProduccion.aspx">Registrar Produccion</a></li>
                <li><a id ="A2" runat="server" href="/InsertEquipoBombeo.aspx">Registrar Equipo Bombeo</a></li>
                
                 <li>Usuarios Registrados</li>
                <li><a id ="A4" runat="server" href="/MostrarProduccion.aspx">Produccion</a></li>
                <li><a id ="A5" runat="server" href="/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li>
            </ul>
        </nav>
    </header>
    <form id="form1" runat="server">
    <div>
      
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="IdCodigo" HeaderText="Identificacion" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" />
                <asp:BoundField DataField="Nombres" HeaderText="Nombres" />
                <asp:BoundField DataField="FechaNacimiento" HeaderText="Fecha Nacimiento" />
                <asp:BoundField DataField="CargoEmpleado" HeaderText="Cargo " />
                <asp:BoundField DataField="NumeroTelefono" HeaderText="Telefono" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
