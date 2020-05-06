using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CodeFirstSelfRefAssociation.Model
{
	public class EmployeeDBContext:DbContext
	{
		public DbSet<Employee> Employees { get; set; }

		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
			modelBuilder.Entity<Employee>()
				.HasOptional(e => e.Manager)
				.WithMany()
				.HasForeignKey(e => e.ManagerID);

			base.OnModelCreating(modelBuilder);
		}
	}
}