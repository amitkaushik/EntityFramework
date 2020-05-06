<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CodeFirstTPT.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>

			<asp:RadioButtonList ID="RadioButtonList1" runat="server"
				AutoPostBack="True"
				OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
				<asp:ListItem Text="All Employees" Value="All"></asp:ListItem>


				<asp:ListItem Text="Load Permanent Employees" Value="Permanent">
				</asp:ListItem>
				<asp:ListItem Text="Load Contract Employees" Value="Contract">
				</asp:ListItem>
			</asp:RadioButtonList>
			<br />
			<br />
			<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
				<AlternatingRowStyle BackColor="White" />
				<FooterStyle BackColor="#CCCC99" />
				<HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
				<RowStyle BackColor="#F7F7DE" />
				<SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
				<SortedAscendingCellStyle BackColor="#FBFBF2" />
				<SortedAscendingHeaderStyle BackColor="#848384" />
				<SortedDescendingCellStyle BackColor="#EAEAD3" />
				<SortedDescendingHeaderStyle BackColor="#575357" />
			</asp:GridView>

		</div>
	</form>
</body>
</html>
