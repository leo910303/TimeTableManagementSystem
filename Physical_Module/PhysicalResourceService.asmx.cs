using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace TimeTableManagementSystem.Physical_Module
{
    /// <summary>
    /// Summary description for PhysicalResourceService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class PhysicalResourceService : System.Web.Services.WebService
    {
         public static List<Resources> resourcesList=new List<Resources>();

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public List<Resources> getResources()
        {
            
            return resourcesList;
        }
        
        [WebMethod]
        public static void addResources(int resource, String name, int location, int floor, String capacity)
        {
            resourcesList.Add(new Resources(resource, name, location, floor, capacity));
        }
    }

    public class Resources
    {
        private int resource;
        private String name;
        private int location;
        private int floor;
        private String capacity;

        public Resources(int resource, String name, int location, int floor, String capacity)
        {
            this.resource = resource;
            this.name = name;
            this.location = location;
            this.floor = floor;
            this.capacity = capacity;

        }

        public int Resource 
        {
            set { this.resource = value; }
            get { return this.resource; }
        }

        public String Name
        {
            set { this.name = value; }
            get { return this.name; }
        }

        public int Location
        {
            set { this.location = value; }
            get { return this.location; }
        }

        public int Floor
        {
            set { this.floor = value; }
            get { return this.floor; }
        }

        public String Capacity
        {
            set { this.capacity = value; }
            get { return this.capacity; }

        }
            

    }
}
