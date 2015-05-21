<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TimeTableManagementSystem_Update.Login" UnobtrusiveValidationMode="None"%>

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
                <div class="form-group">
                    <div class="row">
                        <!--regNo-->
                        <asp:Label ID="Label1" runat="server" Text="Registration Number" CssClass="col-sm-3" Font-Bold="true"></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="regNo" runat="server" CssClass="form-control" ValidationGroup="sRegistration" ToolTip="Registration Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="vRegNo" runat="server" ErrorMessage="* Registration Number required" ValidationGroup="sRegistration" ControlToValidate="regNo" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="vrRegNo" runat="server" ErrorMessage="* Registration Number format Incorrect. Follow(ITXXXXXXXX)" Display="Dynamic" ControlToValidate="regNo" ValidationGroup="sRegistration" ValidationExpression="^IT[0-9]{8}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                     <div class="row">
                        <!--Primary Email-->
                         <asp:Label ID="Label2" runat="server" Text="Primary Email" CssClass="col-sm-3" Font-Bold="true"></asp:Label>
                        <div class="col-sm-9 ">
                            <asp:TextBox ID="pEmail" runat="server" ToolTip="Primary Email" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="pEmailReq" runat="server" ErrorMessage="* Primary Email is required" ForeColor="Red" ControlToValidate="pEmail" ValidationGroup="sRegistration" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="pEmailReg" runat="server" ErrorMessage="* Email format is incorrect" ForeColor="Red" ControlToValidate="pEmail" ValidationGroup="sRegistration" ValidationExpression="^(IT|it)[0-9]{8}@my.sliit.lk$" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                         
                    </div>
                </div>
                <div class="form-group">
                     <div class="row">
                        <!--Secondary Email (Optional)-->
                         <asp:Label ID="Label3" runat="server" Text="Secondary Email (Optional)" CssClass="col-sm-3" Font-Bold="true"></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="sEmail" runat="server" ToolTip="Secondary Email (optional)" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="sEmailReg" runat="server" ErrorMessage="* Email format is incorrect" ForeColor="Red" ControlToValidate="sEmail" ValidationGroup="sRegistration" ValidationExpression="^(([^<>()[\]\\.,;:\s@\'']+(\.[^<>()[\]\\.,;:\s@\'']+)*)|(\''.+\''))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                     <div class="row">
                        <!--Faculty-->
                         <asp:Label ID="Label4" runat="server" Text="Faculty" CssClass="col-sm-3" Font-Bold="true"></asp:Label>
                         <div class="col-sm-9">
                           <asp:DropDownList ID="faculty" runat="server" CssClass="dropdown"></asp:DropDownList>
                         </div>
                        </div>
                    </div>
                    <div class="form-group">
                     <div class="row">
                        <!--Group-->
                         <asp:Label ID="Label5" runat="server" Text="Group" Font-Bold="true" CssClass="col-sm-3"></asp:Label>
                        <div class="col-sm-9">
                            <asp:RadioButton ID="wd" runat="server" GroupName="group" CssClass="radio-inline" Text="Week Day" Checked="true"/>
                            <asp:RadioButton ID="we" runat="server" GroupName="group" CssClass="radio-inline" Text="Week End"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                     <div class="row">
                        <!--Current Year-->
                         <asp:Label ID="Label6" runat="server" Text="Select your Current Year" Font-Bold="true" CssClass="col-sm-3"></asp:Label>
                         <div class="col-sm-9">
                             <asp:DropDownList ID="year" runat="server" CssClass="dropdown"></asp:DropDownList>
                         </div>
                        </div>
                    </div>
                     <div class="form-group">
                     <div class="row">
                        <!--Mobile Number-->
                         <asp:Label ID="Label7" runat="server" Text="Mobile Number" Font-Bold="true" CssClass="col-sm-3"></asp:Label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="mobile" runat="server" CssClass="form-control" ToolTip="Mobile Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="mobileReq" runat="server" ErrorMessage="* Mobile Number required" ForeColor="Red" ControlToValidate="mobile" ValidationGroup="sRegistration" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="mobileReg" runat="server" ErrorMessage="* Incorrect Format" ForeColor="Red" ControlToValidate="mobile" ValidationGroup="sRegistration" ValidationExpression="^07(1|2|5|6|7|8)[0-9]{7}$" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                     <div class="row">
                        <div class="col-sm-9 col-sm-offset-3">
                            <!--Submit-->
                            <asp:Button ID="Submit_Registration" runat="server" Text="Register" CssClass="btn btn-success" ValidationGroup="sRegistration" OnClick="Submit_Registration_Click" />
                        </div>
                    </div>
                </div>
            
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
                
                $('#pEmail').focus(function () {
                    console.log($('#regNo').val());
                    if ($('#regNo').val() != "") {
                        var email = $('#regNo').val().concat("@my.sliit.lk");
                        $('#pEmail').val(email);
                    }
                });
            });
        </script>
    </form>
</body>
</html>
