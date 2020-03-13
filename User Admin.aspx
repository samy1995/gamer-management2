﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User Admin.aspx.cs" Inherits="gamer_management2.User_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 197px;
        }
        .auto-style3 {
            width: 197px;
            height: 33px;
        }
        .auto-style10 {
            height: 33px;
            width: 2830px;
            text-align: left;
            margin-left: 120px;
        }
        .newStyle1 {
            font-size: large;
        }
        .auto-style14 {
            width: 197px;
            height: 34px;
        }
        .auto-style15 {
            width: 2830px;
            text-align: left;
            height: 34px;
        }
        .auto-style16 {
            width: 2830px;
            text-align: center;
        }
        .auto-style17 {
            font-size: xx-large;
        }
        html {
          height: 100%;
          /* The image used */
          background-image: url("game_1.jpg");

          /* Full height */
          height: 100%;

          /* Center and scale the image nicely */
          background-position: center;
          background-repeat: no-repeat;
          background-size: cover;

}
        .auto-style18 {
            height: 33px;
            width: 3035px;
            text-align: center;
        }
        .auto-style19 {
            height: 33px;
            text-align: right;
        }
        .auto-style20 {
            font-size: x-large;
        }
        .auto-style21 {
            height: 33px;
            width: 2830px;
            text-align: center;
            margin-left: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button10" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" OnClick="Button10_Click" Text="Welcome" Width="162px" />
                    </td>
                    <td class="auto-style18"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text="GAMER MANAGEMENT"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                    </td>
                    <td class="auto-style19">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button11" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" OnClick="Button11_Click" Text="My Profile" Width="162px" />
                    </td>
                    <td class="auto-style10" colspan="2"><strong>
                        &nbsp;</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button12" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" OnClick="Button12_Click" Text="Users" Width="162px" />
                    </td>
                    <td class="auto-style10" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button13" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" OnClick="Button13_Click" Text="Access Request" Width="162px" />
                    </td>
                    <td class="auto-style10" colspan="2"><strong>
                        <asp:Label ID="Label2" runat="server" Text="USERS" CssClass="auto-style20"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style21" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="20px" Text="Create" Width="85px" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="20px" Text="View" Width="85px" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="20px" Text="Edit" Width="85px" />
                    &nbsp;&nbsp;
                        <asp:Button ID="Button9" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="20px" Text="Delete" Width="85px" CommandName="Delete Row" OnClick="Button9_Click1" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15" colspan="2">
                        <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="160px">
                            <asp:ListItem>Real-Time Strategy</asp:ListItem>
                            <asp:ListItem>Technology</asp:ListItem>
                            <asp:ListItem>Board Game</asp:ListItem>
                            <asp:ListItem>Card Game</asp:ListItem>
                            <asp:ListItem>Arcade Game</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Search"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button4" runat="server" Text="Search" OnClick="Button4_Click" style="height: 26px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style16" colspan="2">
                        <br />
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="34px" Width="598px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"> <%--OnRowCommand="GridView1_RowCommand"--%>
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <%--<asp:CommandField ShowSelectButton="True" />--%>
                                 <asp:TemplateField>
                                     <ItemTemplate>
                                         <asp:CheckBox ID="CheckBox1" runat="server" />
                                     </ItemTemplate>
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
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
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
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
