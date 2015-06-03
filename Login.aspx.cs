using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeTableManagementSystem.App_Data;
using TimeTableManagementSystem.Student_Module;
namespace TimeTableManagementSystem_Update
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack){
                regNo.Attributes.Add("placeholder", "Registration Number (ITXXXXXXXX)");
                pEmail.Attributes.Add("placeholder", "Primary Email (ITXXXXXXXX@my.sliit.lk)");
                sEmail.Attributes.Add("placeholder", "Secondary Email (Optional)");
                mobile.Attributes.Add("placeholder", "Mobile Number (07XXXXXXXX)");
                faculty.Items.Insert(0, "Select Faculty");
                faculty.Items.Insert(1, "Computing");
                faculty.Items.Insert(2, "Engineering");
                faculty.Items.Insert(3, "Business");
                faculty.SelectedIndex = 1;
                year.Items.Insert(0, "Select Year");
                year.Items.Insert(1, "Year 1");
                year.Items.Insert(2, "Year 2");
                year.Items.Insert(3, "Year 3");
                year.Items.Insert(4, "Year 4");
                year.SelectedIndex = 1;
            }
            else
            {
                regNo.ReadOnly = true;
                pEmail.ReadOnly = true;
                sEmail.ReadOnly = true;
                faculty.Enabled = false;
                year.Enabled = false;
                wd.Enabled = false;
                we.Enabled = false;
                mobile.ReadOnly = true;
                Submit_Registration.Enabled = false;
            }

           
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            //TimeTableManagementSystem.App_Data.User us = new TimeTableManagementSystem.App_Data.User();
            //User user = new User();

            //var query = from contact in user.UserName
            //            where
            //                user.UserName == "Pavithra"
            //            select contact;

            //foreach (var result in query)
            //{
            //    Response.Write(result);
            //}

            //login.DecryptPassword(Password, "", "");
            Response.Redirect("Student_Module/Main.aspx");
        }

        protected void Submit_Registration_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                WebService1.addRequest(regNo.Text, pEmail.Text, sEmail.Text, faculty.SelectedIndex, 1, year.SelectedIndex,mobile.Text);
                
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script src='Student_Module/js/sweetalert.min.js'></script>");
                sb.Append("<link href='Student_Module/css/sweetalert.css' rel='stylesheet'/>");
                sb.Append("<script type='text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("swal('Registration is Successfull!', 'Your Account will be activated within 24 hours. Check Your Email for conformation.', 'success');");
                sb.Append("};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                /*
                Response.Write(regNo.Text);
                Response.Write(pEmail.Text);
                Response.Write(sEmail.Text);
                Response.Write(faculty.SelectedValue);
                Response.Write(year.SelectedValue);
                Response.Write(wd.Checked);
                Response.Write(we.Checked);
                Response.Write(mobile.Text);*/
            }
           
        }
       
    }
}