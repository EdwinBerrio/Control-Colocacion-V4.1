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
            <div class="table-responsive">
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
            </div> 
        </div> 
    </section>

</asp:Content>

