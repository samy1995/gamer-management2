<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="gamer_management2.Users" %>
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
        
        </style>
</head>
<body class="bg-dark">
      <form class="form-group" id="form1" runat="server">
        <div class="text-center">
        <asp:Label ID="gmlbl" runat="server" Font-Bold="True" Font-Size="42pt" Text="GAMER MANAGEMENT" CssClass="auto-style33" style="color: #FFFFFF"></asp:Label>
        <div class="text-right">
            <asp:LinkButton ID="logoutbtn" runat="server" OnClick="logoutbtn_Click" CssClass="auto-style22" style="color: #CC0000; text-decoration: none">Logout</asp:LinkButton>
        </div>
            <div class="text-left">
            
                        <asp:Label ID="uplbl" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="USERS" CssClass="auto-style22" style="color: #CC0000"></asp:Label>
                        <br />
            <asp:Button CssClass="btn btn-warning" ID="Button1" runat="server" Font-Bold="True" Text="Welcome" Width="166px" Height="37px" CausesValidation="false" OnClick="Button1_Click"/>
                        <br />
                <asp:Button CssClass="btn btn-warning" ID="Button2" runat="server" Text="My Profile" Width="166px" Font-Bold="True" Height="37px" CausesValidation="false" OnClick="Button2_Click"/>
        <br />
                <asp:Button CssClass="btn btn-warning" ID="Button3" runat="server" Text="Users" Width="166px" Font-Bold="True" Height="37px" CausesValidation="false" OnClick="Button3_Click"/>
              <br />
                
                    
        </div>
  <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button  CssClass="btn btn-warning" ID="Button5" runat="server" Height="30px" Text="View" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button  CssClass="btn btn-warning" ID="Button6" runat="server" Height="30px" Text="Edit" Width="100px" />
                    &nbsp;&nbsp;
                        &nbsp;<br />
                <br />
      </div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Search" CssClass="text-white"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="180px"></asp:TextBox>
&nbsp;<asp:Button CssClass="btn btn-warning" ID="Button4" runat="server" Text="Search" OnClick="Button4_Click" style="height: 26px" Height="30px" Width="100px" />
                    <br />
            <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style23"></asp:Label>
                        <div class="container-fluid" style="width: 65%">
                        <asp:GridView ID="GridView1" runat="server" Height="16px" Width="683px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style24"> 
                            <AlternatingRowStyle CssClass="bg-dark text-light" />
                            <Columns >
                                <asp:BoundField DataField="User_id" HeaderText="User_id" SortExpression="User_id" InsertVisible="False" ReadOnly="True" >
                                 </asp:BoundField>
                                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" >
                                 </asp:BoundField>
                                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" >
                                 </asp:BoundField>
                                <asp:BoundField DataField="access_type" HeaderText="access_type" SortExpression="access_type" >
                                 </asp:BoundField>
                                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" >
                                 </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                            </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Gamer-ManagementConnectionString3 %>" SelectCommand="SELECT 
User_profile.User_id, User_profile .first_name, User_profile .last_name,  User_profile .access_type, User_profile .department
FROM
User_profile 
JOIN Signup
ON User_profile.User_id = Signup.User_id
WHERE
User_profile.department like'%' + @department + '%' AND
User_profile.first_name like '%' + @first_name + '%'" DeleteCommand="delete from User_profile where
User_profile.first_name like '%' + @first_name + '%'">
                            <DeleteParameters>
                                <asp:Parameter Name="first_name" />
                            </DeleteParameters>
                            
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="department" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox1" Name="first_name" PropertyName="Text" />
                            </SelectParameters>
                            
                        </asp:SqlDataSource>
                   
        </div>
    </form>
</body>
</html>

