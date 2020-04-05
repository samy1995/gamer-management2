<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User Admin.aspx.cs" Inherits="gamer_management2.User_Admin" %>

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
        .auto-style22 {
            color: #CC0000;
        }
        .auto-style23 {
            color: #FF0000;
        }
        .auto-style24 {
            margin-left: 11px;
        }
        .auto-style25 {
            color: #CC0000;
            text-decoration: none;
        }
        </style>
</head>
<body class="bg-dark">
      <form class="form-group" id="form1" runat="server">
        <div class="text-center">
        <asp:Label ID="gmlbl" runat="server" Font-Bold="True" Font-Size="42pt" Text="GAMER MANAGEMENT" CssClass="auto-style33" style="color: #FFFFFF"></asp:Label>
        <div class="text-right">
            <asp:LinkButton ID="logoutbtn" runat="server" OnClick="LinkButton1_Click" CssClass="auto-style25">Logout</asp:LinkButton>
        </div>
            <div class="text-left">
            
                        <asp:Label ID="uplbl" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="USERS" CssClass="auto-style22" style="color: #CC0000"></asp:Label>
                        <br />
            <asp:Button CssClass="btn btn-warning" ID="Button10" runat="server" Font-Bold="True" Text="Welcome" Width="166px" Height="37px" CausesValidation="false" OnClick="Button10_Click"/>
                        <br />
                <asp:Button CssClass="btn btn-warning" ID="Button11" runat="server" Text="My Profile" Width="166px" Font-Bold="True" Height="37px" CausesValidation="false" OnClick="Button11_Click"/>
        <br />
                <asp:Button CssClass="btn btn-warning" ID="Button12" runat="server" Text="Users" Width="166px" Font-Bold="True" Height="37px" CausesValidation="false" OnClick="Button12_Click"/>
              <br />
                <asp:Button CssClass="btn btn-warning" ID="Button13" runat="server" Text="Access Request" Width="166px" Font-Bold="True" Height="37px" CausesValidation="false" OnClick="Button13_Click"/>
                    
        </div>
  <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button  CssClass="btn btn-warning" ID="Button8" runat="server" Height="30px" Text="Create" Width="100px" />
                        &nbsp;&nbsp;
                        <asp:Button  CssClass="btn btn-warning" ID="Button5" runat="server" Height="30px" Text="View" Width="100px" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button  CssClass="btn btn-warning" ID="Button6" runat="server" Height="30px" Text="Edit" Width="100px" />
                    &nbsp;&nbsp;
                        <asp:Button  CssClass="btn btn-warning" ID="Button9" runat="server"  Height="30px" Text="Delete" Width="100px" CommandName="Delete Row" OnClick="Button9_Click1" />
            <asp:Label ID="Label3" runat="server" Text="Department" CssClass="text-white"></asp:Label>
&nbsp;<asp:DropDownList CssClass="btn btn-warning dropdown-toggle" ID="DropDownList1" runat="server" Height="40px" Width="180px">
                            <asp:ListItem>Real-Time Strategy</asp:ListItem>
                            <asp:ListItem>Technology</asp:ListItem>
                            <asp:ListItem>Board Game</asp:ListItem>
                            <asp:ListItem>Card Game</asp:ListItem>
                            <asp:ListItem>Arcade Game</asp:ListItem>
                        </asp:DropDownList>
                <br />
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
                                 <asp:TemplateField>
                                     <ItemTemplate>
                                         <asp:CheckBox ID="CheckBox1" runat="server" />
                                     </ItemTemplate>
                                     <ControlStyle Width="40px" />
                                     <ItemStyle Width="40px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="User_id" HeaderText="User Id" SortExpression="User_id" >
                                    <ControlStyle Font-Bold="False" Font-Size="Medium" />
                                    <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>
                                <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" >
                                    <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>
                                <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" >
                                    <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>
                                <asp:BoundField DataField="department" HeaderText="Department" SortExpression="department" >
                                    <ItemStyle HorizontalAlign="Center" />
                                 </asp:BoundField>
                                <asp:BoundField DataField="access_type" HeaderText="Access Type" SortExpression="access_type" >
                                    <ItemStyle HorizontalAlign="Center" />
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
                                <asp:ControlParameter ControlID="DropDownList1" Name="department" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="TextBox1" Name="first_name" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                  
        </div>
    </form>
</body>
</html>

                    