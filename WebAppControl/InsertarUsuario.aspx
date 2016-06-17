<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertarUsuario.aspx.cs" Inherits="WebAppControl.InsertarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/StyleSLogin.css" type="text/css" />
    <title>Insertar Usuario</title>
</head>
<body>
    <header>
         <h1><center>Registro de Usuarios</h1>
        <nav id="menu">
            <ul>
                <li><a id ="A6" runat="server" >Menu Principal</a></li>
                               
                
                                <li><a id ="A1" runat="server" href="/InsertarUsuario.aspx">Registrar Usuario</a></li>
                                
                                
                
                
                <li><a id ="A7" runat="server" href="/InsertEquipoBombeo.aspx">Inserta Produccion</a></li>
                                
               
                                 <li><a id ="A2" runat="server" href="/InsertEquipoBombeo.aspx">Registrar Equipo Bombeo</a></li>
                                
                
                                <li><a id ="A3" runat="server" href="/MostrarUsuario.aspx">Usuarios Registrados</a></li>
                                
                
                                <li><a id ="A4" runat="server" href="/MostrarProduccion.aspx">Produccion</a></li>
                                
                                <li><a id ="A5" runat="server" href="/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li>
            </ul>                
                                    
                
                                
        </nav>
    </header> 
   
    
    <form id="form1" runat="server">
    
        
        
        <div>
             <h1>Registro de Usuarios</h1>
       
        
                <table>
                        <%--caja para los datos--%>
                        <tr>
                            <td>
                                <asp:Label ID="label1" runat="server" Text="N° Identificacion"></asp:Label>
                            </td>
                            <td>
                                <h4><asp:TextBox ID="TextIdCodigo" runat ="server"></asp:TextBox></h4>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="label2" runat="server" Text="Apellidos"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextApellidos" runat ="server"></asp:TextBox>
                            </td>
                        </tr>
            
                        <tr>
                            <td class="auto-style2">
                               <asp:Label ID="label3" runat="server" Text="Nombres"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextNombres" runat ="server"></asp:TextBox>
                            </td>
                        </tr>
            
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="label4" runat="server" Text="Fecha Nacimiento"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextFechaNacimiento" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
            
                        <tr>
                            <td class="auto-style2">
                                 <asp:Label ID="label5" runat="server" Text="Cargo Empleado"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextCargoEmpleado" runat ="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                        <td class="auto-style2">
                                 <asp:Label ID="label6" runat="server" Text="Numero Telefono"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextNumeroTelefono" runat ="server" TextMode="Phone"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                        <td class="auto-style2">
                                <asp:Label ID="label7" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextEmail" runat ="server" TextMode="Email"></asp:TextBox></h4>
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
        <p>
            <asp:Label ID="lbLMsg" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
