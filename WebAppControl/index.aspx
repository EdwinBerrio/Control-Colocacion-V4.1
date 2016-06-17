<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebAppControl.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/StyleSLogin.css" type="text/css" />
    <title>Index</title>
</head>
<body>
    
    <header>

        <h1><a id="title">Control Colocación Mesclaz</a></h1><br ><br >

        <nav id="menu">
            <ul>
                        <div id="caja1">      
                             <li><a id ="A6" runat="server"  href="/Index.aspx" > Menu Principal</a></li>
                            <asp:Image Id="Image6" Width="115px" runat="server" ImageUrl="Imagen/icono2.png" />
                        
                        </div>

                            <div id="caja1">    
                               <li><a id ="A1" runat="server" href="/InsertarUsuario.aspx">Registrar Usuario</a></li>
                                   <asp:Image Id="Image7" Width="115px" runat="server" ImageUrl="Imagen/icono2.png" />
                            </div>            
                       
                           <div id="caja1"> 
                               <li><a id ="A7" runat="server" href="/InsertEquipoBombeo.aspx">Inserta Producción</a></li>
                                      <asp:Image Id="Image8" Width="115px" runat="server" ImageUrl="Imagen/icono5.png" />
                           </div>
                     
                           <div id="caja1">
                
                              <li><a id ="A2" runat="server" href="/InsertEquipoBombeo.aspx">Registrar Equipo </a></li>
                                     <asp:Image Id="Image2" Width="115px" runat="server" ImageUrl="Imagen/Icono1.png" />   
                           </div>
                       
                           <div id="caja1">
                              <li><a id ="A3" runat="server" href="/MostrarUsuario.aspx">Usuarios Registrados</a></li>
                                   <asp:Image Id="Image3" Width="115px" runat="server" ImageUrl="Imagen/icono2.png" />      
                           </div>
                  
                           <div id="caja1">
                             <li><a id ="A4" runat="server" href="/MostrarProduccion.aspx">Registrar Producción</a></li>
                                    <asp:Image Id="Image4" Width="115px" runat="server" ImageUrl="Imagen/icono4.png" />     
                           </div>
                           <div id="caja1">    
                              <li><a id ="A5" runat="server" href="/MostrarEquipoBomb.aspx">Equipos de Bombeo</a></li>
                                    <asp:Image Id="Image5" Width="115px" runat="server" ImageUrl="Imagen/Icono1.png" />
                          </div>
           </ul> 

            
        </nav>          
            

         
                 
            
                    
                                    
                
                                
        
              

              
        
           
                          
    </header>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
