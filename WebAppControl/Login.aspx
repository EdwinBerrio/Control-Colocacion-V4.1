<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebAppControl.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <%--Enlace a hoja de estilos--%>
    <link rel="stylesheet" href="css/StyleSLogin.css" type="text/css" />

</head>
<body>
   
<div class="login">
  <form method="post">
      <h1>Login</h1>
    <input type="text" name="Usuario" placeholder="Username" required="required" />
    <input type="password" name="password" placeholder="Password" required="required" />
    <button type="submit">Ingresar</button>
     <button type="submit">Cancelar</button>
    </form>
</div>

    
</body>
</html>
