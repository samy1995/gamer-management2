<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="gamer_management2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     
<head runat="server">
   <link href="Content/bootstrap-sketchy.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.js"></script>
    <link href="Custom-StyleSheet.css" rel="stylesheet" />
    <link href="Content/bootstrap-sketchy-grid.css" rel="stylesheet" />
    <script src="Scripts/bootstrap-sketchy.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <%--<script src="Scripts/WebForms/MenuStandards.js"></script>
    <script src="Scripts/WebForms/SmartNav.js"></script>
    <script src="Scripts/WebForms/WebUIValidation.js"></script>
    <script src="Scripts/bootstrap.bundle.js"></script>--%>
      <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 1026px;
        }
        .auto-style8 {
            font-size: large;
        }

               
        .auto-style12 {
            font-size: large;
            color: #FFFFFF;
        }
 
       
    </style>
<%--    <script>
if("[@access_type:Admin]" == "Yes"){
Rsponse.Rediret("Welcome Admin.aspx");
}
else if ("[@access_type:Host]" == "Yes") {
    Rsponse.Rediret("Welcome Host.aspx");
}
else{
    Rsponse.Rediret("Welcome Gamer.aspx");
}
</script>--%>
</head>
<body  class="bg-dark" style="width: 100%; height: 100%" >
    <form id="form1" runat="server" class="auto-style4" style="width: 100%; height: 100%">
        <%--container-fluid p-3 my-3 big-banner--%>
        <div class="jumbotron form-group" style="width: 100%; height: 700px; text-align: center;">
            <br />
            <br />
            <br />
        <asp:Label ID="Label4" runat="server" Text="GAMER MANAGEMENT" Font-Bold="True" Font-Size="42pt" CssClass="text-white" ></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <%--<table class="auto-style10 container-fluid" style="width: 41%; height: 124px">--%>
            <div class="form-group">
                
                        <strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text="UserName"></asp:Label>
                        &nbsp;</strong><asp:TextBox ID="TextBox1" runat="server" Width="285px" Height="25px"></asp:TextBox>
                        <br />
                        <strong>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username Cannot Be Empty" ForeColor="Red" CssClass="auto-style8"></asp:RequiredFieldValidator>
                        </strong>
                   </div>
            <div class="form-group">
                        <strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text="Password"></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="285px" Height="25px"></asp:TextBox>
                        </strong>
                        <br />
                        <strong>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Cannot Be Empty" ForeColor="Red" CssClass="auto-style8"></asp:RequiredFieldValidator>
                        </strong>
                </div>
                   <div class="form-group">
                        <strong>
                        <asp:Label ID="Label5" runat="server" ForeColor="Red" CssClass="auto-style8"></asp:Label>
                        </strong>
                   
                </div>
            <%--</table>--%>
            <div class="container-fluid" style="margin-left: 0px">
                <br />
&nbsp;<strong><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="129px" class="btn btn-success"/>
                </strong>&nbsp;<strong><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sign up" Width="118px"  CausesValidation="false" class="btn btn-success"/>
                </strong>
            </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-BQ12MSI;Initial Catalog=signup;Integrated Security=True"></asp:SqlDataSource>
                    </div>
            
    </form>
</body>
</html>
