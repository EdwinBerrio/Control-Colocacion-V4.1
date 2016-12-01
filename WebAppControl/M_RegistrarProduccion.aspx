<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="M_RegistrarProduccion.aspx.cs" Inherits="WebAppControl.M_RegistrarProduccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content-header">
         <div class="row">
        <h1 style="text-align:center">REGISTRO DE SERVICIO BOMBEO</h1>
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
                            <label>NUMERO REPORTE</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextIdReporte" runat="server"  CssClass="form-control" TextMode="Number"></asp:TextBox>
                        </div><!--Fin-->
                         <!--Inicio-->
                        <div class="form-group">
                            <label>NUMERO IDENTIFICACION</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextIdIdentificacion" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>FECHA INICIO SERVICIO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextFecha1" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>FECHA FIN DE SERVICIO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextFecha2" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>TIPO DE EQUIPO BOMBEO</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="TextTipoBomba" runat="server" CssClass="form-control">
                                <asp:ListItem Text=" " Value=" " />
                                    <asp:ListItem Text="AUTOBOMBA" Value="101" />
                                    <asp:ListItem Text="ESTACIONARIA TIRO" Value="102" />
                                    <asp:ListItem Text="ESTACIONARIA MONTADA" Value="103" />
                            </asp:DropDownList>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>CODIGO DEL EQUIPO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextCodigoBomba" runat="server" CssClass="form-control"></asp:TextBox>
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
                            <label>NOMBRE DE LA OBRA</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextNombreObra" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>NUMERO DE PEDIDO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextPedido" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>METROS CUBICOS COLOCADOS</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextMetrosC" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        </div><!--Fin-->
                         <!--Inicio-->
                        <div class="form-group">
                            <label>METROS DE TUBERIA UTLIZADA</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextTuberia" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>HORA INICIO TURNO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextHora1" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
                        </div><!--Fin-->
                        <!--Inicio-->
                        <div class="form-group">
                            <label>HORA FINALIZACION DE TURNO</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextHora2" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
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
                            <asp:Button ID="BtnGuardarP" runat="server" CssClass="btn btn-primary" Text="Guardar" Width="200px" OnClick="BtnGuardarP_Click"/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <asp:Button ID="BtnCancelarP" runat="server" CssClass="btn btn-danger" Text="Cancelar" Width="200px" OnClick="BtnCancelarP_Click"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
</asp:Content>
