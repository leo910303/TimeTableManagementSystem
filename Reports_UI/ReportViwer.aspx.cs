using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


namespace TimeTableManagementSystem
{
    public partial class ReportViwer : System.Web.UI.Page
    {

        private static ReportDocument report;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void CrystalReportViewer1_Init(object sender, EventArgs e)
        {
            CrystalReportViewer1.PrintMode = CrystalDecisions.Web.PrintMode.ActiveX;
            ReportDocument rpt = (ReportClass)Session["Rpt"];
            report = rpt;
            CrystalReportViewer1.ReportSource = rpt;
        }
    }
}