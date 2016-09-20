<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebAppControl.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/Style1.css" type="text/css" />
    <title></title>
</head>
<body>
    <div>
        <form runat="server">
                  <asp:Button ID="BtnIngresar" runat="server" Text="INGRESAR" OnClick="BtnIngresar_Click1" />
        </form>
    </div>
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
   </header>
</body>
</html>
