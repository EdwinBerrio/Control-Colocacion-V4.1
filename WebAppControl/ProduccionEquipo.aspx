<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProduccionEquipo.aspx.cs" Inherits="WebAppControl.ProduccionEquipo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/StyleSLogin.css" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Produccion Por Equipo</h1>
        <div id="cajamenu">
        <table>
            <%--caja para los datos--%>
            <h3> Tipo de Equipo</h3>
            <tr>
                <td>
                    <asp:RadioButton ID="Autobomba" runat="server" />
                </td>
                <td>
                    <asp:RadioButton ID="Estacionaria" runat="server" />                    
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="label9" runat="server" Text="Fecha Inicial"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextFechaInicialC" runat ="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label2" runat="server" Text="Fecha Final"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextFechaFinalC" runat ="server" TextMode="Date"></asp:TextBox>
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
                    <asp:Button ID="BtnBuscar" runat="server" Text="Consultar" OnClick="BtnGuardar_Click" />
                    <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" OnClick="BtnCancelar_Click" />
                </td>
            </tr>
        </table>
    </div>
    </div>    
    </form>
</body>
</html>
