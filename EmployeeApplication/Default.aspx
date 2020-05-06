<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeApplication.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family:Arial;">
        	<asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
				<AlternatingRowStyle BackColor="White" />
				<Columns>
					<asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
					<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
					<asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
					<asp:TemplateField HeaderText="Employees">
						<ItemTemplate>
							<asp:GridView ID="GridView2" runat="server" DataSource='<%# Eval("Employees") %>'>
							</asp:GridView>
						</ItemTemplate>
					</asp:TemplateField>
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
			<asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="EmployeeApplication.EmployeeContext" EntityTypeName="" TableName="Departments">
			</asp:LinqDataSource>
			<br />
        </div>
    </form>
</body>
</html>
