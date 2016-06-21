<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebAppControl.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/StyleSLogin.css" type="text/css" />
    <title></title>
</head>
<body>
    
    <header>


        <h1><a id="title">Control Colocación Mesclaz</a></h1><br ><br ><br ><br >

        <nav id="menu">
            <ul>  <br ><br ><br ><br >
            
                      
            <div id="caja1">
                <li><a id ="A1" runat="server" href="/InsertarUsuario.aspx">Registrar Usuario</a></li>    
                <asp:Image Id="Pastel" Width="180px" runat="server" ImageUrl="Imagen/.png" />
                      
           </div>
        

           <div id="caja1">  
                    <li><a id ="A7" runat="server" href="/InsertEquipoBombeo.aspx">Inserta Producción</a></li>
                    <asp:Image Id="Image0" Width="80px" runat="server" ImageUrl="Imagen/icono2.png" />
                   
           </div> 

           
                <div id="caja1">  
                     <li><a id ="A2" runat="server" href="/InsertEquipoBombeo.aspx">Registrar Equipo Bombeo</a></li>
                     <asp:Image Id="Image1" Width="80px" runat="server" ImageUrl="Imagen/icono5.png" />
                                   
           </div> 

           <div id="caja1">
                        <li><a id ="A3" runat="server" href="/MostrarUsuario.aspx">Usuarios Registrados</a></li>
                       <asp:Image Id="Image2" Width="80px" runat="server" ImageUrl="Imagen/Icono1.png" />
                      
           </div>   
          
          <div id="caja1"> 
                    <li><a id ="A4" runat="server" href="/MostrarProduccion.aspx">Producción</a></li>
                    <asp:Image Id="Image3" Width="80px" runat="server" ImageUrl="Imagen/icono2.png" />
                        
           </div>

            <div id="caja1">
                     <li><a id ="A5" runat="server" href="/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li>
                     <asp:Image Id="Image4" Width="80px" runat="server" ImageUrl="Imagen/icono4.png" />
                        
            </div>

           <div id="caja1"> 
                    <li><a id ="A6" runat="server" href="/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li> 
                     <asp:Image Id="Image5" Width="80px" runat="server" ImageUrl="Imagen/Icono1.png" />
                     
            
                       
            </div>
            
               
                
             </ul>     
        </nav>              

    </header>
  
    <div>
    
    </div>
    </form>
</body>
</html>
