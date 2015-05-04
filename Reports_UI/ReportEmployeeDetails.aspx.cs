using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace TimeTableManagementSystem.Reports_UI
{
    public partial class ReportEmployeeDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            int LecturerSerial = Convert.ToInt32(drpStaffId.SelectedValue);

            //rptLecturerDetailsBySerial rpt = new rptLecturerDetailsBySerial();
            //ReportLectureDetailsData reportEmployeeData = new ReportLectureDetailsData();
            //DataSet ds = reportEmployeeData.GetReportData(LecturerSerial);

            //if (ds.Tables[0].Rows.Count < 1)
            //    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('No records to display');", true);
            //else
            //{
            //    rpt.SetDataSource(ds);
            //    Session["Rpt"] = rpt;
            //    ClientScript.RegisterStartupScript(this.GetType(), "open", "openPrintPage();", true);
            //}
        }
    }
}