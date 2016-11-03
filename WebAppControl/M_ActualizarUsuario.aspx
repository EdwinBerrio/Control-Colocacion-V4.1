<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="M_ActualizarUsuario.aspx.cs" Inherits="WebAppControl.M_ActualizarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
         <div class="row">
        <h1 style="text-align:center">ACTUALIZAR USUARIO</h1>
        </div>
    </section>
     <div class="row"> 
           <div align="center">
                <table>
                    <tr>
                        <td>
                            <div class="form-group">
                                <asp:TextBox ID="TextBIdCodigo" runat="server"  CssClass="form-control"></asp:TextBox>
                            </div>
                        </td>   
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                         <td> 
                             <div class="form-group">
                                 <asp:Button ID="BtnBuscar" runat="server" CssClass="btn btn-primary" Text="Buscar" Width="200px" OnClick="BtnBuscar_Click"/>
                             </div>
                        </td>                     
                    </tr>
                </table>
             </div>  
         </div>
    <section class="content">
        <div class="row">
            <!--PRIMER CUADRO-->
            <div class="col-md-6"><!--Damos la medidos a los formularios -->
                <div class="box box-danger"><!--Definimos que es una caja y damoscolor-->
                    <div class="box-body"><!--Definimos el cuerpo-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>NUMERO DE DOCUMENTO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextIdCodigo" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>APELLIDOS</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextApellidos" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                         <!--Inicio-->
                        <div class="form-group">
                            <label>NOMBRES</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextNombres" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>FECHA DE NACIMIENTO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextFechaNacimiento" runat="server" CssClass="form-control" ></asp:TextBox>
                        </div><!--Fin-->
                    </div>
                </div>
            </div>
            <!--SEGUNDO CUADRO-->
            <div class="col-md-6"><!--Damos la medidos a los formularios -->
                <div class="box box-danger"><!--Definimos que es una caja y damoscolor-->
                    <div class="box-body"><!--Definimos el cuerpo-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>CARGO DEL EMPLEADO</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="TextCargoEmpleado" runat="server" CssClass="form-control">
                                <asp:ListItem Text=" " Value=" " />
                                    <asp:ListItem Text="OPE. AUTOBOMBA" Value="50001"/>
                                    <asp:ListItem Text="OPE. ESTACIONARIA" Value="50002" />
                                    <asp:ListItem Text="AUXILIAR BOMBA" Value="50003"/>
                                    <asp:ListItem Text="ADMINISTRADOR" Value="50004"/>
                            </asp:DropDownList>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>NUMERO DE TELEFONO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextNumeroTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                         <!--Inicio-->
                        <div class="form-group">
                            <label>DIRECCION DE CORREO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextEmail" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>ASIGNADO A PLANTA  ---PENDIENTE---</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                <asp:ListItem Text=" " Value=" " />
                                    <asp:ListItem Text="PLANTA SUR" />
                                    <asp:ListItem Text="PLANTA BOSA"  />
                                    <asp:ListItem Text="PLANTA FONTIBON"/>
                            </asp:DropDownList>
                            <!--<asp:ListItem Text="ESTACIONARIA MONTADA" Value="1003" />-->
                        </div> <!--Fin-->
                    </div>
                </div>
            </div>
        </div>
        <!--BOTONES-->
        <div class="row"> 
            <div align="center"> 
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="BtnActualizar" runat="server" CssClass="btn btn-primary" Text="Actualizar" Width="200px" OnClick="BtnActualizar_Click"/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:Button ID="BtnCancelar" runat="server" CssClass="btn btn-danger" Text="Cancelar" Width="200px" OnClick="BtnCancelar_Click"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
</asp:Content>
