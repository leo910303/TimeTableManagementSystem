<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentManagement.aspx.cs" Inherits="TimeTableManagementSystem.Student_Module.StudentManagement" %>

<!DOCTYPE html>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Management</title>
    <!-- Bootstrap 3.3.2 -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <link href="css/Main.css" rel="stylesheet" />
    <link href="css/pageLoad.css" rel="stylesheet" />
    <!--Js Grid-->
    <link href="css/demos.css" rel="stylesheet"/>
    <link href="css/jsgrid.css" rel="stylesheet" type="text/css"/>
    <link href="css/theme.css" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,600,400" rel="stylesheet" type="text/css"/>
    <link href="css/sweetalert.css" rel="stylesheet" />
     
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <!-- jQuery 2.1.3 -->
    <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js" type="text/javascript"></script>
    <script src="js/sweetalert.min.js" type="text/javascript"></script>
    <script src="js/db2.js" type="text/javascript"></script>
    <!--Js Grid-->
    <script src="js/jsgrid.core.js" type="text/javascript"></script>
    <script src="js/jsgrid.load-indicator.js" type="text/javascript"></script>
    <script src="js/jsgrid.load-strategies.js" type="text/javascript"></script>
    <script src="js/jsgrid.sort-strategies.js" type="text/javascript"></script>
    <script src="js/jsgrid.field.js" type="text/javascript"></script>
    <script src="js/jsgrid.field.text.js" type="text/javascript"></script>
    <script src="js/jsgrid.field.number.js" type="text/javascript"></script>
    <script src="js/jsgrid.field.select.js" type="text/javascript"></script>
    <script src="js/jsgrid.field.checkbox.js" type="text/javascript"></script>
    <script src="js/jsgrid.field.control.js" type="text/javascript"></script>
</head>
<body class="skin-blue">
    <form id="form1" runat="server">
    <div>
           <div class="wrapper">
      
      <header class="main-header">
        <a href="#" class="logo"><b>User Panel</b></a>
        
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
            
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
             <h2 class="navbar-nav" style="padding:5px 0px 0px 20px; color:white;"><b>TIMETABLE MANAGEMENT</b></h2>
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
                            <img src="../../dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
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
                            <img src="../../dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
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
                            <img src="../../dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
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
                  <img src="../dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs">Sachith Gunasekara</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                    <p>
                      Sachith Gunasekara - Administrator
                      <small>Member since Jan. 2015</small>
                    </p>
                  </li>
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="#" class="btn btn-default btn-flat">Sign out</a>
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
              <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
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
                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active treeview">
              <a href="../Dashboard.aspx">
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
                <li><a href="../FacultyManagement.aspx"><i class="fa fa-circle-o"></i> Faculty Management</a></li>
                <li><a href="../FacultyManagement.aspx"><i class="fa fa-circle-o"></i> Branch Management</a></li>
              </ul>
            </li>


            <li class="treeview">
              <a href="#">
                <i class="ion-person-stalker"></i>
                <span>User Management</span><i class="fa fa-angle-left pull-right"></i>
                <span class="label label-primary pull-right"></span>
              </a>
              <ul class="treeview-menu">
                <li><a href="../AcademicStaffManagement.aspx"><i class="fa fa-circle-o"></i> Manage Academic Staff</a></li>
              </ul>
            </li>


             <li class="treeview">
              <a href="#">
                <i class="ion-earth"></i>
                <span>Location Management</span><i class="fa fa-angle-left pull-right"></i>
                <span class="label label-primary pull-right"></span>
              </a>
              <ul class="treeview-menu">
                <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> Top Navigation</a></li>
                <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> Boxed</a></li>
                <li><a href="pages/layout/fixed.html"><i class="fa fa-circle-o"></i> Fixed</a></li>
                <li><a href="pages/layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
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
      <div class="content-wrapper" style="background-color:white">
        <!-- Main content goes here-->
       <div class="container" style="padding-left: 0px;">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#studentProfiles">Current Student Profiles</a></li>
            </ul>

            <div class="tab-content">
                <div id="studentProfiles" class="tab-pane fade in active">
                    <div class="container-fluid" style="height:460px">
                        <div id="jsGrid" style="margin-top:10px"></div>
                    </div>
                </div>
    
            </div>
        </div>
           
        </div>
        <!--PageLoad-->
        <div id="new" class="body">
            <div class="loader-wrapper">
            <div class="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
            </div>
        </div>
            
      <footer class="main-footer">
        <strong>Copyright &copy; 2014-2015 <a href="#">Sri Lanka Institute of Information Technology</a>.</strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->
    </div>
    </form>
    <script>
        $(function () {

            $("#jsGrid").jsGrid({
                height: "100%",
                width: "100%",
                filtering: true,
                editing: false,
                sorting: true,
                paging: true,
                autoload: true,
                pageSize: 15,
                pageButtonCount: 7,
                deleteConfirm: "Do you really want to delete the client?",
                controller: db2,
                fields: [
                    { name: "Reg_No", type: "text", width: 80 },
                    { name: "Primary_Email", type: "text", width: 110 },
                    { name: "Secondary_Email", type: "text", width: 100 },
                    { name: "Faculty", type: "select", items: db2.faculties, valueField: "Id", textField: "Name", width: 70 },
                    { name: "Group", type: "select", items: db2.groups, valueField: "Id", textField: "Name", width: 60 },
                    { name: "Year", type: "select", items: db2.years, valueField: "Id", textField: "Name", width: 50 },
                    { name: "Mobile", type: "text", width: 80 },
                    {
                        headerTemplate: function () {
                            return 'Deactivate';
                        },
                        itemTemplate: function (_, item) {
                            return $("<button>").attr("type", "button").text("Deactivate").addClass('btn-sm btn-warning')
                                        .on("click", function () {
                                            alert(item);
                                        });
                        },
                        align: "center",
                        width: 60
                    },
                    { type: "control", editButton: false }
                ]
            });

        });
    </script>
</body>
</html>
