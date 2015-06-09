using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Net.Mail;
using System.Net;

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
        public static List<Student> studentList = new List<Student>();
        public static List<Student> studentProfilesList = new List<Student>();

        static WebService1()
        {
            studentProfilesList.Add(new Student("IT12094714","IT12094714@my.sliit.lk","wadsachi@gmail.com",1,1,2,"0758074724"));
        }

        [WebMethod]
        public List<Student> getPendingList()
        {
            return studentList;
        }

        [WebMethod]
        public String verifyStudent(String regNo)
        {
            String result = "failed";
            foreach (Student student in studentList)
            {
                if (String.Equals(student.getRegNO(), regNo))
                {
                    result = "success";
                    break;
                }

            }
            return result;
        }

        [WebMethod]
        public List<Student> getStudentProfiles()
        {
            return studentProfilesList;
        }

        [WebMethod]
        public String addStudentProfile(String regNo,String primaryEmail,String secondaryEmail,int faculty,int group,int year,String mobile)
        {
            Student student = new Student(regNo, primaryEmail, secondaryEmail, faculty, group, year, mobile);
            studentList.RemoveAll(x => x.Reg_No == regNo);
            studentProfilesList.Add(student);
            return "success";
        }

        [WebMethod]
        public static void addRequest(String regNo, String primaryEmail, String secondaryEmail, int faculty, int group, int year, String mobile)
        {
            studentList.Add(new Student(regNo, primaryEmail, secondaryEmail, faculty, group, year, mobile));
            
        }
        
        [WebMethod]
        public static Student getCurrentStudent(){
            return studentProfilesList.Last();
        }

        [WebMethod]
        public static void updateCurrentStudent(String regNo,String secondaryEmail,int group, int year, String mobile)
        {
            Student updateStudent=studentProfilesList.Find(x => x.Reg_No == regNo);
            studentProfilesList.RemoveAll(x => x.Reg_No == regNo);
            studentProfilesList.Add(new Student(regNo, updateStudent.Primary_Email, secondaryEmail, updateStudent.Faculty, group, year, mobile));
        }
        
    }
    public class Student
    {
        private String reg_No;
        private String primary_Email;
        private String secondary_Email;
        private int faculty;
        private int group;
        private int year;
        private String mobile;

        public Student(String reg_No, String primary_Email, String secondary_Email, int faculty, int group, int year, String mobile)
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
        public String getRegNO()
        {
            return this.reg_No;
        }
    }
}
