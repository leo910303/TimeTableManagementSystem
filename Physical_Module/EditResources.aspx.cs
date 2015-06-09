using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTableManagementSystem.Physical_Module
{
    public partial class EditResources : System.Web.UI.Page
    {
        public String prop;
        protected void Page_Load(object sender, EventArgs e)
        {
            prop = "Properties";
            resource.Items.Insert(0, new ListItem("--Select Resource--", "-1"));
            resource.Items.Insert(1, "Lecture Hall");
            resource.Items.Insert(2, "Lab");
            resource.SelectedIndex = Convert.ToInt32(Request.QueryString["Res"]);
            
            name.Text=Request.QueryString["name"];

            location.Items.Insert(0, "Select Location");
            location.Items.Insert(1, "A-Block");
            location.Items.Insert(2, "B-Block");
            location.Items.Insert(3, "D-Block");
            location.Items.Insert(4, "Engineering");
            location.SelectedIndex = Convert.ToInt32(Request.QueryString["location"]);

            floor.Items.Insert(0, "Select Floor");
            floor.Items.Insert(1, "1st Floor");
            floor.Items.Insert(2, "2nd Floor");
            floor.Items.Insert(3, "3rd Floor");
            floor.Items.Insert(4, "4th Floor");
            floor.SelectedIndex = Convert.ToInt32(Request.QueryString["floor"]);

            capacity.Text = Request.QueryString["capacity"];

            

            
        }
    }
}