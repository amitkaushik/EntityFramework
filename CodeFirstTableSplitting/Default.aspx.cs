using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeFirstTableSplitting.Model;

namespace ModelFirstTableSplitting
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            Button1_Click(sender, e);

        }

		protected void Button1_Click(object sender, EventArgs e)
		{
            if (CheckBox1.Checked)
            {
                GridView1.DataSource = GetEmployeeIncludingContactDetails();
            }
            else
            {
                GridView1.DataSource = GetEmployeeWithoutContactDetails();
            }
            GridView1.DataBind();
		}

		private DataTable GetEmployeeIncludingContactDetails()
		{
            EmployeeDBContext employeeDBCondext = new EmployeeDBContext();
			List<Employee> employees= employeeDBCondext.Employees.Include("EmployeeContactDetail").ToList();
            DataTable dataTable = new DataTable();
            DataColumn[] columns = { new DataColumn("EmployeeID"),
                                 new DataColumn("FirstName"),
                                 new DataColumn("LastName"),
                                 new DataColumn("Gender"),
                                 new DataColumn("Email"),
                                 new DataColumn("Mobile"),
                                 new DataColumn("LandLine") };
            dataTable.Columns.AddRange(columns);

            foreach (Employee employee in employees)
            {
                DataRow dr = dataTable.NewRow();
                dr["EmployeeID"] = employee.EmployeeID;
                dr["FirstName"] = employee.FirstName;
                dr["LastName"] = employee.LastName;
                dr["Gender"] = employee.Gender;
                dr["Email"] = employee.EmployeeContactDetail.Email;
                dr["Mobile"] = employee.EmployeeContactDetail.Mobile;
                dr["LandLine"] = employee.EmployeeContactDetail.LandLine;

                dataTable.Rows.Add(dr);
            }

            return dataTable;

        }
        private DataTable GetEmployeeWithoutContactDetails()
        {
            EmployeeDBContext employeeDBCondext = new EmployeeDBContext();
            List<Employee> employees = employeeDBCondext.Employees.ToList();
            DataTable dataTable = new DataTable();
            DataColumn[] columns = { new DataColumn("EmployeeID"),
                                 new DataColumn("FirstName"),
                                 new DataColumn("LastName"),
                                 new DataColumn("Gender")
                                  };
            dataTable.Columns.AddRange(columns);

            foreach (Employee employee in employees)
            {
                DataRow dr = dataTable.NewRow();
                dr["EmployeeID"] = employee.EmployeeID;
                dr["FirstName"] = employee.FirstName;
                dr["LastName"] = employee.LastName;
                dr["Gender"] = employee.Gender;               

                dataTable.Rows.Add(dr);
            }

            return dataTable;

        }
    }
}