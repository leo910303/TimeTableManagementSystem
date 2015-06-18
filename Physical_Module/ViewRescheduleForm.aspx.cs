using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimeTableManagementSystem.Physical_Module
{
    public partial class ViewRescheduleForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Request req = RequestService.getRequest();
            category.Text = req.Category;
            batch.Text = req.Batch;
            year.Text = req.Year;
            subject.Text = req.Subject;
            rescheduleDate.Text = req.RescheduleDate;
            from.Text = req.From;
            to.Text = req.To;
            comments.Text = req.Comments;
            
        }
    }
}