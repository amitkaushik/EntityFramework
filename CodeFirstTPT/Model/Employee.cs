﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CodeFirstTPT.Model
{
	//[Table("Employees")]
	public class Employee
	{
		public int ID{ get; set; }
		public string FirstName { get; set; }
		public string LastName { get; set; }

		public string Gender { get; set; }
	}
}