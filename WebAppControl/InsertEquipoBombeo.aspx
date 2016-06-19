<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertEquipoBombeo.aspx.cs" Inherits="WebAppControl.InsertEquipoBombeo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/StyleSLogin.css" type="text/css" />
    <title>Insertar Equipo de Bombeo</title>
   
   
</head>
<body>
    <header>
         <h1 id="title">Registro de Equipo Bombeo</h1><br ><br ><br ><br >
        
        <nav id="menu">
            <ul >
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
       
        <div id="cajamenu">
        <table class="auto-style17">
            <%--caja para los datos--%>
            <tr>
                <td class="auto-style12">
                    <h5><asp:Label ID="label1" runat="server" Text="Codigo Bomba" Height="16px" Width="150px"></asp:Label></h5>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextCodigoBomba" runat ="server" TextMode="Number" Height="18px" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <h5><asp:Label ID="label2" runat="server" Text="Marca Equipo" Height="16px" Width="150px" ></asp:Label></h5>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextMarca" runat ="server" Height="16px" Width="150px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style15">
                    <h5><asp:Label ID="label3" runat="server" Text="Modelo del Equipo" Height="19px" Width="147px"></asp:Label></h5>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextModelo" runat ="server" TextMode="Number" Height="19px" Width="147px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style14">
                    <h5><asp:Label ID="label4" runat="server" Text="Tipo de Bomba"  Height="16px" Width="150px"></asp:Label></h5>
                </td>
                <td class="auto-style16">
                    
                    <asp:DropDownList ID="TextTipoBomba" runat="server" OnSelectedIndexChanged="TextCargoEmpleado_SelectedIndexChanged">
                       <asp:ListItem Text="AUTOBOMBA" Value="1001" />
                       <asp:ListItem Text="ESTACIONARIA TIRO" Value="1002" />
                       <asp:ListItem Text="ESTACIONARIA MONTADA" Value="1003" />           
                   </asp:DropDownList>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style11">
                   <h5> <asp:Label ID="label5" runat="server" Text="Alcance del Equipo"  Height="1px" Width="150px"></asp:Label></h5>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextAlcance" runat ="server" TextMode="Number" Height="16px" Width="147px"></asp:TextBox>
                </td>
            </tr>

            
            
            <tr>
                <%--<td class="auto-style2">&nbsp;</td>--%>
                <td class="auto-style11">
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" OnClick="BtnCancelar_Click" Height="23px" Width="62px" />
                    <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" Height="23px" Width="62px" />
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

