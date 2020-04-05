<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="gamer_management2.signup" %>

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
        .auto-style4 {
            margin-left: 1px;
        }
               /*html,body {
          height: 100%;
          /* The image used */
          background-image: url("game_1.jpg");

          /* Full height */
          height: 100%;

          /* Center and scale the image nicely */
          background-position: center;
          background-repeat: no-repeat;
          background-size: cover;

}*/
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
        .auto-style22 {
            font-size: xx-large;
        }
        .auto-style23 {
            margin-left: 1px;
            width: 94%;
            height: 100%;
        }
        </style>
</head>
<body  class="bg-dark" style="width: 100%; height: 100%" >
    <form id="form1" runat="server" class="auto-style23">
        <%--container-fluid p-3 my-3 big-banner--%>
        <div class="jumbotron form-group" style="width: 100%; height: 700px; text-align: center;">
           
        <asp:Label ID="Label4" runat="server" Text="GAMER MANAGEMENT" Font-Bold="True" Font-Size="42pt" CssClass="text-white" ></asp:Label>
             <br />
             <strong>
            <asp:Label ID="Label3" runat="server" Height="37px" Text="Sign up" Width="122px" Font-Size="XX-Large" CssClass="auto-style11" ForeColor="#990000" style="color: #FF5050"></asp:Label>
            <br />
            <br />
            </strong>
            
            <table class="auto-style3 table-borderless table-dark">
                <tr  class="bg-dark">
                    <td class="auto-style1">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="Email Address" CssClass="auto-style12"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style24"> </br>
                        <asp:TextBox ID="TextBox1" runat="server" Width="274px" CssClass="auto-style4"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email Address cannot be empty" ForeColor="#FF3300" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                    <td class="auto-style26">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email Not Valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr  class="bg-dark">
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
                <tr  class="bg-dark">
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
                <tr  class="bg-dark">
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
                <tr  class="bg-dark">
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
                <tr  class="bg-dark">
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
                <tr  class="bg-dark">
                    <td class="auto-style19"><strong>
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style12" Text="Captcha"></asp:Label>
                        </strong></td>
                    <td class="auto-style25">
                        &nbsp;<asp:TextBox ID="TextBox7" runat="server" Height="16px" Width="273px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Captha Code Cannot be blank" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
                    </td>
                    <td class="text-left">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="36pt" ForeColor="#990000" CssClass="auto-style22"></asp:Label>
                    </td>
                </tr>
            </table>
            </div>
        <p class="auto-style13">
              <strong>
                                    <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Sign up" Width="162px" OnClick="Button1_Click" Font-Size="Large" Height="34px" />
                    </strong>
            &nbsp;</p>
    </form>
</body>
</html>

<%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password matching expression. Password must be at least 4 characters, no more than 8 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit." ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RegularExpressionValidator>--%>