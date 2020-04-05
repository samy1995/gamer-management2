<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome Host.aspx.cs" Inherits="gamer_management2.Welcome_Host" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap-sketchy.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.js"></script>
    <link href="Content/bootstrap-sketchy-grid.css" rel="stylesheet" />
    <script src="Scripts/bootstrap-sketchy.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <title></title>
    <style type="text/css">
        
        </style>
</head>
    <body class="bg-dark" style="width: 100%; height: 700px">
    <form id="form2" runat="server">
        <div class="text-center">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="42pt" ForeColor="#990000" Text="WELCOME GAMER" CssClass="text-white"></asp:Label>
            <div class="text-left">
        
                <div class="text-right">
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" OnClick="logoutbtn_Click" CssClass="auto-style5" style="color: #FF5050; text-decoration: none">Logout</asp:LinkButton>
            <br />
            
        </div>
<div class="btn-group-vertical">
         
    <asp:Button CssClass="btn btn-warning" ID="Button1" runat="server" Text="Welcome" Width="162px" Font-Size="Large" Height="36px" OnClick="Button1_Click" />
    <br />
    <asp:Button CssClass="btn btn-warning" ID="Button2" runat="server" Text="My Profile" Width="162px" Font-Size="Large" Height="36px"  OnClick="Button2_Click" />
    <br />
    <asp:Button CssClass="btn btn-warning" ID="Button3" runat="server" Text="Users" Width="162px" Font-Size="Large" Height="36px"  OnClick="Button3_Click" />
     
</div>
                <div class="container-fluid">
                    <img src="gamer1.jpg" class="img-fluid mx-auto d-block">
                </div>
        </div>
        </div>
    </form>
</body>
</html>
