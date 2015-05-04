<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordReset.aspx.cs" Inherits="TimeTableManagementSystem.PasswordReset" %>

<!DOCTYPE html>

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
<body>
    <form id="form1" runat="server">
    
        <div class="login-box">
            <div class="login-logo">
                <b>SLIIT</b> Timetable Management System
            </div><!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg" id="test" runat="server">Enter Email Address to Recoevr Password</p>
                 <div class="form-group has-feedback">
                    
                     <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox> 
                     <asp:Label ID="lblMsg" runat="server" Text="Email has been send to your email address.."></asp:Label>
                     
                     <div id="btnPwdReset" style="position:absolute; left:110px">
                         <br />
                         <asp:Button ID="btnResetPwd" runat="server" 
                    CssClass="btn btn-primary" Width="100px" Text="Send Email" 
                    onclick="btnSignIn_Click"/>

                         <asp:Button ID="btnBack" runat="server" 
                    CssClass="btn btn-primary" Width="100px" Text="Back" 
                    onclick="btnBack_Click"/>

                     </div>
                     

                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>

                     

                </div>
            </div>

        <//div>
        
    </form>
</body>
</html>
