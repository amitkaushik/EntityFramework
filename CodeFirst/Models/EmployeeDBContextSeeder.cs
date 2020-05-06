using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CodeFirst.Models
{
	public class EmployeeDBContextSeeder: DropCreateDatabaseIfModelChanges<CodeFirst.Models.EmployeeDBContext>
	{
		protected override void Seed(EmployeeDBContext context)
		{
			Department department = new Department() {
			
				Name="IT", Location="New York",
				Employees = new List<Employee>()
				{
					new Employee(){ 
					FirstName="Mark",LastName="Hastings", Gender="Male", Salary=60000, JobTitle="Developer"
					}
				}
			};

			context.Departments.Add(department);
			base.Seed(context);
		}

	}
}