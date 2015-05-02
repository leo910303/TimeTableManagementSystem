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
                    rw.S1 = e.FName;
                    rw.S2 = e.LName;
                    rw.S3 = e.Title;
                    rw.S4 = e.Designation;
                    rw.S5 = e.Address;
                    rw.S6 = e.Email;
                    rw.S7 = e.MobileNo;
                    //rw.S8 = e.
                    rpttable.AddReportDataTableRow(rw);
                }
            }

            return rptds;
        }
    }
}
