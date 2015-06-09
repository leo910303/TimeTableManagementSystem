using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace TimeTableManagementSystem.Student_Module
{
    /// <summary>
    /// Summary description for NoticeService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class NoticeService : System.Web.Services.WebService
    {
        private static List<Notices> noticeList = new List<Notices>();
        private static int id=2;
        static NoticeService()
        {
            noticeList.Add(new Notices(1, "<p>Lab Content : Lab 8 (Morphological Operators)</br></br>Date & Time: 24th (Tuesday), March 5.30p.m - 7.30p.m</br></br>Lab: B403</p>"));
        }

        [WebMethod]
        public Notices test()
        {
            return noticeList.Last();
        }

        [WebMethod]
        public void addNotice(String content)
        {
            noticeList.Add(new Notices(id,content));
            id++;
        }
    }
    public class Notices
    {
        private int id;
        private String content;

        public Notices( int id,String content)
        {
            this.id = id;
            this.content = content;
        }
        public int Id
        {
            set { this.id = value; }
            get { return this.id; }
        }
        public String Content
        {
            set { this.content = value; }
            get { return this.content; }
        }
    }
}
