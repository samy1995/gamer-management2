<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="gamer_management2.Users" %>
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
                        <asp:Button ID="Button1" runat="server" Text="Welcome" Width="162px" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" OnClick="Button1_Click" />
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
                        <asp:Button ID="Button2" runat="server" Text="My Profile" Width="162px" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style10" colspan="2"><strong>
                        &nbsp;</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button3" runat="server" Text="Users" Width="162px" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style10" colspan="2"><strong>
                        <asp:Label ID="Label2" runat="server" Text="USERS" CssClass="auto-style20"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style21" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="20px" Text="View" Width="85px" OnClick="Button5_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="20px" Text="Edit" Width="85px" OnClick="Button6_Click" />
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
&nbsp;<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
&nbsp;<asp:Button ID="Button4" runat="server" Text="Search" OnClick="Button4_Click" style="height: 26px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style16" colspan="2">
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource2" Width="679px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
<%--                                <asp:CommandField ShowSelectButton="True" />--%>
                                 <asp:TemplateField>
                                <ItemTemplate>
                        <asp:CheckBox ID="chck" runat="server" 
                            AutoPostBack="true" />
                            <%--Checked='<%# Convert.ToBoolean(Eval("")) %>'
                            Text='<%# Eval("Approved").ToString().Equals("True") ? " Approved " : " Not Approved " %>' />--%>
                    </ItemTemplate>                    
                </asp:TemplateField>
                                <asp:BoundField DataField="User_id" HeaderText="User_id" SortExpression="User_id" />
                                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                                <asp:BoundField DataField="access_type" HeaderText="access_type" SortExpression="access_type" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Gamer-ManagementConnectionString3 %>" SelectCommand="SELECT 
User_profile.User_id, User_profile .first_name, User_profile .last_name,  User_profile .access_type, User_profile .department
FROM
User_profile 
JOIN Signup
ON User_profile.User_id = Signup.User_id
WHERE
User_profile.department like'%' + @department + '%' AND
User_profile.first_name like '%' + @first_name + '%'
">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="department" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="TextBox1" Name="first_name" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Gamer-ManagementConnectionString %>" SelectCommand="SELECT 
user_profile.User_id, user_profile .first_name, user_profile .last_name, user_profile .department, user_profile .access_type
FROM
user_profile 
JOIN Login 
ON user_profile.User_id = Login.User_id
WHERE
first_name like'%' + @first_name + '%'
ORDER BY
first_name DESC">
                            <SelectParameters>
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

