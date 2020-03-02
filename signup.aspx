<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="gamer_management2.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 144px;
        }
        .auto-style3 {
            width: 87%;
            height: 437px;
            margin-right: 103px;
            margin-top: 0px;
        }
        .auto-style4 {
            margin-left: 1px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-weight: bold;
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
        .auto-style11 {
            font-size: xx-small;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            text-align: left;
            margin-left: 176px;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            font-size: 38pt;
        }
        .auto-style19 {
            width: 144px;
            height: 49px;
        }
        .auto-style20 {
            width: 438px;
            height: 49px;
            text-align: left;
        }
        .auto-style24 {
            width: 280px;
        }
        .auto-style25 {
            width: 280px;
            height: 49px;
            text-align: left;
        }
        .auto-style26 {
            width: 438px;
        }
        .auto-style22 {
            font-size: xx-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">
        <asp:Label ID="Label4" runat="server" Text="GAMER MANAGEMENT" Font-Bold="True" Font-Size="XX-Large" CssClass="auto-style15"></asp:Label>
            <br />
        <div class="auto-style14">
            
            <strong>
            
            <asp:Label ID="Label3" runat="server" Height="37px" Text="Sign up" Width="122px" Font-Size="XX-Large" CssClass="auto-style11" ForeColor="#990000"></asp:Label>
            </strong>
            <br />
            <br />
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style1">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="Email Address" CssClass="auto-style12"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBox1" runat="server" Width="274px" CssClass="auto-style4"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email Address cannot be empty" ForeColor="#FF3300" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                    <td class="auto-style26">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email Not Valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <strong>
                        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style12"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBox2" runat="server" Width="274px" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password cannot be empty" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style26">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password matching expression. Password must be at least 4 characters, no more than 8 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit." ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Text="Confirm Password"></asp:Label>
                        </strong></td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBox3" runat="server" Width="274px"  TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Confirm password cannot be empty" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style26">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Does Not Match" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text="First Name"></asp:Label>
                        </strong></td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBox4" runat="server" Width="274px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="First Name cannot be empty" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style26">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Should Contain Only alphabets" ForeColor="Red" ValidationExpression="^([a-zA-z\s]{3,32})$" Font-Bold="True" Font-Size="Large"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text="Last Name"></asp:Label>
                        </strong></td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBox5" runat="server" Width="274px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Last Name cannot be empty" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style26">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Should Contain Only alphabets" ForeColor="Red" ValidationExpression="^([a-zA-z\s]{3,32})$" Font-Bold="True" Font-Size="Large"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style12" Text="Date Of Birth"></asp:Label>
                        </strong></td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBox6" runat="server" Width="274px" TextMode="Date"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Date of birth is required" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style26">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"><strong>
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style12" Text="Captcha"></asp:Label>
                        </strong></td>
                    <td class="auto-style25">
                        &nbsp;<asp:TextBox ID="TextBox7" runat="server" Height="16px" Width="273px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Captha Code Cannot be blank" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="36pt" ForeColor="#990000" CssClass="auto-style22"></asp:Label>
                    </td>
                </tr>
            </table>
                    <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-BQ12MSI;Initial Catalog=signup;Integrated Security=True"></asp:SqlDataSource>
        </div>
        </div>
        <p class="auto-style13">
            <strong>
                                    <asp:Button ID="Button1" runat="server" Text="Sign up" Width="162px" OnClick="Button1_Click" BackColor="#FFFF99" CssClass="auto-style8" ForeColor="Maroon" Font-Bold="True" Font-Size="Large" Height="34px" />
                    </strong>
        </p>
    </form>
</body>
</html>

