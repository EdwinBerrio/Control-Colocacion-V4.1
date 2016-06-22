<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarEquipoBomb.aspx.cs" Inherits="WebAppControl.MostrarEquipoBomb" %>

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
        <li><a id ="A7" runat="server" >Equipos de Bombeo</a></li>
        <li><a id ="A8" runat="server" href="/ProduccionXUsuario.aspx">Produccion por Usuario</a></li>

    </ul>
</div>
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
         <tr>
            <td class="auto-style2">&nbsp;</td>
              <td>
                <asp:Button ID="BtnSalir" runat="server" Text="Salir" OnClick="BtnSalir_Click" OnClientClick="return confirm('¿Esta seguro que desea salir de la pagina Registrar Usuario?');"  Height="22px" Width="62px" />
              </td>
         </tr>
    </div>
    </form>
</body>
</html>
