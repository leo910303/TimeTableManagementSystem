<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="TimeTableManagementSystem.Physical_Module.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Physical Resource
    </title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Main.css" rel="stylesheet" />
    <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#Button1').click(function () {
                alert("Hello");
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-warning btn-lg" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Button" class="btn btn-success btn-sm"></asp:Button>
        <button><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Test</button>
    </div>
        <script src="../bootstrap/js/bootstrap.min.js"></script>
    </form>
    
    
</body>
</html>
