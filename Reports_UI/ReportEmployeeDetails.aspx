<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportEmployeeDetails.aspx.cs" Inherits="TimeTableManagementSystem.Reports_UI.ReportEmployeeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="drpStaffId" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="StaffId" DataValueField="ModuleSerial">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TTMS_DBConnectionString %>" SelectCommand="SELECT ModuleSerial, LecturerSerial, StaffId, FName, LName, Address, Designation, Title, MobileNo, Email, JoinDate, ProfilePic FROM Lecturer"></asp:SqlDataSource>
    </div>

    <div>
        <asp:Button ID="btnGenerate" runat="server" Text="Generate" OnClick="btnGenerate_Click" />
    </div>
    </form>
</body>
</html>
