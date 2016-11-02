<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="M_ActuElimUsuario.aspx.cs" Inherits="WebAppControl.M_ActuElimUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
   
   
     <div class="row"> 
            <div align="center">
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="BtnActualizar" runat="server" CssClass="btn btn-primary" Text="Actualizar" Width="200px" OnClick="BtnActualizar_Click"/>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                       
                    </tr>

                    <tr>
                        <td>

                            
                        </td>

                    </tr>
                </table>
             </div>
         </div>

</asp:Content>
