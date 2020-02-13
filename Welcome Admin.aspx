<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome Admin.aspx.cs" Inherits="gamer_management2.Welcome_Admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        html {
            height: 100%;
            /* The image used */
            background-image: url("admin11.jpg");
            /* Full height */
            height: 100%;
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .auto-style1 {
            width: 172px;
            margin-left: 80px;
        }
        .auto-style2 {
            width: 100%;
            height: 156px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            width: 172px;
        }
    </style>
</head>
<body style="width: 1299px; height: 166px">
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" OnClick="Button1_Click1" Text="Welcome" Width="162px" />
                </td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Logout</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button2" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" OnClick="Button2_Click1" Text="My Profile" Width="162px" />
                </td>
                <td class="auto-style4" colspan="2" rowspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#990000" Text="WELCOME GAMER"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button3" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" Text="Users" Width="162px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button4" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" Text="Access Request" Width="162px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
