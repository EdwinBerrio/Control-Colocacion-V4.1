<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="M_UsuariosRegistrados.aspx.cs" Inherits="WebAppControl.M_UsuariosRegistrados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="content-header">
        <div class="row">
            <h1 style="text-align:center">USUARIOS REGISTRADOS</h1>
        </div>
    </section>
    
    <section class="content">
        <div class="row">
            <!--Datatable-->
            <!--<div class="table-responsive">
                <table id="TablaUsuarios" class="table table-bordred table-striped">
                    <thead>
                        <th><input type="checkbox" id="checkall" /></th>
                        <th>N. Identificacion</th>
                        <th>Apellidos</th>
                        <th>Nombres</th>
                        <th>Fecha Nacimiento</th>
                        <th>Cargo</th>
                        <th>Telefono</th>
                        <th>Email</th>
                        <th>Editar</th>
                        <th>Eliminar</th>
                    </thead>
                </table>
            </div> -->
            <div class="table-responsive">
            <asp:GridView align="center" ID="GridView11" runat="server" AutoGenerateColumns="False" ClientIDMode="Static" CellPadding="10" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" Height="175px" Width="700px" CellSpacing="10" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="IdCodigo" HeaderText="Identificacion" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" />
                <asp:BoundField DataField="Nombres" HeaderText="Nombres" />
                <asp:BoundField DataField="FechaNacimiento" HeaderText="Fecha Nacimiento" />
                <asp:BoundField DataField="CargoEmpleado" HeaderText="Cargo " />
                <asp:BoundField DataField="NumeroTelefono" HeaderText="Telefono" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" /> 
        </asp:GridView>
            </div>
        </div> 
    </section>
    <!-- EJEMPLO DE GridView -->
    <section>
        <div class="scrolling-table-container">
            <asp:GridView ID="GridView1" ClientIDMode="Static" runat="server" 
                  AutoGenerateColumns="False"  
                  CssClass="table table-striped table-hover table-condensed small-top-margin">
                <Columns>
                    <asp:BoundField DataField="IdCodigo" HeaderText="Identificacion" >
                        <HeaderStyle Width="15%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" />
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" />
                    <asp:BoundField DataField="FechaNacimiento" HeaderText="Fecha Nacimiento" />
                    <asp:BoundField DataField="CargoEmpleado" HeaderText="Cargo " />
                    <asp:BoundField DataField="NumeroTelefono" HeaderText="Telefono" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                </Columns>
            </asp:GridView>
         </div>
    </section>

</asp:Content>

