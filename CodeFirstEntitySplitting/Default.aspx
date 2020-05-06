<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CodeFirstEntitySplitting.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
				<AlternatingRowStyle BackColor="White" />
				<Columns>
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
					<asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" SortExpression="EmployeeId" />
					<asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
					<asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
					<asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
					<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
					<asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
					<asp:BoundField DataField="Landline" HeaderText="Landline" SortExpression="Landline" />
				</Columns>
				<EditRowStyle BackColor="#2461BF" />
				<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
				<RowStyle BackColor="#EFF3FB" />
				<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
				<SortedAscendingCellStyle BackColor="#F5F7FB" />
				<SortedAscendingHeaderStyle BackColor="#6D95E1" />
				<SortedDescendingCellStyle BackColor="#E9EBEF" />
				<SortedDescendingHeaderStyle BackColor="#4870BE" />
			</asp:GridView>
			<br />
			<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" GridLines="Vertical" Height="50px" Width="125px" DefaultMode="Insert">
				<AlternatingRowStyle BackColor="#DCDCDC" />
				<EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
				<Fields>
					<asp:BoundField DataField="EmployeeId" InsertVisible="false" HeaderText="EmployeeId" SortExpression="EmployeeId" />
					<asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
					<asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
					<asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
					<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
					<asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
					<asp:BoundField DataField="Landline" HeaderText="Landline" SortExpression="Landline" />
					<asp:CommandField ShowInsertButton="True" />
				</Fields>
				<FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
				<HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
				<RowStyle BackColor="#EEEEEE" ForeColor="Black" />
			</asp:DetailsView>
			<br />
			<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="CodeFirstEntitySplitting.Model.Employee" DeleteMethod="DeleteEmployee" InsertMethod="InsertEmployee" SelectMethod="GetEmployees" TypeName="CodeFirstEntitySplitting.Model.EmployeeRepository" UpdateMethod="UpdateEmployee"></asp:ObjectDataSource>

        </div>
    </form>
</body>
</html>
