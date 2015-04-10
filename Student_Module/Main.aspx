<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="TimeTableManagementSystem.Student_Module.Main" %>

<!DOCTYPE html>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
    
<head runat="server">
    <title>Student Management</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/Main.css" />
    <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <script>
        $(document).ready(function () {
            alert("Say hi");

            $("#Button1").click(function () {
                alert("Testing button");
            });
        });
    </script>
</head>
<body>
    
    <form id="form1" runat="server">
        <h3>Student Management Main Page</h3>

        <div class="container-fluid">
            <div class="row" id="row1">
                <div class="col-lg-4 col-sm-4 col-xs-4">
                    <asp:Button ID="Button1" runat="server" Text="UI Test Button" class="btn btn-primary"/>
                </div>
                <div class="col-lg-4 col-sm-4 col-xs-4">
                    <asp:Button ID="Button2" runat="server" Text="UI Test Button" class="btn btn-warning"/>
                </div>
                <div class="col-lg-4 col-sm-4 col-xs-4">
                    <asp:Button ID="Button3" runat="server" Text="UI Test Button" class="btn btn-danger"/>
                </div>
            </div>
        </div>
        <script src="../bootstrap/js/bootstrap.min.js"></script>   
    </form>
</body>
</html>
