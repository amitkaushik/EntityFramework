using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CodeFirstEntitySplitting.Model
{
	public class EmployeeDBContext : DbContext
	{
		public DbSet<Employee> Employees { get; set; }

		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
			//Splitting tables.
			modelBuilder.Entity<Employee>().
				Map(map =>
				{
					map.Properties(p => new { p.EmployeeId, p.FirstName, p.LastName, p.Gender });
					map.ToTable("Employee");
				}).Map(map =>
					{
						map.Properties(p => new { p.EmployeeId, p.Email, p.Mobile, p.Landline });
						map.ToTable("EmployeeContactDetails");
					});


			base.OnModelCreating(modelBuilder);
		}
	}
}