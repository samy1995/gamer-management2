<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome Host.aspx.cs" Inherits="gamer_management2.Welcome_Host" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 177px;

        }
        html {
            height: 100%;
            /* The image used */
            background-image: url("Goodbye-Mr-Iwata-1200x653.png");
            /* Full height */
            height: 100%;
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .auto-style2 {
            margin-left: 360px;
            text-align: left;
        }
        .auto-style3 {
            width: 98%;
        }
        .auto-style4 {
            text-align: right;
        }
    </style>
</head>
<body style="width: 1377px; height: 128px">
    <form id="form1" runat="server">
        <div class="auto-style4">
            <asp:LinkButton ID="logoutbtn" runat="server" CausesValidation="false" OnClick="logoutbtn_Click">Logout</asp:LinkButton>
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Welcome" Width="162px"  Height="36px" BackColor="#993333" ForeColor="#FFFFCC" OnClick="Button1_Click" />
                    </td>
                    <td rowspan="3" class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFF99" Text="WELCOME HOST"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button2" runat="server" Text="My Profile" Width="162px" Height="34px" BackColor="#993333" ForeColor="#FFFFCC" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button3" runat="server" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" Text="Users" Width="162px" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
