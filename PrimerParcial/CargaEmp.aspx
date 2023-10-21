<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargaEmp.aspx.cs" Inherits="PrimerParcial.Empleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 356px">
            Nombre&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="166px" ></asp:TextBox><br /><br />

            Apellido&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" style="margin-bottom: 0px" Width="168px"></asp:TextBox>
            <br /><br />
            Sector&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id" Height="22px" Width="175px">
            </asp:DropDownList><br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Volver" />
            <br />

            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023bd %>" DeleteCommand="DELETE FROM [Empleados] WHERE [id] = @id" InsertCommand="INSERT INTO [Empleados] ([apellido], [nombre], [idSector]) VALUES (@apellido, @nombre, @idSector)" SelectCommand="SELECT * FROM [Empleados]" UpdateCommand="UPDATE [Empleados] SET [apellido] = @apellido, [nombre] = @nombre, [idSector] = @idSector WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="apellido" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="nombre" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="idSector" PropertyName="SelectedValue" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="idSector" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023conexion %>" SelectCommand="SELECT * FROM [EmpleadoSectores]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
