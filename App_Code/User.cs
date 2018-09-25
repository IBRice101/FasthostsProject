using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// A class to hold information about logged in users
/// </summary>
public class User
{
    public string UserName { get; set; }
    public string FirstName { get; set; }
    public string Surname { get; set; }
    public int UserID { get; set; }
}