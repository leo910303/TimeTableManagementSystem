<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="TimeTableManagementSystem.Physical_Module.form" UnobtrusiveValidationMode="None" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js">

    </script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js">
    </script>
    <style>
        body
        {
            font-size: 70%;
        }
    </style>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript">
        $(function () {
            $("#<%=TextBox1.ClientID %>").datepicker({
                showOn: "button",
                buttonImage: "images/index.png",
                buttonImageOnly: true,
                buttonText: "Select date"
            });
        });
    </script>
</head>

<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row" style="margin-top:16px">
            <asp:Label ID="Label3" runat="server" Text="Category" Font-Bold="true" CssClass="col-sm-offset-2 col-sm-2"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="col-sm-2" ToolTip="Select Category" ValidationGroup="submitForm" ></asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ValidationGroup="submitForm" Forecolor="Red" ErrorMessage="*Please select a Category!"></asp:RequiredFieldValidator>
             
            
        </div>
       
        <div class="row" style="margin-top:16px">
            <asp:Label ID="Label1" runat="server" Text="Reschedule Date" Font-Bold="true" CssClass="col-sm-offset-2 col-sm-2"></asp:Label>
            <div class="col-sm-2">   
                <asp:TextBox ID="TextBox1" runat="server" ToolTip="Select Date"></asp:TextBox>
            </div>
        </div>
        <div class="row" style="margin-top:16px">
            <asp:Label ID="Label5" runat="server" Text="Time" Font-Bold="true" CssClass="col-sm-offset-2 col-sm-2"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="From" Font-Bold="true" CssClass="col-sm-1"></asp:Label>
            <div class="col-sm-1">
                <asp:DropDownList ID="DropDownList2" ToolTip="Select Time" runat="server"></asp:DropDownList>
            </div>
            <asp:Label ID="Label4" runat="server" Text="To" Font-Bold="true" CssClass="col-sm-1"></asp:Label>
            <div class="col-sm-1">
                <asp:DropDownList ID="DropDownList3" ToolTip="Select Time" runat="server"></asp:DropDownList>
            </div>
        </div>
        <div class="row" style="margin-top:16px">
            <div class="col-sm-offset-2 col-sm-2">
                <textarea cols="100" id="txtComments" name="txtComments" placeholder="Enter Comments here" rows="2"></textarea>

            </div>
        </div>
        <div class="row" style="margin-top:16px">
            <div class="col-sm-offset-2 col-sm-2">
                <asp:Button ID="Button1" runat="server" Text="Submit" Font-Bold="true" ToolTip="Submit Details" ValidationGroup="submitForm" CssClass="btn btn-primary"/>
            </div>
        </div>
        
    </div>
        
        
        
    </form>
</body>
</html>
