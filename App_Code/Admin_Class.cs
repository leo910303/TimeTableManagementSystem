using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TimeTableManagementSystem.App_Data;



namespace TimeTableManagementSystem.App_Code
{
    public class Admin_Class
    {
        TimeTableManagementSystem.App_Data.User admin = new TimeTableManagementSystem.App_Data.User();
        User user = new User();
        LoginControl.Encryption login = new LoginControl.Encryption();
                
        public string Authentication(string Usrname, string Password)
        {
            try
            {
                return "";
            }
            catch
            {
                return "Not";
            }
        }
    }
}