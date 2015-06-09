using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using TimeTableManagementSystem.Physical_Module;
using System.Web.UI.WebControls;

namespace TimeTableManagementSystem.Physical_Module
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //your code here 
                DropDownList1.Items.Insert(0, new ListItem("--Select Resource--", "-1"));
                DropDownList1.Items.Insert(1, "Lecture Hall");
                DropDownList1.Items.Insert(2, "Lab");
                TextBox1.Attributes.Add("placeholder", "Enter Name");


                DropDownList3.Items.Insert(0, "Select Location");
                DropDownList3.Items.Insert(1, "A-Block");
                DropDownList3.Items.Insert(2, "B-Block");
                DropDownList3.Items.Insert(3, "D-Block");
                DropDownList3.Items.Insert(4, "Engineering");

                DropDownList2.Items.Insert(0, "Select Floor");
                DropDownList2.Items.Insert(1, "1st Floor");
                DropDownList2.Items.Insert(2, "2nd Floor");
                DropDownList2.Items.Insert(3, "3rd Floor");
                DropDownList2.Items.Insert(4, "4th Floor");

                TextBox2.Attributes.Add("placeholder", "Enter Capacity");
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
                if (Page.IsValid)
                {
                    PhysicalResourceService.addResources(DropDownList1.SelectedIndex, TextBox1.Text, DropDownList3.SelectedIndex, DropDownList2.SelectedIndex, TextBox2.Text);

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    sb.Append("<script src='../Student_Module/js/sweetalert.min.js'></script>");
                    sb.Append("<link href='../Student_Module/css/sweetalert.css' rel='stylesheet'/>");
                    sb.Append("<script type='text/javascript'>");
                    sb.Append("window.onload=function(){");
                    sb.Append("swal('Resource Added Successfully!', '', 'success');");
                    sb.Append("};");
                    sb.Append("</script>");
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                }
            
        }

        //private void cmbSave_Click(object sender, EventArgs e)
        //{
        //    if (IsFilled(txtApplicationNumber.Text))
        //    {
        //        if (IsFilled(txtEmployeeID.Text))
        //        {
        //            if (IsFilled(txtNIC.Text))
        //                Save(sender, e);
        //        }
        //    }
        //}
    }
}