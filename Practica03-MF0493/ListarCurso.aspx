<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListarCurso.aspx.cs" Inherits="Practica03_MF0493.ListarCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="container body-content">
            <h1>Listado de Cursos</h1> 
            <div class="bg-success pull-right"> Total de cursos: <asp:Label ID="contador" runat="server" Text="Label"> </asp:Label> <span class="glyphicon glyphicon-fire"></span> </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView2" runat="server" CssClass="table table-striped" CellPadding="4"
                         EmptyDataText="No hay alumnos registrados" BorderStyle="None" BorderWidth="0px" 
                         GridLines="None" ForeColor="#6E6E6E" OnRowDeleting="GridView1_RowDeleting" 
                         AutoGenerateColumns="False" AutoGenerateDeleteButton="True">
                        <Columns>
                             <asp:BoundField DataField="Title" HeaderText="Nombre del curso" >
                                <HeaderStyle Width="20%" CssClass="text-center" />
                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Credits" HeaderText="Creditos del curso">
                                <HeaderStyle Width="20%"  CssClass="text-center"/>
                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="CourseID" HeaderText="Id del curso" >
                                <HeaderStyle Width="20%"  CssClass="text-center"/>
                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="DepartmentID" HeaderText="Departamento del curso" >
                                <HeaderStyle Width="20%"  CssClass="text-center" />
                                <ItemStyle CssClass="text-center"></ItemStyle>
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle Font-Bold="True" Font-Italic="True" />
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</asp:Content>

