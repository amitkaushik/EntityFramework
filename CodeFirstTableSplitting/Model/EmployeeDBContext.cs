using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CodeFirstTableSplitting.Model
{
	public class EmployeeDBContext:DbContext
	{
		public DbSet<Employee> Employees { get; set; }

		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
			modelBuilder.Entity<Employee>()
				.HasKey(p => p.EmployeeID)
				.ToTable("Employees");

			modelBuilder.Entity<EmployeeContactDetail>()
				.HasKey(p => p.EmployeeID)
				.ToTable("Employees");

			modelBuilder.Entity<Employee>()
				.HasRequired(p => p.EmployeeContactDetail)
				.WithRequiredPrincipal(c => c.Employee);

			base.OnModelCreating(modelBuilder);
		}
	}
}