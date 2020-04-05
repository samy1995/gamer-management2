<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Access Request.aspx.cs" Inherits="gamer_management2.Access_Request" %>

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
        .newStyle1 {
            font-size: large;
        }
 
        .auto-style1 {
            width: 72%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
 
        </style>
</head>
    
<body class="bg-dark">
      <form class="form-group" id="form1" runat="server">
        <div class="text-center">
        <asp:Label ID="gmlbl" runat="server" Font-Bold="True" Font-Size="42pt" Text="GAMER MANAGEMENT" CssClass="auto-style33" style="color: #FFFFFF"></asp:Label>
        <div class="text-right">
            <asp:LinkButton ID="logoutbtn" runat="server" OnClick="logoutbtn_Click" CssClass="auto-style25" style="color: #CC0000; text-decoration: none">Logout</asp:LinkButton>
        </div>
            <div class="text-left">
            
                        <asp:Label ID="uplbl" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="USERS" CssClass="auto-style22" style="color: #CC0000"></asp:Label>
                        <br />
            <asp:Button CssClass="btn btn-warning" ID="btn_welcome" runat="server" Font-Bold="True" Text="Welcome" Width="166px" Height="37px" CausesValidation="false" OnClick="btn_Welcome_Click"/>
                        <br />
                <asp:Button CssClass="btn btn-warning" ID="Button2" runat="server" Text="My Profile" Width="166px" Font-Bold="True" Height="37px" CausesValidation="false" OnClick="Button2_Click"/>
        <br />
                <asp:Button CssClass="btn btn-warning" ID="Button3" runat="server" Text="Users" Width="166px" Font-Bold="True" Height="37px" CausesValidation="false" OnClick="Button3_Click"/>
              <br />
                <asp:Button CssClass="btn btn-warning" ID="Button5" runat="server" Text="Access Request" Width="166px" Font-Bold="True" Height="37px" CausesValidation="false" OnClick="Button5_Click"/>
                    
        </div>
  <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;
                        <br />
                <asp:Label ID="Label4" runat="server" Text="Search" CssClass="text-white"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="180px"></asp:TextBox>
                <asp:Button CssClass="btn btn-warning" ID="Button4" runat="server" Text="Search" OnClick="Button4_Click" style="height: 26px" Height="30px" Width="100px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Department" CssClass="text-white"></asp:Label>
&nbsp;<asp:DropDownList CssClass="btn btn-warning dropdown-toggle" ID="DropDownList1" runat="server" Height="40px" Width="180px">
                            <asp:ListItem>Real-Time Strategy</asp:ListItem>
                            <asp:ListItem>Technology</asp:ListItem>
                            <asp:ListItem>Board Game</asp:ListItem>
                            <asp:ListItem>Card Game</asp:ListItem>
                            <asp:ListItem>Arcade Game</asp:ListItem>
                        </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                        <asp:Button  CssClass="btn btn-warning" ID="Button6" runat="server" Height="30px" Text="Approve" Width="100px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button  CssClass="btn btn-warning" ID="Button7" runat="server"  Height="30px" Text="Decline" Width="100px"  />
                <br />
      </div>
            <br />
                    
                        <asp:Label ID="Label5" runat="server"></asp:Label>
            <div class="auto-style1">
                        <asp:GridView ID="GridView1" runat="server" Height="34px" Width="374px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="email_address">
                            <Columns>
                                <%--<asp:CommandField ShowSelectButton="True" />--%>
                                 <asp:TemplateField>
                                     <ItemTemplate>
                                         <asp:CheckBox ID="CheckBox1" runat="server" />
                                     </ItemTemplate>
                                     <ItemStyle Width="40px" />
                                 </asp:TemplateField>
                                <asp:BoundField DataField="User_id" HeaderText="User_id" SortExpression="User_id" ReadOnly="True" InsertVisible="False" />
                                <asp:BoundField DataField="email_address" HeaderText="email_address" SortExpression="email_address" ReadOnly="True" />
                                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                                <asp:BoundField DataField="access_type" HeaderText="access_type" SortExpression="access_type" />
                                <asp:BoundField DataField="Request_id" HeaderText="Request_id" SortExpression="Request_id" />
                                 <asp:BoundField DataField="Request_Status" HeaderText="Request_Status" SortExpression="Request_Status" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Gamer-ManagementConnectionString2 %>" SelectCommand="SELECT User_profile.User_id,User_profile.email_address, User_profile.first_name, User_profile.last_name, User_profile.department, User_profile.access_type, Request.Request_id, Request.Request_Status FROM User_profile INNER JOIN Request ON User_profile.User_id = Request.User_id where Request.Request_Status = 'pending'">
                        </asp:SqlDataSource>
                 
        </div>
    </form>
</body>
</html>


