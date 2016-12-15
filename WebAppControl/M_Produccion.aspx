<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="M_Produccion.aspx.cs" Inherits="WebAppControl.M_Produccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
         <div class="row">
        <h1 style="text-align:center">SERVICIOS REGISTRADOS</h1>
        </div>
    </section>
    <section class="content-header">
      <div class="row">
        <div class="col-md-12"><!--Damos la medidos a los formularios -->
          <div class="box box-danger"><!--Definimos que es una caja y damoscolor-->
             <div class="box-body"><!--Definimos el cuerpo-->
             <div align="center">
                <table>
                    <tr>
                        <%--<td>
                            <!--Inicio-->
                        <div class="form-group">    
                            <label>N. Identificacion</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextIdentificacion" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                        </td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            <!--Inicio-->
                        <div class="form-group">
                            <label>Equipo Bombeo</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextEquipoBombeo" runat="server" CssClass="form-control"></asp:TextBox>
                        </div><!--Fin-->
                        </td>
                        <td>&nbsp;&nbsp;</td>--%>
                        <td>
                            <!--Inicio-->
                        <div class="form-group">
                            <label>Fecha Inicial</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextFecha1" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div><!--Fin-->
                        </td>
                        <td>&nbsp;&nbsp;</td>
                        <td>
                            <!--Inicio-->
                        <div class="form-group">
                            <label>Fecha Final</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextFecha2" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div><!--Fin-->
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                        
                        <div class="form-group">
                            <label></label>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="BuscarP" runat="server" CssClass="btn btn-primary" Text="Buscar" Width="150px"/>
                        </div><!--Fin-->
                        </td>
                    </tr>
                </table>
               </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="content-header">
      <div class="row">
        <div class="col-md-12"><!--Damos la medidos a los formularios -->
          <div class="box box-danger"><!--Definimos que es una caja y damoscolor-->
             <div class="box-body"><!--Definimos el cuerpo-->
               <div align="center">
                <div  class="scrolling-table-container">
                 <asp:GridView ID="GridView1" ClientIDMode="Static" runat="server" AutoGenerateColumns="False" DataKeyNames="IdReporte" DataSourceID="SqlDataSource1" CssClass="table table-striped table-hover table-condensed small-top-margin">
                     <Columns>
                         <asp:BoundField DataField="IdReporte" HeaderText="IdReporte" ReadOnly="True" SortExpression="IdReporte" />
                         <asp:BoundField DataField="IdOperario" HeaderText="IdOperario" SortExpression="IdOperario" />
                         <asp:BoundField DataField="FechaServicio" HeaderText="FechaServicio" SortExpression="FechaServicio" />
                         <asp:BoundField DataField="TipoBomba" HeaderText="TipoBomba" SortExpression="TipoBomba" />
                         <asp:BoundField DataField="CodigoBomba" HeaderText="CodigoBomba" SortExpression="CodigoBomba" />
                         <asp:BoundField DataField="NombreObra" HeaderText="NombreObra" SortExpression="NombreObra" />
                         <asp:BoundField DataField="NumeroPedido" HeaderText="NumeroPedido" SortExpression="NumeroPedido" />
                         <asp:BoundField DataField="MetrosColocados" HeaderText="MetrosColocados" SortExpression="MetrosColocados" />
                         <asp:BoundField DataField="MetrosTuberia" HeaderText="MetrosTuberia" SortExpression="MetrosTuberia" />
                         <asp:BoundField DataField="HoraInicio" HeaderText="HoraInicio" SortExpression="HoraInicio" />
                         <asp:BoundField DataField="HoraFin" HeaderText="HoraFin" SortExpression="HoraFin" />
                         <asp:BoundField DataField="FechaFinal" HeaderText="FechaFinal" SortExpression="FechaFinal" />
                     </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDControlColocacionConnectionString3 %>" SelectCommand="SELECT * FROM [Produccion] WHERE (([FechaServicio] &gt;= @FechaServicio) AND ([FechaFinal] &lt;= @FechaFinal))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextFecha1" DbType="Date" Name="FechaServicio" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextFecha2" DbType="Date" Name="FechaFinal" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                 </div>
               </div>
             </div>
           </div>
         </div>
       </div>
    </section>
</asp:Content>
