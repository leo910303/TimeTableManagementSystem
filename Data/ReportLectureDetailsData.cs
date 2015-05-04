using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Reports;


namespace Data
{
    public class ReportLectureDetailsData
    {
        public DataSet GetReportData(int lectureSerial)
        {
            ReportDataSet rptds = new ReportDataSet();
            ReportDataSet.ReportDataTableDataTable rpttable = rptds.ReportDataTable;
            ReportDataSet.ReportDataTableRow rw;

            using(TTMS_DBEntities db = new TTMS_DBEntities())
            {
                var empDetail = db.rptGetLecturerDetailsByLecturerSerial(lectureSerial).ToList();

                foreach(var e in empDetail)
                {
                    rw = rpttable.NewReportDataTableRow();
                    rw.S1 = e.StaffId;
                    rw.S2 = e.Designation;
                    rw.S3 = e.FullName;
                    rw.S4 = e.Address;
                    rw.S5 = e.Email;
                    rw.S6 = e.MobileNo;
                    rw.DT1 = Convert.ToDateTime(e.JoinDate);
                 
                    rpttable.AddReportDataTableRow(rw);
                }
            }

            return rptds;
        }
    }
}
