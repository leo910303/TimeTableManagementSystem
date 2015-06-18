using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TimeTableManagementSystem.Physical_Module
{
    public partial class RescheduleForm : System.Web.UI.Page
    {
        private bool toFromStatus = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Attributes.Add("placeholder", "MM/DD/YYYY");
            DropDownList1.Items.Insert(0, "--Select Category--");
            DropDownList1.Items.Insert(1, "Lecture");
            DropDownList1.Items.Insert(2, "Lab");
            DropDownList1.Items.Insert(3, "Tute");
            From.Items.Insert(0, "--Select Time--");
            From.Items.Insert(1, "8.30 AM");
            From.Items.Insert(2, "9.30 AM");
            From.Items.Insert(3, "10.30 AM");
            From.Items.Insert(4, "11.30 AM");
            From.Items.Insert(5, "12.30 PM");
            From.Items.Insert(6, "1.30 PM");
            From.Items.Insert(7, "2.30 PM");
            From.Items.Insert(8, "3.30 PM");
            From.Items.Insert(9, "4.30 PM");
            From.Items.Insert(10, "5.30 PM");
            From.Items.Insert(11, "6.30 PM");
            To.Items.Insert(0, "--Select Time--");
            To.Items.Insert(1, "8.30 AM");
            To.Items.Insert(2, "9.30 AM");
            To.Items.Insert(3, "10.30 AM");
            To.Items.Insert(4, "11.30 AM");
            To.Items.Insert(5, "12.30 PM");
            To.Items.Insert(6, "1.30 PM");
            To.Items.Insert(7, "2.30 PM");
            To.Items.Insert(8, "3.30 PM");
            To.Items.Insert(9, "4.30 PM");
            To.Items.Insert(10, "5.30 PM");
            To.Items.Insert(11, "6.30 PM");
           

            DropDownList4.Items.Insert(0, "--Select Batch--");
            DropDownList4.Items.Insert(1, "IT");
            DropDownList4.Items.Insert(2, "SE");
            DropDownList4.Items.Insert(3, "BM");
            DropDownList4.Items.Insert(4, "EE");

            DropDownList5.Items.Insert(0, "--Select Year--");
            DropDownList5.Items.Insert(1, "1st Year");
            DropDownList5.Items.Insert(2, "2nd Year");
            DropDownList5.Items.Insert(3, "3rd Year");
            DropDownList5.Items.Insert(4, "4th Year");

            DropDownList6.Items.Insert(0, "--Select Subject--");
            DropDownList6.Items.Insert(1, "IUP");
            DropDownList6.Items.Insert(2, "SEII");
            DropDownList6.Items.Insert(3, "SQA");
            DropDownList6.Items.Insert(4, "ITPM");
            TextBox2.Attributes.Add("placeholder", "Enter comments here");
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           RequestService.addRequest(DropDownList1.SelectedValue,DropDownList4.SelectedValue,DropDownList5.SelectedValue,DropDownList6.SelectedValue,
               TextBox1.Text,From.SelectedValue,To.SelectedValue,TextBox2.Text);
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void To_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (From.SelectedIndex >= To.SelectedIndex)
            {
                toFromStatus = false;

                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script src='../Student_Module/js/sweetalert.min.js'></script>");
                sb.Append("<link href='../Student_Module/css/sweetalert.css' rel='stylesheet'/>");
                sb.Append("<script type='text/javascript'>");

                sb.Append("swal('Error!', 'Please select a valid Time', 'error');");

                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            else {
                toFromStatus = true;
            }
        }
    }
}