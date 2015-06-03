using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTableManagementSystem.Physical_Module
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Items.Insert(0, "Select Resource");
            DropDownList1.Items.Insert(1,"Lecture Hall");
            DropDownList1.Items.Insert(2, "Lab");
            TextBox1.Attributes.Add("placeholder","Enter Name");

            DropDownList3.Items.Insert(0,"Select Location");
            DropDownList3.Items.Insert(1, "A-Block");
            DropDownList3.Items.Insert(2, "B-Block");
            DropDownList3.Items.Insert(3, "D-Block");
            DropDownList3.Items.Insert(4, "Engineering");

            DropDownList2.Items.Insert(0,"Select Floor");
            DropDownList2.Items.Insert(1,"1st Floor");
            DropDownList2.Items.Insert(2, "2nd Floor");
            DropDownList2.Items.Insert(3, "3rd Floor");
            DropDownList2.Items.Insert(4, "4th Floor");

            TextBox2.Attributes.Add("placeholder","Enter Capacity");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

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