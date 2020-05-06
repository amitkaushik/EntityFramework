using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CodeFirstTPH.Model
{
	public class EmployeeDBContext:DbContext
	{
		public DbSet<Employee> Employees { get; set; }
	}
}