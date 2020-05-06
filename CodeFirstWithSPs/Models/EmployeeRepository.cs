using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace CodeFirstWithSPs.Models
{
	public class EmployeeRepository
	{
		public 	EmployeeDBContext employeeDBContext = new EmployeeDBContext();		

		public List<Employee> GetEmployees()
		{
			return employeeDBContext.Employees.ToList();
		}
		public void InsertEmployee(Employee employee)
		{
			employeeDBContext.Employees.Add(employee);
			employeeDBContext.SaveChanges();
		}
		public void UpdateEmployee(Employee employee)
		{
			Employee empToUpdate =  employeeDBContext.Employees.FirstOrDefault(x=>x.ID == employee.ID);

			empToUpdate.Name = employee.Name;
			empToUpdate.Gender = employee.Gender;
			empToUpdate.Salary = employee.Salary;

			employeeDBContext.SaveChanges();
		}

		public void DeleteEmployee(Employee employee)
		{
			Employee empToDelete = employeeDBContext.Employees.FirstOrDefault(x => x.ID == employee.ID);
			employeeDBContext.Employees.Remove(empToDelete);
			employeeDBContext.SaveChanges();
		}

	}
}