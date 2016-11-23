<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="M_RegistrarEquipo.aspx.cs" Inherits="WebAppControl.M_RegistrarEquipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="content-header">
         <div class="row">
        <h1 style="text-align:center">REGISTRO DE EQUIPO BOMBEO</h1>
        </div>
    </section>
    <section class="content">
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
                            <asp:TextBox ID="TextCodigoBomba" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>ESTADO DEL EQUIPO</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="TextEstado" runat="server" CssClass="form-control">
                                <asp:ListItem Text=" " Value=" " />
                                    <asp:ListItem Text="Activo" Value="A" />
                                    <asp:ListItem Text="Inactivo" Value="I"/>
                            </asp:DropDownList>  
                        </div> <!--Fin-->
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
                                    <asp:ListItem Text="AUTOBOMBA" Value="101" />
                                    <asp:ListItem Text="ESTACIONARIA MONTADA" Value="102" />
                                    <asp:ListItem Text="ESTACIONARIA TIRO" Value="103" />
                            </asp:DropDownList>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>ALCANCE DEL EQUIPO BOMBEO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextAlcance" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                        <%--<!--Inicio-->
                        <div class="form-group">
                            <label>PENDIENTE</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->--%>
                         <!--Inicio-->
                        <div class="form-group">
                            <label>ASIGNADO A PLANTA</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="TextPlanta" runat="server" CssClass="form-control">
                                <asp:ListItem Text=" " Value=" " />
                                    <asp:ListItem Text="PLANTA SUR" Value="P01"/>
                                    <asp:ListItem Text="PLANTA BOSA" Value="P02"/>
                                    <asp:ListItem Text="PLANTA FONTIBON" Value="P03"/>
                                    <asp:ListItem Text="PLANTA SIBERIA" Value="P04"/>
                                    <asp:ListItem Text="PLANTA DOS CUARENTA" Value="P05"/>
                                    <asp:ListItem Text="PLANTA PUENTE ARANDA" Value="P06"/>
                                    <asp:ListItem Text="PLANTA CIENTO SETENTA" Value="P07"/>
                            </asp:DropDownList>
                            
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
                            <asp:Button ID="BtnGuardar" runat="server" CssClass="btn btn-primary" Text="Registrar" Width="200px" OnClick="BtnGuardar_Click"/>
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
