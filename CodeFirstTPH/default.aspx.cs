using CodeFirstTPH.Model;
//using ModelFirstTPH.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModelFirstTPH
{
	public partial class _default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
		{
			EmployeeDBContext employeeModel = new EmployeeDBContext();

			switch (RadioButtonList1.SelectedValue)
			{
				case "Permanent":
					GridView1.DataSource = employeeModel.Employees.OfType<PermanentEmployee>().ToList();
					break;
				case "Contract":
					GridView1.DataSource = employeeModel.Employees.OfType<ContractEmployee>().ToList();
					break;
				default:
                    //GridView1.DataSource = employeeModel.Employees.ToList();
                    GridView1.DataSource = ConvertEmployeesForDisplay(
                       employeeModel.Employees.ToList());
                    break;
			}
			GridView1.DataBind();

		}

        private DataTable ConvertEmployeesForDisplay(List<Employee> employees)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("FirstName");
            dt.Columns.Add("LastName");
            dt.Columns.Add("Gender");
            dt.Columns.Add("AnuualSalary");
            dt.Columns.Add("HourlyPay");
            dt.Columns.Add("HoursWorked");
            dt.Columns.Add("Type");

            foreach (Employee employee in employees)
            {
                DataRow dr = dt.NewRow();
                dr["ID"] = employee.ID;
                dr["FirstName"] = employee.FirstName;
                dr["LastName"] = employee.LastName;
                dr["Gender"] = employee.Gender;

                if (employee is PermanentEmployee)
                {
                    dr["AnuualSalary"] = ((PermanentEmployee)employee).AnnualSalary;
                    dr["Type"] = "Permanent";
                }
                else
                {
                    dr["HourlyPay"] = ((ContractEmployee)employee).HourlyPay;
                    dr["HoursWorked"] = ((ContractEmployee)employee).HoursWorked;
                    dr["Type"] = "Contract";
                }
                dt.Rows.Add(dr);
            }

            return dt;
        }
    }
}

	