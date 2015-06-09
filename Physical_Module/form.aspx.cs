using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTableManagementSystem.Physical_Module
{
    public partial class form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Attributes.Add("placeholder", "MM/DD/YYYY");
            DropDownList1.Items.Insert(0,"--Select Category--");
            DropDownList1.Items.Insert(1,"Lecture");
            DropDownList1.Items.Insert(2,"Lab");
            DropDownList1.Items.Insert(3,"Tute");
            DropDownList2.Items.Insert(0,"--Select Time--");
            DropDownList2.Items.Insert(1,"8.30 AM");
            DropDownList2.Items.Insert(2,"9.30 AM");
            DropDownList2.Items.Insert(3,"10.30 AM");
            DropDownList2.Items.Insert(4,"11.30 AM");
            DropDownList2.Items.Insert(5,"12.30 PM");
            DropDownList2.Items.Insert(6,"1.30 PM");
            DropDownList2.Items.Insert(7, "2.30 PM");
            DropDownList2.Items.Insert(8, "3.30 PM");
            DropDownList2.Items.Insert(9, "4.30 PM");
            DropDownList2.Items.Insert(10, "5.30 PM");
            DropDownList2.Items.Insert(11, "6.30 PM");
            DropDownList3.Items.Insert(0, "--Select Time--");
            DropDownList3.Items.Insert(1, "8.30 AM");
            DropDownList3.Items.Insert(2, "9.30 AM");
            DropDownList3.Items.Insert(3, "10.30 AM");
            DropDownList3.Items.Insert(4, "11.30 AM");
            DropDownList3.Items.Insert(5, "12.30 PM");
            DropDownList3.Items.Insert(6, "1.30 PM");
            DropDownList3.Items.Insert(7, "2.30 PM");
            DropDownList3.Items.Insert(8, "3.30 PM");
            DropDownList3.Items.Insert(9, "4.30 PM");
            DropDownList3.Items.Insert(10, "5.30 PM");
            DropDownList3.Items.Insert(11, "6.30 PM");
            
            

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
        }
    }
}