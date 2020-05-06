using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CodeFirstConditionalMapping.Model
{
	public class EmployeeDBContext:DbContext
	{
        public DbSet<Employee> Employees { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Employee>()
                .Map(m => m.Requires("IsTerminated")
                .HasValue(false))
                .Ignore(m => m.IsTerminated);

            base.OnModelCreating(modelBuilder);
        }
    }
}