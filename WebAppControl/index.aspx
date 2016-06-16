<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebAppControl.index" %>

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
                <li>Registrar Usuario</li>
                <li><a id ="A1" runat="server" href="/InsertarUsuario.aspx">Registrar Usuario</a></li>
                <li><a id ="A6" runat="server" href="/InserProduccion.aspx">Registrar Produccion</a></li>
                <li><a id ="A2" runat="server" href="/InsertEquipoBombeo.aspx">Registrar Equipo Bombeo</a></li>
                
                 <li><a id ="A3" runat="server" href="/MostrarUsuario.aspx">Usuarios Registrados</a></li>
                <li><a id ="A4" runat="server" href="/MostrarProduccion.aspx">Produccion</a></li>
                <li><a id ="A5" runat="server" href="/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li>
            </ul>
        </nav>
    </header>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
