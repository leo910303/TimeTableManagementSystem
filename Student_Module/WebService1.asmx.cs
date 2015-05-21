using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

namespace TimeTableManagementSystem.Student_Module
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public List<Object> HelloWorld()
        {
            //var javaScriptSerializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            //String jsonString = javaScriptSerializer.Serialize(new test("Sachith","Bentota"));
            //return jsonString;
            List<Object> t1 = new List<Object>();
            t1.Add(new test("IT12094714","IT12094714@my.sliit.lk","wadsachi@gmail.com",1,1,4,"0758074724"));
            t1.Add(new test("IT12094712", "IT12094712@my.sliit.lk", "yosh@gmail.com", 2, 2,3,"0779845132"));

           // return new test("Sachith", 24,6,"Bentota",false);

            return t1;
        }
    }
    public class test
    {
        private String reg_No;
        private String primary_Email;
        private String secondary_Email;
        private int faculty;
        private int group;
        private int year;
        private String mobile;

        public test(String reg_No, String primary_Email, String secondary_Email, int faculty, int group,int year,String mobile)
        {
            this.reg_No = reg_No;
            this.primary_Email = primary_Email;
            this.secondary_Email = secondary_Email;
            this.faculty = faculty;
            this.group = group;
            this.year = year;
            this.mobile = mobile;
        }
        public String Reg_No
        {
            set { this.reg_No = value; }
            get { return this.reg_No; }
        }
        public String Primary_Email
        {
            set { this.primary_Email = value; }
            get { return this.primary_Email; }
        }
        public String Secondary_Email
        {
            set { this.secondary_Email = value; }
            get { return this.secondary_Email; }
        }
        public int Faculty
        {
            set { this.faculty = value; }
            get { return this.faculty; }
        }
        public int Group
        {
            set { this.group = value; }
            get { return this.group; }
        }
        public int Year
        {
            set { this.year = value; }
            get { return this.year; }
        }
        public String Mobile
        {
            set { this.mobile = value; }
            get { return this.mobile; }
        }
    }
}
