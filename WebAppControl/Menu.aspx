<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="WebAppControl.menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <header>
        <div class="content-wrapper">
            <h1><a id="title">Control Colocación Mesclaz</a></h1>
            <div id="login">
                <ul>
                   <li><a id="Iniciar" runat="server" href="Vistas/Login.aspx">Iniciar sesión</a></li>
                   <li><a id="Cerrar" runat="server" href="Vistas/CerrarSession.aspx">Cerrar Sesión</a></li>
                </ul>
            </div>
        </div>
    </header>
     <div>
        <%--<asp:ContentPlaceHolder ID="Contenido" runat="server">

        </asp:ContentPlaceHolder>--%>
    </div>
    <div id="contentBody">
        <h3>Funciones del sistema</h3>
        <div id="caja1">
            <a href>Producción Operario</a>
            <asp:Image Id="Pastel" Width="80px" runat="server" ImageUrl="Images/Operario.png" />
        </div>
        <div id="caja1">
            <a href>Producción Equipo</a>
             <asp:Image Id="Image0" Width="80px" runat="server" ImageUrl="Images/Equipo.png" />
        </div>
        <div id="caja1">
            <a href> Consolidado Total </a>
             <asp:Image Id="Image1" Width="90px" runat="server" ImageUrl="Images/Consolidado.png" />
        </div>
        <div id="caja1">
            <a href>Graficas</a>
            <br >
            <asp:Image Id="Image2" Width="80px" runat="server" ImageUrl="Images/Graficas.png" />
        </div>
        <div id="caja1">
            <a href>Registro Usuario</a>
            <asp:Image Id="Image3" Width="80px" runat="server" ImageUrl="Images/Usuario.png" />
        </div>
        <div id="caja1">
            <a href>Registro Equipo</a>
             <asp:Image Id="Image4" Width="80px" runat="server" ImageUrl="Images/Equipo.png" />
        </div>
    </div>
    <br>
    
    <footer>
        <div id="footer">
            <h3>Siguenos en la redes sociales</h3>
            <div id="caja2">
                <a href="https://www.facebok.com/prgramadores" class="fbk" target="_blank">&nbsp;</a>
                <p style="width: 82px">&nbsp;&nbsp;&nbsp;&nbsp; Facebook</p>
            </div>
            <div id="caja2">
                <a href="https://twitter.com/programadoresa5" class="twitter" target="_blank">&nbsp;</a>
                <p style="width: 76px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Twitter</p>
            </div>
            <div id="caja2">
                <a href="https://plus.google.com/u/2/107966555070255888100" class="google" target="_blank">&nbsp;</a>
                <p style="width: 75px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Google</p>
            </div>
            <div id="caja2">
                <a href="https://www.youtube.com/channel/UCfJBtAht4VPFVhCu8EhYysQ" class="youtube" target="_blank">&nbsp;</a>
                    <p style="width: 91px">&nbsp;&nbsp;&nbsp;&nbsp; Youtube</p>
            </div>
            <div class="copy">
                <p>
                    &copy;<%:DateTime.Now.Year%> Programadores Acse
                </p>
            </div>
        </div>
    </footer>
</body>
</html>
