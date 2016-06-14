<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertEquipoBombeo.aspx.cs" Inherits="WebAppControl.InsertEquipoBombeo" %>

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
                <li>Registrar Equipo Bombeo</li>
                
                 <li><a id ="A3" runat="server" href="/MostrarUsuario.aspx">Usuarios Registrados</a></li>
                <li><a id ="A4" runat="server" href="/MostrarProduccion.aspx">Produccion</a></li>
                <li><a id ="A5" runat="server" href="/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li>
            </ul>
        </nav>
    </header>
    <form id="form1" runat="server">
    <div>
        <h1>Registro de Equipo Bombeo</h1>
        <div id="cajamenu">
        <table>
            <%--caja para los datos--%>
            <tr>
                <td>
                    <asp:Label ID="label1" runat="server" Text="Codigo Bomba"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextCodigoBomba" runat ="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label2" runat="server" Text="Marca Equipo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextMarca" runat ="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label3" runat="server" Text="Modelo del Equipo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextModelo" runat ="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label4" runat="server" Text="Tipo de Bomba"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextTipoBomba" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label5" runat="server" Text="Alcance del Equipo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextAlcance" runat ="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
                    <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" OnClick="BtnCancelar_Click" />
                </td>
            </tr>
        </table>
        </div>
     </div>
        <p>
            <asp:Label ID="lbLMsg" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>

