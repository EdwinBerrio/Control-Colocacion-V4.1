<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="M_ActualizarEquipo.aspx.cs" Inherits="WebAppControl.M_ActualizarEquipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
         <div class="row">
        <h1 style="text-align:center">ACTUALIZAR EQUIPO</h1>
        </div>
    </section>
    <section class="content">
        <div class="row"> 
           <div align="center">
                <table>
                    <tr>
                        <td>
                            <div class="form-group">
                                <asp:TextBox ID="TextCodigoBomb" runat="server"  CssClass="form-control"></asp:TextBox>
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
        <div class="row">
            <!--PRIMER CUADRO-->
            <div class="col-md-6"><!--Damos la medidos a los formularios -->
                <div class="box box-danger"><!--Definimos que es una caja y damoscolor-->
                    <div class="box-body"><!--Definimos el cuerpo-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>CODIGO DE EQUIPO BOMBEO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextIdBomba" runat="server"  CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>PLACA DE EQUIPO --PENDIENTE--</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="Text1" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </div><!--Fin-->
                         <!--Inicio-->
                        <div class="form-group">
                            <label>MODELO EQUIPO BOMBEO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextModelo" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>MARCA EQUIPO DE BOMBEO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextMarca" runat="server" CssClass="form-control"></asp:TextBox>
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
                            <label>TIPO DE EQUIPO BOMBEO</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="TextTipoBomba" runat="server" CssClass="form-control">
                                <asp:ListItem Text=" " Value=" " />
                                    <asp:ListItem Text="AUTOBOMBA" Value="100001" />
                                    <asp:ListItem Text="ESTACIONARIA TIRO" Value="1002" />
                                    <asp:ListItem Text="ESTACIONARIA MONTADA" Value="1003" />
                            </asp:DropDownList>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>ALCANCE DEL EQUIPO BOMBEO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextAlcance" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>PENDIENTE</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                         <!--Inicio-->
                        <div class="form-group">
                            <label>PLANTA ASIGNADA ---PENDIENTE---</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                <asp:ListItem Text=" " Value=" " />
                                    <asp:ListItem Text="PLANTA SUR" />
                                    <asp:ListItem Text="PLANTA BOSA"  />
                                    <asp:ListItem Text="PLANTA FONTIBON"/>
                            </asp:DropDownList>
                            <!--asp:ListItem Text="ESTACIONARIA MONTADA" Value="1003" /-->
                        </div><!--Fin-->
                        
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
