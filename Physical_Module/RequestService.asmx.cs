using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace TimeTableManagementSystem.Physical_Module
{
    /// <summary>
    /// Summary description for RequestService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class RequestService : System.Web.Services.WebService
    {
        public static List<Request> requestsList=new List<Request>();
        public static int count=1;
        [WebMethod]
        public static void addRequest(String category,String batch,String year,String subject,String rescheduleDate,String from,String to,String comments)
        {
            requestsList.Add(new Request(count,category,batch,year,subject,rescheduleDate,from,to,comments));
        }

        [WebMethod]
        public static Request getRequest()
        {
            return requestsList.Last();
        }
    }

    public class Request
    {
        private int id;
        private String category;
        private String batch;
        private String year;
        private String subject;
        private String rescheduleDate;
        private String from;
        private String to;
        private String comments;

        public Request(int id, String category, String batch, String year, String subject, String rescheduleDate, String from, String to, String comments)
        {
            this.id = id;
            this.category = category;
            this.batch = batch;
            this.year = year;
            this.subject = subject;
            this.rescheduleDate = rescheduleDate;
            this.from = from;
            this.to = to;
            this.comments = comments;
        }

        public String Category
        {

            set { this.category = value; }
            get { return this.category; }

        }

        public String Batch
        {

            set { this.batch = value; }
            get { return this.batch; }

        }

        public String Year
        {

            set { this.year = value; }
            get { return this.year; }

        }
        public String Subject
        {

            set { this.subject = value; }
            get { return this.subject; }

        }
        public String RescheduleDate
        {

            set { this.rescheduleDate = value; }
            get { return this.rescheduleDate; }

        }

        public String From
        {

            set { this.from = value; }
            get { return this.from; }

        }
        public String To
        {

            set { this.to = value; }
            get { return this.to; }

        }

        public String Comments
        {

            set { this.comments = value; }
            get { return this.comments; }

        }
    }
}
