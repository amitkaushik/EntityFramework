using CodeFirstSelfRefAssociation.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CodeFirstSelfRefAssociation
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			EmployeeDBContext employeeDBContext = new EmployeeDBContext();

			GridView1.DataSource = employeeDBContext.Employees.Select(emp => new
			{
				EmployeeName = emp.EmployeeName,
				ManagerName = emp.Manager == null ?
				   "Super Boss" : emp.Manager.EmployeeName
			}).ToList();
			GridView1.DataBind();
		}
	}
}