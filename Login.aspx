<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TimeTableManagementSystem_Update.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />
</head>
<body class="login-page">
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row"><div class="col-md-7 col-md-offset-2">
     <div class="login-box">
      <div class="login-logo">
        <b>SLIIT</b> Timetable Management System
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg" id="test" runat="server">Sign in to start your session</p>
          <div class="form-group has-feedback">
         <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
             <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-8">    
              <div class="checkbox icheck">
                <label>
                  <input type="checkbox"> Remember Me
                </label>
              </div>                        
            </div><!-- /.col -->

        <div class="col-xs-4">
         <asp:Button ID="btnSignIn" runat="server" 
                    CssClass="btn btn-primary btn-block btn-flat" Text="Sign In" 
                    onclick="btnSignIn_Click"/>
              
            </div><!-- /.col -->
          </div>

        <a href="#">I forgot my password</a>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
    </div><!-- /.Column -->
    <div class="col-md-3">
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#studentModal" style="float:right; margin-top:10px; margin-bottom:10px;">
            Student Registration
        </button>
    </div>
    </div><!-- /.Row -->
    </div><!-- /.Container -->

    <!-- Student Registration Model -->
    <div class="modal fade" id="studentModal" role="dialog" aria-labelledby="gridSystemModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title"><strong>Student Registration Form</strong></h4>
        </div>
        <div class="modal-body">
          <div class="container-fluid">
            <form class="form-horizontal">
                <div class="form-group">
                    <div class="row">
                        <label for="regNo" class="col-sm-3 control-label">Registration Number</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="regNo" placeholder="Registration Number (ITXXXXXXXX)"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                     <div class="row">
                        <label for="pEmail" class="col-sm-3 control-label">Primary Email</label>
                        <div class="col-sm-9">
                            <input type="email" class="form-control" id="pEmail" placeholder="Primary Email"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                     <div class="row">
                        <label for="sEmail" class="col-sm-3 control-label">Secondary Email (Optional)</label>
                        <div class="col-sm-9">
                            <input type="email" class="form-control" id="sEmail" placeholder="Secondary Email"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                     <div class="row">
                        <label for="faculty" class="col-sm-3 control-label">Faculty</label>
                         <div class="col-sm-9">
                            <div class="dropdown">
                                <button class="btn btn-default dropdown-toggle" type="button" id="faculty" data-toggle="dropdown" aria-expanded="true">
                                    Select Your Faculty
                                <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="faculty">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Computing</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Engineering</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Business</a></li>
                                </ul>
                            </div>
                         </div>
                        </div>
                    </div>
                    <div class="form-group">
                     <div class="row">
                        <label for="group1" class="col-sm-3 control-label">Group</label>
                        <div class="col-sm-9">
                            <div class="radio inline">
                                <label class="control-label">WD</label>
                                 <input type="radio" name="optionsRadios" id="group1" value="option1" checked>
                            </div>
                            <div class="radio inline">
                                <label class="control-label">WE</label>
                                 <input type="radio" name="optionsRadios" id="group2" value="option2">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                     <div class="row">
                        <label for="year" class="col-sm-3 control-label">Current Year</label>
                         <div class="col-sm-9">
                            <div class="dropdown">
                                <button class="btn btn-default dropdown-toggle" type="button" id="year" data-toggle="dropdown" aria-expanded="true">
                                    Select Your Faculty
                                <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="year">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Year 1</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Year 2</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Year 3</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Year 4</a></li>
                                </ul>
                            </div>
                         </div>
                        </div>
                    </div>
                     <div class="form-group">
                     <div class="row">
                        <label for="mobile" class="col-sm-3 control-label">Mobile Number</label>
                        <div class="col-sm-9">
                            <input type="text" pattern="[0-9] {10}" class="form-control" id="mobile" placeholder="Mobile Number"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                     <div class="row">
                        <div class="col-sm-9 col-sm-offset-3">
                            <button type="button" class="btn btn-primary">Register</button>
                        </div>
                    </div>
                </div>
                </form><!--/.form-->
                </div>
           </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
        
    <!-- jQuery 2.1.3 -->
    <script src="../../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="../../plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
            $(document).ready(function () {
                
                $("#btnSignIn").click(function () {
                    alert("This is a test message");
                });
            });
        </script>
    </form>
</body>
</html>
