using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TimeTableManagementSystem.Student_Module;

namespace TimeTableManagementSystem.Student_Module
{
    public partial class StudentProfile : System.Web.UI.Page
    {
        private String regNo;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                init();
            }
            
           
        }
        private void init()
        {
            Student currentStudent = WebService1.getCurrentStudent();
            Label2.Text = currentStudent.Reg_No;
            regNo = currentStudent.Reg_No;
            Label4.Text = currentStudent.Primary_Email;
            Label9.Text = currentStudent.Secondary_Email;
            switch (currentStudent.Faculty)
            {
                case 1: Label12.Text = "Computing";
                    break;
                case 2: Label12.Text = "Engineering";
                    break;
                case 3: Label12.Text = "Business";
                    break;
            }
            switch (currentStudent.Group)
            {
                case 1: Label15.Text = "Weekday";
                    break;
                case 2: Label15.Text = "Weekend";
                    break;
            }
            switch (currentStudent.Year)
            {
                case 1: Label18.Text = "Year 1";
                    break;
                case 2: Label18.Text = "Year 2";
                    break;
                case 3: Label18.Text = "Year 3";
                    break;
                case 4: Label18.Text = "Year 4";
                    break;
            }
            Label21.Text = currentStudent.Mobile;
            sEmail.Text = currentStudent.Secondary_Email;
            mobile.Text = currentStudent.Mobile;

            year.Items.Insert(0, "Year 1");
            year.Items.Insert(1, "Year 2");
            year.Items.Insert(2, "Year 3");
            year.Items.Insert(3, "Year 4");

            year.SelectedIndex = currentStudent.Year-1;

            switch(currentStudent.Group){
                case 1:wd.Checked=true;
                    break;
                case 2:we.Checked=true;
                    break;
            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int group=0;
                if(wd.Checked){
                    group=1;
                }
                else if(we.Checked){
                    group=2;
                }
                WebService1.updateCurrentStudent(Label2.Text, sEmail.Text, group, year.SelectedIndex + 1, mobile.Text);
                init();
            }
        }
    }
}