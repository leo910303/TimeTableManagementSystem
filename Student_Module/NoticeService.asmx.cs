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
        private static List<Votes> votesList = new List<Votes>();
        private static int id=2;
        
        static NoticeService()
        {
            noticeList.Add(new Notices(1, "<p>Lab Content : Lab 8 (Morphological Operators)</br></br>Date & Time: 24th (Tuesday), March 5.30p.m - 7.30p.m</br></br>Lab: B403</p>"));
            votesList.Add(new Votes(1,0,0,0));
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
            votesList.Add(new Votes(id,0,0,0));
            id++;
        }

        [WebMethod]
        public void addVotes(int id, String vote)
        {
            Votes currentVote = votesList.Last();

            switch (vote)
            {
                case "agree": currentVote.AgreeCount += 1;
                    break;
               case "disagree": currentVote.DisagreeCount += 1;
                    break;
              case "tentative": currentVote.TentativeCount += 1;
                    break;
            }
            votesList.Add(currentVote);
           
        }

        [WebMethod]
        public Votes getVotes()
        {
            return votesList.Last();
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

    public class Votes
    {
        private int id;
        private int agreeCount;
        private int disagreeCount;
        private int tentativeCount;

        public Votes(int id, int agreeCount, int disagreeCount, int tentativeCount)
        {

        }
        public int Id
        {
            set { this.id = value; }
            get { return this.id; }
        }
        public int AgreeCount
        {
            set { this.agreeCount = value; }
            get { return this.agreeCount; }
        }
        public int DisagreeCount
        {
            set { this.disagreeCount = value; }
            get { return this.disagreeCount; }
        }
        public int TentativeCount
        {
            set { this.tentativeCount = value; }
            get { return this.tentativeCount; }
        }
    }
}
