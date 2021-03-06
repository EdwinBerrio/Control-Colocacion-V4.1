﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="M_UsuariosRegistrados.aspx.cs" Inherits="WebAppControl.M_UsuariosRegistrados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="content-header">
        <div class="row">
            <h1 style="text-align:center">USUARIOS REGISTRADOS</h1>
        </div>
    </section>
    <!-- EJEMPLO DE GridView -->
    <section>
        <div class="col-md-12"><!--Damos la medidos a los formularios -->
            <div class="box box-danger"><!--Definimos que es una caja y damoscolor-->
              <div class="box-body"><!--Definimos el cuerpo-->
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
                            <asp:BoundField DataField="DescriccionCargo" HeaderText="Cargo " />
                            <asp:BoundField DataField="NumeroTelefono" HeaderText="Telefono" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Descriccion" HeaderText="Planta" />
                            <asp:BoundField DataField="UserName" HeaderText="Usuario" />
                            <asp:BoundField DataField="Estado" HeaderText="Estado" />
                    
                        </Columns>
                    </asp:GridView>
                 </div>
               </div>
             </div>
           </div>
    </section>

</asp:Content>

