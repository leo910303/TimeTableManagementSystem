<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcademicStaffManagement.aspx.cs" Inherits="TimeTableManagementSystem_Update.AcademicStaffManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap 3.3.2 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />    
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="skin-blue">
    <form id="form1" runat="server">
    <div>
    <div class="wrapper">
      
      <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo"><b>SLIIT</b> Timetable</a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">4</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 4 messages</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- start message -->
                        <a href="#">
                          <div class="pull-left">
                            <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
                          </div>
                          <h4>
                            Support Team
                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                          </h4>
                          <p>Test Message..</p>
                        </a>
                      </li><!-- end message -->
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            AdminLTE Design Team
                            <small><i class="fa fa-clock-o"></i> 2 hours</small>
                          </h4>
                          <p>Test Message..</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            Developers
                            <small><i class="fa fa-clock-o"></i> Today</small>
                          </h4>
                          <p>Test Message..</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            Sales Department
                            <small><i class="fa fa-clock-o"></i> Yesterday</small>
                          </h4>
                          <p>Test Message..</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            Reviewers
                            <small><i class="fa fa-clock-o"></i> 2 days</small>
                          </h4>
                          <p>Test Message..</p>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">See All Messages</a></li>
                </ul>
              </li>
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 10 notifications</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 new members joined today
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-red"></i> 5 new members joined
                        </a>
                      </li>

                      <li>
                        <a href="#">
                          <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-user text-red"></i> You changed your username
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li>
              <!-- Tasks: style can be found in dropdown.less -->
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-flag-o"></i>
                  <span class="label label-danger">9</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 9 tasks</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Design some buttons
                            <small class="pull-right">20%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">20% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Create a nice theme
                            <small class="pull-right">40%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">40% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Some task I need to do
                            <small class="pull-right">60%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">60% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Make beautiful transitions
                            <small class="pull-right">80%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">80% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                    </ul>
                  </li>
                  <li class="footer">
                    <a href="#">View all tasks</a>
                  </li>
                </ul>
              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs">Sachith Gunasekara</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                    <p>
                      Sachith Gunasekara - Administrator
                      <small>Member since Jan. 2015</small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <asp:Button ID="btnSignOut" runat="server" Text="Sign out" 
                            CssClass="btn btn-default btn-flat" onclick="btnSignOut_Click"></asp:Button>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>Sachith Gunasekara</p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active treeview">
              <a href="Dashboard.aspx">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span> 
              </a>
              
            </li>
            <li class="treeview">
              <a href="#">
                <i class="ion-university"></i>
                <span>Faculty Management</span><i class="fa fa-angle-left pull-right"></i>
                <span class="label label-primary pull-right"></span>
              </a>
              <ul class="treeview-menu">
                <li><a href="FacultyManagement.aspx"><i class="fa fa-circle-o"></i> Faculty Management</a></li>
                <li><a href="FacultyManagement.aspx"><i class="fa fa-circle-o"></i> Branch Management</a></li>
              </ul>
            </li>


            <li class="treeview">
              <a href="#">
                <i class="ion-person-stalker"></i>
                <span>User Management</span><i class="fa fa-angle-left pull-right"></i>
                <span class="label label-primary pull-right"></span>
              </a>
              <ul class="treeview-menu">
                <li><a href="AcademicStaffManagement.aspx"><i class="fa fa-circle-o"></i> Manage Academic Staff</a></li>
              </ul>
            </li>


             <li class="treeview">
              <a href="#">
                <i class="ion-earth"></i>
                <span>Location Management</span><i class="fa fa-angle-left pull-right"></i>
                <span class="label label-primary pull-right"></span>
              </a>
              <ul class="treeview-menu">
                <li><a href="../pages/404PageNotFound.aspx"><i class="fa fa-circle-o"></i> Lecture Halls</a></li>
                <li><a href="../pages/404PageNotFound.aspx"><i class="fa fa-circle-o"></i> Labs</a></li>
              </ul>
            </li>


            <li>
              <a href="../pages/404PageNotFound.aspx">
                <i class="fa fa-th"></i> <span>Widgets</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
            
            <li><a href="../pages/404PageNotFound.aspx"><i class="fa fa-book"></i> Documentation</a></li>
            </ul>
            </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
       <%-- <section class="content-header">
          <h1>
            Dashboard
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>--%>

        <!-- Main content -->
        <section class="content">
          <!-- Small boxes (Stat box) -->
         <%-- <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>3<sup style="font-size: 20px"> Faculties</sup></h3>
                  <p>Faculty Management</p>
                </div>
                <div class="icon">
                  <i class="ion-university"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>53<sup style="font-size: 20px"> Lecture halls</sup></h3>
                  <p>Location Management</p>
                </div>
                <div class="icon">
                  <i class="ion-earth"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>44<sup style="font-size: 20px"> Users</sup></h3>
                  <p>User Management</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>65<sup style="font-size: 20px"> Rules</sup></h3>
                  <p>Rules Management</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->--%>

        
        <div id="DIV1" style="position:absolute; left: 50%;">
            <asp:Label ID="lblHeadingOT" runat="server" Text="Manage Academic Staff" Font-Size="30" Font-Bold="true"></asp:Label>
        </div>
       
            <div id="divtab" style="position: absolute; top: 50%;">
                <ul class="nav nav-tabs" >
                    <li class="active"><a data-toggle="tab" href="#PersonalDetails">Personal Details</a></li>
                    <li><a data-toggle="tab" href="#ContactDetails">Contact Details</a></li>
                    <li><a data-toggle="tab" href="#Qualifications">Qualifications</a></li>
                    <li><a data-toggle="tab" href="#WorkingExperience">Working Experience</a></li>
                </ul>
                <div class="tab-content">
            
                <div id="PersonalDetails" class="tab-pane fade in active">
                    
                    <div id="div2" style="position: absolute; top: 75px; left: 84px; height: 107px; width: 123px;">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/dist/img/user.png" CssClass="img-circle" Height="101px" Width="117px" />
                    </div>
                    
                    <div id="div4" style="position: absolute; top: 201px; left: 29px; height: 24px; width: 223px;">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>

                    <div id="div3" style="position: absolute; top: 95px; left: 276px; height: 22px;">
                        <asp:Label ID="Label81" runat="server" Text="Staff ID :"></asp:Label>
                    </div>
                    
                    <div id="div5" style="position: absolute; top: 129px; left: 380px;">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="173px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Lecturer</asp:ListItem>
                            <asp:ListItem>Assistant Lecturer</asp:ListItem>
                            <asp:ListItem>Instructors</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div id="div6" style="position: absolute; top: 131px; left: 275px;">
                        <asp:Label ID="Label22" runat="server" Text="Designation :"></asp:Label>
                    </div>
                    
                    <div id="div7" style="position: absolute; top: 92px; left: 381px;">
                        <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div10" style="position: absolute; top: 249px; left: -2px; width: 1027px; margin-top: 1px;">
                        <asp:Panel ID="Panel2" runat="server" Width="1000px" Height="1px" BorderColor="#0066ff" BorderWidth="1px" BackColor="#FFFFE0" style="margin-left: 0px; margin-top: 0px">
                        </asp:Panel>
                    </div>

                   
                    <div id="div8" style="position: absolute; top: 284px; left: 178px;">
                        <asp:Label ID="Label53" runat="server" Text="Title :"></asp:Label>
                    </div>
                    
                    <div id="div9" style="position: absolute; top: 282px; left: 262px;">
                       <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="173px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Mr.</asp:ListItem>
                            <asp:ListItem>Ms.</asp:ListItem>
                            <asp:ListItem Value="Dr.">Dr.</asp:ListItem>
                            <asp:ListItem Value="Rev.">Rev.</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div id="div11" style="position: absolute; top: 284px; left: 557px;">
                        <asp:Label ID="Label54" runat="server" Text="Initials :"></asp:Label>
                    </div>
                    
                    <div id="div12" style="position: absolute; top: 281px; left: 641px;">
                        <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div13" style="position: absolute; top: 320px; left: 179px; height: 23px; width: 78px; right: 596px;">
                        <asp:Label ID="Label5" runat="server" Text="First Name :"></asp:Label>
                    </div>
                    
                    <div id="div14" style="position: absolute; top: 319px; left: 262px;">
                        <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div15" style="position: absolute; top: 318px; left: 557px; height: 23px; width: 81px; right: 215px;">
                        <asp:Label ID="Label6" runat="server" Text="Last Name :"></asp:Label>
                    </div>
                    
                    <div id="div16" style="position: absolute; top: 318px; left: 642px;">
                        <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div18" style="position: absolute; top: 354px; left: 179px; height: 23px; width: 44px; right: 630px;">
                        <asp:Label ID="Label7" runat="server" Text="NIC :"></asp:Label>
                    </div>
                    
                    <div id="div17" style="position: absolute; top: 354px; left: 262px;">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div19" style="position: absolute; top: 354px; left: 558px; height: 23px; width: 44px; right: 251px;">
                        <asp:Label ID="Label8" runat="server" Text="DOB :"></asp:Label>
                    </div>
                    
                    <div id="div20" style="position: absolute; top: 353px; left: 643px;">
                        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div21" style="position: absolute; top: 390px; left: 179px; height: 23px; width: 78px; right: 596px;">
                        <asp:Label ID="Label9" runat="server" Text="Civil Status :"></asp:Label>
                    </div>
                    
                    <div id="div22" style="position: absolute; top: 388px; left: 263px;">
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="26px" Width="173px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Single</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div id="div23" style="position: absolute; top: 388px; left: 558px; height: 23px; width: 64px; right: 231px;">
                        <asp:Label ID="Label10" runat="server" Text="Religion :"></asp:Label>
                    </div>
                    
                    <div id="div24" style="position: absolute; top: 388px; left: 643px;">
                        <asp:DropDownList ID="DropDownList4" runat="server" Height="26px" Width="173px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Single</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                   
                   
                    <div id="div25" style="position: absolute; top: 493px; left: 842px; height: 31px; width: 62px; right: -51px;">
                        <asp:Button ID="Button6" runat="server" Text="Next" CssClass="btn btn-block btn-primary" Height="31px" Width="66px" />
                    </div>
                    
                    <div id="div26" style="position: absolute; top: 462px; left: -2px; width: 1027px; margin-top: 1px;">
                        <asp:Panel ID="Panel4" runat="server" Width="1000px" Height="1px" BorderColor="#0066ff" BorderWidth="1px" BackColor="#FFFFE0" style="margin-left: 0px; margin-top: 0px">
                        </asp:Panel>
                    </div>
                    

                </div>

                <div id="ContactDetails" class="tab-pane fade">
                    <div id="div27" style="position: absolute; top: 89px; left: 332px; height: 22px;">
                        <asp:Label ID="Label1" runat="server" Text="Address :"></asp:Label>
                    </div>  
                    
                    <div id="div28" style="position: absolute; top: 87px; left: 415px;">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div29" style="position: absolute;top: 122px; left: 334px;">
                        <asp:Label ID="Label32" runat="server" Text="Telephone :"></asp:Label>
                    </div>  
                    
                    <div id="div30" style="position: absolute; top: 192px; left: 417px;">
                        <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div31" style="position: absolute; top: 158px; left: 334px; height: 22px;">
                        <asp:Label ID="Label43" runat="server" Text="Mobile No :"></asp:Label>
                    </div> 
                    
                    <div id="div32" style="position: absolute; top: 121px; left: 416px;">
                        <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div33" style="position: absolute; top: 193px; left: 334px; height: 22px;">
                        <asp:Label ID="Label44" runat="server" Text="Email :"></asp:Label>
                    </div> 
                    
                    <div id="div34" style="position: absolute; top: 156px; left: 417px;">
                        <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                    </div>
                    
                      <div id="div35" style="position: absolute; top: 320px; left: 842px; height: 31px; width: 62px; right: -51px;">
                        <asp:Button ID="Button26" runat="server" Text="Next" CssClass="btn btn-block btn-primary" Height="31px" Width="66px" />
                    </div>
                    
                    <div id="div36" style="position: absolute; top: 286px; left: -2px; width: 1027px; margin-top: 1px;">
                        <asp:Panel ID="Panel24" runat="server" Width="1000px" Height="1px" BorderColor="#0066ff" BorderWidth="1px" BackColor="#FFFFE0" style="margin-left: 0px; margin-top: 0px">
                        </asp:Panel>
                    </div>
                </div>

            <div  id="Qualifications" class="tab-pane fade">
                      <div id="div37" style="position: absolute; top: 102px; left: 155px; height: 22px;">
                        <asp:Label ID="Label11" runat="server" Text="Qualification Type :"></asp:Label>
                    </div>  
                    
                    <div id="div38" style="position: absolute; top: 102px; left: 304px;">
                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div39" style="position: absolute;top: 101px; left: 590px;">
                        <asp:Label ID="Label12" runat="server" Text="Qualification Name :"></asp:Label>
                    </div>  
                    
                    <div id="div40" style="position: absolute; top: 142px; left: 712px;">
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div41" style="position: absolute; top: 145px; left: 155px; height: 22px;">
                        <asp:Label ID="Label13" runat="server" Text="Place :"></asp:Label>
                    </div> 
                    
                    <div id="div42" style="position: absolute; top: 100px; left: 713px;">
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div43" style="position: absolute; top: 190px; left: 157px; height: 22px;">
                        <asp:Label ID="Label14" runat="server" Text="Year Of Qualification :"></asp:Label>
                    </div> 
                    
                    <div id="div44" style="position: absolute; top: 142px; left: 305px;">
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div45" style="position: absolute; top: 146px; left: 590px; height: 22px;">
                        <asp:Label ID="Label15" runat="server" Text="Duration :"></asp:Label>
                    </div> 
                    
                    <div id="div46" style="position: absolute; top: 188px; left: 306px; margin-top: 0px;">
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </div>
                    
                      
                    <div id="div47" style="position: absolute; top: 143px; left: 889px; height: 22px;">
                        <asp:Label ID="Label18" runat="server" Text="Months"></asp:Label>
                    </div> 
                    
                    <div id="div48" style="position: absolute; top: 190px; left: 590px; height: 22px;">
                        <asp:Label ID="Label16" runat="server" Text="Status :"></asp:Label>
                    </div> 
                    
                    <div id="div49" style="position: absolute; top: 184px; left: 715px; margin-top: 0px;">
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    </div>
                    
                    <div id="div50" style="position: absolute; top: 235px; left: 157px; height: 22px;">
                        <asp:Label ID="Label17" runat="server" Text="Remarks :"></asp:Label>
                    </div> 
                    
                    <div id="div51" style="position: absolute; top: 235px; left: 303px; margin-top: 0px; height: 53px; width: 241px;">
                        <asp:TextBox ID="TextBox17" runat="server" Height="44px" Width="229px"></asp:TextBox>
                    </div>
                    
                    <div id="div52" style="position: absolute; top: 243px; left: 547px; height: 31px; width: 62px; right: 244px;">
                        <asp:Button ID="Button7" runat="server" Text="Insert" CssClass="btn btn-block btn-info" Height="31px" Width="66px" />
                    </div>
                    
                    <div id="div53" style="position: absolute; top: 366px; left: 842px; height: 31px; width: 62px; right: -51px;">
                        <asp:Button ID="Button11" runat="server" Text="Next" CssClass="btn btn-block btn-primary" Height="31px" Width="66px" />
                    </div>
                    
                    <div id="div54" style="position: absolute; top: 327px; left: -2px; width: 1027px; margin-top: 1px;">
                        <asp:Panel ID="Panel12" runat="server" Width="1000px" Height="1px" BorderColor="#0066ff" BorderWidth="1px" BackColor="#FFFFE0" style="margin-left: 0px; margin-top: 0px">
                        </asp:Panel>
                    </div>
                </div>
                
                <div id="WorkingExperience" class="tab-pane fade" >
                    <div id="div55" style="position: absolute; top: 473px; left: 366px; height: 35px; width: 100px; right: 387px;">
                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-block btn-success" />
                    </div>
                    
                    <div id="div56" style="position: absolute; top: 471px; left: 532px; height: 35px; width: 100px; right: 221px;">
                        <asp:Button ID="Button2" runat="server" Text="Edit" CssClass="btn btn-block btn-warning" />
                    </div>
                </div>

            </div>
          
        </div>      

     

            </section>
          </div>
        </div>
                <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- jQuery UI 1.11.2 -->
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>    
    <!-- Morris.js charts -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/knob/jquery.knob.js" type="text/javascript"></script>
    <!-- daterangepicker -->
    <script src="plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>

    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard.js" type="text/javascript"></script>

    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js" type="text/javascript"></script>
    
    
    
     <script src="plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
    
    <script type="text/javascript">
        $(function () {
            $("#example1").dataTable();
            $('#example2').dataTable({
                "bPaginate": true,
                "bLengthChange": false,
                "bFilter": false,
                "bSort": true,
                "bInfo": true,
                "bAutoWidth": false
            });
        });
    </script>
    </div>
    </form>
</body>
</html>
