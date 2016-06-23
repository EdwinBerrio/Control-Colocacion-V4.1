<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertEquipoBombeo.aspx.cs" Inherits="WebAppControl.InsertEquipoBombeo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/Style1.css" type="text/css" />
    <title></title>
</head>
<body>
    <header>
        <div id="logotitulo">
            <table>
                <tr>
                    <td>
                        <img src="/Imagen/logo.png" />
                    </td>
                    <td>
                        <h1 id="titulo">CONTROL Y COLOCACIÒN DE MEZCLAS </h1>
                    </td>
                </tr>
            </table>
            
        </div>
    <div id="navcontainer">
        
    <ul id="navlist">

        <li><a id ="A1" runat="server" href="/Index.aspx">Menu Principal</a></li>         
        <li><a id ="A2" runat="server" href="/InsertarUsuario.aspx">Registrar Usuario</a></li>                            
        <li><a id ="A3" runat="server" >Registrar Equipo</a></li>
        <li><a id ="A4" runat="server" href="/InserProduccion.aspx">Registrar Produccion</a></li>                         
        <li><a id ="A5" runat="server" href="/MostrarUsuario.aspx">Usuarios Registrados</a></li>                           
        <li><a id ="A6" runat="server" href="/MostrarProduccion.aspx">Produccion</a></li>                         
        <li><a id ="A7" runat="server" href="/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li>
        <li><a id ="A8" runat="server" href="/ProduccionXUsuario.aspx">Produccion por Usuario</a></li>

    </ul>
</div>
    </header>

    <form id="form1" runat="server">
    <div>
        <div id="cajamenu">
        <h2 id="titulosFormu">Registro de Equipo Bombeo</h2>
        
        <table id="tabla">
           
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label1" runat="server" Text="Codigo Bomba"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextCodigoBomba" runat ="server" TextMode="Number" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label2" runat="server" Text="Marca Equipo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextMarca" runat ="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label3" runat="server" Text="Modelo del Equipo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextModelo" runat ="server" TextMode="Number" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="label4" runat="server" Text="Tipo de Bomba"></asp:Label>
                </td>
                <td>
                    
                    <asp:DropDownList ID="TextTipoBomba" runat="server" OnSelectedIndexChanged="TextCargoEmpleado_SelectedIndexChanged" Height="30px" Width="200px">
                       <asp:ListItem Text=" " Value=" " />
                       <asp:ListItem Text="AUTOBOMBA" Value="1001" />
                       <asp:ListItem Text="ESTACIONARIA TIRO" Value="1002" />
                       <asp:ListItem Text="ESTACIONARIA MONTADA" Value="1003" />           
                   </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                   <asp:Label ID="label5" runat="server" Text="Alcance del Equipo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextAlcance" runat ="server" TextMode="Number" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>        
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                   
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" Height="22px" Width="62px" />
                    <asp:Button ID="Button1" runat="server" Text="Cancelar" OnClick="BtnCancelar_Click" Height="22px" Width="62px"  OnClientClick="return confirm('¿Esta seguro que no desea guardar el registro ?');"/>
                    <asp:Button ID="BtnSalir" runat="server" Text="Salir" OnClick="BtnSalir_Click" Height="22px" Width="62px" OnClientClick="return confirm('¿Esta seguro que desea salir de la pagina Insertar Equipo de bombeo?');"/>
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

