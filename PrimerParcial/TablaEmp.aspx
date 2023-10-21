<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TablaEmp.aspx.cs" Inherits="PrimerParcial.TablaEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 353px">
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CargaEmp.aspx">Cargar Empleado</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CargaSec.aspx">Cargar Sector</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div><br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowSorting="True" >
            <Columns>
                <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Sector" HeaderText="Sector" SortExpression="Sector" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView><br />
        <asp:Label ID="Label1" runat="server" Text="Filtrar por Sector:"></asp:Label>&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
       &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Mostrar Todos" OnClick="Button2_Click" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023conexion %>" SelectCommand="SELECT EmpleadoSectores.nombre AS Sector, Empleados.apellido, Empleados.nombre AS Nombre, Empleados.id, Empleados.idSector FROM EmpleadoSectores INNER JOIN Empleados ON EmpleadoSectores.id = Empleados.idSector" DeleteCommand="DELETE FROM [Empleados] WHERE [id] = @id" InsertCommand="INSERT INTO [Empleados] ([apellido], [nombre], [idSector]) VALUES (@apellido, @nombre, @idSector)" UpdateCommand="UPDATE [Empleados] SET [apellido] = @apellido, [nombre] = @nombre, [idSector] = @idSector WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="idSector" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="idSector" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023bd %>" SelectCommand="SELECT * FROM [EmpleadoSectores]"></asp:SqlDataSource>
    </form>
</body>
</html>
