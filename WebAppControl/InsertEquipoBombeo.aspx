<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertEquipoBombeo.aspx.cs" Inherits="WebAppControl.InsertEquipoBombeo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/StyleSLogin.css" type="text/css" />
    <title></title>
</head>
<body>
    <header><br><br>
        <nav>
            <ul id="Bombeo">
                <%--<li>Menu </li>--%>
                <li><a id ="A1" runat="server" href="~/InsertarUsuario.aspx">Registrar Usuario</a></li>
                
                <li><a id ="A6" runat="server" href="~/InserProduccion.aspx">Registrar Produccion</a></li>
                
                
                
                <%--<li>Registrar Equipo Bombeo</li>--%>
                
                 <li><a id ="A3" runat="server" href="~/MostrarUsuario.aspx">Usuarios Registrados</a></li>
                <li><a id ="A4" runat="server" href="~/MostrarProduccion.aspx">Producción</a></li>
                <li><a id ="A5" runat="server" href="~/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li>
            </ul>
        </nav>
    </header>
    <form id="form1" runat="server">
    <div>
        <h1>Registro de Equipo Bombeo</h1>
        <div id="cajamenu">
        <table style="height: 408px">
            <%--caja para los datos--%>
            <tr>
                <td>
                    <h4><asp:Label ID="label1" runat="server" Text="Codigo Bomba"></asp:Label></h4>
                </td>
                <td>
                    <asp:TextBox ID="TextCodigoBomba" runat ="server" TextMode="Number" Height="18px" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <h4><asp:Label ID="label2" runat="server" Text="Marca Equipo"></asp:Label></h4>
                </td>
                <td>
                    <asp:TextBox ID="TextMarca" runat ="server" Height="16px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <h4><asp:Label ID="label3" runat="server" Text="Modelo del Equipo"></asp:Label></h4>
                </td>
                <td>
                    <asp:TextBox ID="TextModelo" runat ="server" TextMode="Number" Height="19px" Width="147px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <h4><asp:Label ID="label4" runat="server" Text="Tipo de Bomba"></asp:Label></h4>
                </td>
                <td>
                    <asp:TextBox ID="TextTipoBomba" runat="server" Height="17px" Width="148px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                   <h4> <asp:Label ID="label5" runat="server" Text="Alcance del Equipo"></asp:Label></h4>
                </td>
                <td>
                    <asp:TextBox ID="TextAlcance" runat ="server" TextMode="Number" Height="16px" Width="147px"></asp:TextBox>
                </td>
            </tr>

            <br >
            
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" OnClick="BtnCancelar_Click" Height="23px" Width="60px" /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" Height="22px" Width="62px" />
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

