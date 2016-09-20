<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertarUsuario.aspx.cs" Inherits="WebAppControl.InsertarUsuario" %>

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
                        <h1 id="titulo">CONTROL Y COLOCACIÒN DE MEZCLAS DE CONCRETO</h1>
                    </td>
                </tr>
            </table>
            
        </div>
    <div id="navcontainer">
        
    <ul id="navlist">

        <li><a id ="A1" runat="server" href="/Index.aspx">Menu Principal</a></li>         
        <li><a id ="A2" runat="server">Registrar Usuario</a></li>                            
        <li><a id ="A3" runat="server" href="/InsertEquipoBombeo.aspx">Registrar Equipo</a></li>
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
        <table id="tabla">
             <h2 id="titulosFormu">Registro de Usuarios</h2>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="label1" runat="server" Text="N° Identificacion"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextIdCodigo" runat ="server" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="label2" runat="server" Text="Apellidos"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextApellidos" runat ="server" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
            
                        <tr>
                            <td class="auto-style2">
                               <asp:Label ID="label3" runat="server" Text="Nombres"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextNombres" runat ="server" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
            
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="label4" runat="server" Text="Fecha Nacimiento"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextFechaNacimiento" runat="server" TextMode="Date" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
            >
                        <tr>
                            <td class="auto-style2">
                                 <asp:Label ID="label5" runat="server" Text="Cargo Empleado"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="TextCargoEmpleado" runat="server" OnSelectedIndexChanged="TextCargoEmpleado_SelectedIndexChanged" Height="30px" Width="200px">
                                    <asp:ListItem Text=" " Value=" " />
                                    <asp:ListItem Text="OPE. AUTOBOMBA" Value="10001" />
                                    <asp:ListItem Text="OPE. ESTACIONARIA" Value="10002" />
                                    <asp:ListItem Text="AUXILIAR  BOMBA" Value="10003" />
                                    <asp:ListItem Text="ADMINISTRADOR" Value="10004" />
                                </asp:DropDownList>
                                
                            </td>
                        </tr>
                        <tr>
                        <td class="auto-style2">
                                 <asp:Label ID="label6" runat="server" Text="Numero Telefono"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextNumeroTelefono" runat ="server" TextMode="Phone" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                        <td class="auto-style2">
                                <asp:Label ID="label7" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextEmail" runat ="server" TextMode="Email" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click"  Height="22px" Width="62px" />
                                <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" OnClick="BtnCancelar_Click" OnClientClick="return confirm('¿Esta seguro que desea salir de la pagina Registrar Usuario?');"  Height="22px" Width="62px" />
                                 <asp:Button ID="BtnSalir" runat="server" Text="Salir" OnClick="BtnSalir_Click" OnClientClick="return confirm('¿Esta seguro que desea salir de la pagina Registrar Usuario?');"  Height="22px" Width="62px" />
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
