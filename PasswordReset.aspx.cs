using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTableManagementSystem
{
    public partial class PasswordReset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnBack.Visible = false;
            lblMsg.Visible = false;
 
            test.Visible = true;
            btnResetPwd.Visible = true;
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtEmail.Text))
            {
                txtEmail.Visible = false;
                btnResetPwd.Visible = false;
                test.Visible = false;

                btnBack.Visible = true;
                lblMsg.Visible = true;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "alert('Please Enter Email Address')", true);
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}