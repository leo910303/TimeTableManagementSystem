using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeTableManagementSystem.App_Data;
namespace TimeTableManagementSystem_Update
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            regNo.Attributes.Add("placeholder", "Registration Number (ITXXXXXXXX)");
            pEmail.Attributes.Add("placeholder", "Primary Email (ITXXXXXXXX@my.sliit.lk)");
            sEmail.Attributes.Add("placeholder", "Secondary Email (Optional)");
            mobile.Attributes.Add("placeholder", "Mobile Number (07XXXXXXXX)");
            faculty.Items.Insert(0, "Computing");
            faculty.Items.Insert(1, "Engineering");
            faculty.Items.Insert(2, "Business");
            year.Items.Insert(0, "Year 1");
            year.Items.Insert(1, "Year 2");
            year.Items.Insert(2, "Year 3");
            year.Items.Insert(3, "Year 4");
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            TimeTableManagementSystem.App_Data.User us = new TimeTableManagementSystem.App_Data.User();
            User user = new User();

            var query = from contact in user.UserName
                        where
                            user.UserName == "Pavithra"
                        select contact;

            foreach (var result in query)
            {
                Response.Write(result);
            }

            //login.DecryptPassword(Password, "", "");

        }

    }
}