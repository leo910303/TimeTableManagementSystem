<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportViwer.aspx.cs" Inherits="TimeTableManagementSystem.ReportViwer" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LGIS - Report Viewer</title>
    <script type="text/javascript">
        function Minimize() {
            window.innerWidth = 100;
            window.innerHeight = 100;
            window.screenX = screen.width;
            window.screenY = screen.height;
            alwaysLowered = true;
        }

        function Maximize() {
            window.innerWidth = screen.width;
            window.innerHeight = screen.height;
            window.moveTo(0, 0);
            window.resizeTo(screen.width, screen.height - 30);
            top.window.outerHeight = screen.availHeight;
            top.window.outerWidth = screen.availWidth;
        }
    </script>
</head>
<body style="margin:3px 3px 5px 3px">
    <form id="form1" runat="server">
     <div align="left" style="margin: 0 auto; width: 800px;">
         <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" EnableDatabaseLogonPrompt="False" 
            HasCrystalLogo="False" HasRefreshButton="True" PrintMode="ActiveX" 
            Height="1039px" Width="824px" ToolPanelView="None" OnInit="CrystalReportViewer1_Init" />
    </div>
    </form>
</body>
</html>
