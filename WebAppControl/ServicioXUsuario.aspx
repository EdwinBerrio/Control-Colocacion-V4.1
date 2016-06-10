<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServicioXUsuario.aspx.cs" Inherits="WebAppControl.ServicioXUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form id="form2" runat="server">
    <div>
        <h1>Mostrar servicios por usuario</h1>
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
                    <asp:Button ID="BtnGuardar" runat="server" Text="Buscar" OnClick="BtnGuardar_Click" />
                    <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" OnClick="BtnCancelar_Click" />
                </td>
            </tr>

       </table>
            <div>
                <asp:GridView ID="GridViewProduccUsuario" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="IdReporte" HeaderText="Numero Remision" />
                        <asp:BoundField DataField="IdOperario" HeaderText="Numero Documento" />
                        <asp:BoundField DataField="TipoBomba" HeaderText="Tipo Equipo" />
                        <asp:BoundField DataField="CodigoBomba" HeaderText="Codigo equipo" />
                        <asp:BoundField DataField="NombreObra" HeaderText="Nombre Obra" />
                        <asp:BoundField DataField="NumeroPedido" HeaderText="N. pedido" />
                        <asp:BoundField DataField="MetrosColocados" HeaderText="Metros Colocados" />
                        <asp:BoundField DataField="HoraInicio" HeaderText="Hora Inicio" />
                        <asp:BoundField DataField="HoraFin" HeaderText="Hora fin " />
                        <asp:BoundField DataField="FechaServicio" HeaderText="Fecha Inicial Servicio" />
                        <asp:BoundField DataField="FechaFinal" HeaderText="Fecha Final Servicio" />
                    </Columns>
                </asp:GridView>

            </div>
            </div>
         </div> 
       <p>
            <asp:Label ID="lbLMsg" runat="server"></asp:Label>
       </p>
   
    </form>
</body>
</html>
