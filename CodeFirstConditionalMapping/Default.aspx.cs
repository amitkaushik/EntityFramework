using CodeFirstConditionalMapping.Model;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeFirstConditionalMapping
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			EmployeeDBContext employeeDBContext = new EmployeeDBContext();

			GridView1.DataSource = employeeDBContext.Employees.ToList();
			GridView1.DataBind();
		}
	}
}