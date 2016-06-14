<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InserProduccion.aspx.cs" Inherits="WebAppControl.InserProduccion" %>

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
                <li>Insertar produccion</li>
                <li><a id ="A2" runat="server" href="/InsertEquipoBombeo.aspx">Registrar Equipo Bombeo</a></li>
                <li><a id ="A3" runat="server" href="/MostrarUsuario.aspx">Usuarios Registrados</a></li>
                <li><a id ="A4" runat="server" href="/MostrarProduccion.aspx">Produccion</a></li>
                <li><a id ="A5" runat="server" href="/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li>
            </ul>
        </nav>
    </header>
    <form id="form2" runat="server">
    <div>
        <h1>Registro Servicio Bombeo</h1>
        <div id="cajamenu">
        <table>
            <%--caja para los datos--%>
            <tr>
                <td>
                    <asp:Label ID="label1" runat="server" Text="Numero Reporte"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextIdReporte" runat ="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>

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
                <td class="auto-style2">
                    <asp:Label ID="label3" runat="server" Text="Tipo Bomba"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextTipoBomba" runat ="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="label10" runat="server" Text="Codigo Bomba"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextCodigoBomba" runat ="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label8" runat="server" Text="Nombre Obra"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextNombreObra" runat ="server" ></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label4" runat="server" Text="Numero Pedido"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextNumeroPedido" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label5" runat="server" Text="M3 Colocados"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextMetrosColocados" runat ="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td class="auto-style2">
                    <asp:Label ID="label6" runat="server" Text="Hora Inicio Servicio"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextHoraInicio" runat ="server" TextMode="Time"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td class="auto-style2">
                    <asp:Label ID="label7" runat="server" Text="Hora Fin Servicio"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextHoraFin" runat ="server" TextMode="Time"></asp:TextBox>
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
