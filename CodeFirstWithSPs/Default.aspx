<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CodeFirstWithSPs.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 40px">

        	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
				<AlternatingRowStyle BackColor="White" />
				<Columns>
					<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
					<asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
					<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
					<asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
					<asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
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
			<br />
			<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="ObjectDataSource1" GridLines="Horizontal" Height="50px" Width="125px" DefaultMode="Insert">
				<AlternatingRowStyle BackColor="#F7F7F7" />
				<EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
				<Fields>
					<asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="false" SortExpression="ID"  />
					<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
					<asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
					<asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
					<asp:CommandField ShowInsertButton="True" />
				</Fields>
				<FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
				<HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
				<PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
				<RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
			</asp:DetailsView>
			<br />
			<br />
			<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="CodeFirstWithSPs.Models.Employee" DeleteMethod="DeleteEmployee" InsertMethod="InsertEmployee" SelectMethod="GetEmployees" TypeName="CodeFirstWithSPs.Models.EmployeeRepository" UpdateMethod="UpdateEmployee"></asp:ObjectDataSource>

        </div>
    </form>
</body>
</html>
