<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User profile.aspx.cs" Inherits="gamer_management2.User_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 160px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style7 {
            width: 201px;
            height: 23px;
        }
        .auto-style8 {
            width: 106px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
            margin-left: 40px;
        }
        .auto-style10 {
            width: 106px;
        }
        .auto-style11 {
            width: 201px;
            font-weight: bold;
        }
        .auto-style12 {
            width: 105px;
        }
        .auto-style13 {
            width: 203px;
            font-weight: bold;
        }
        .auto-style15 {
            width: 190px;
            font-weight: bold;
        }
        .auto-style16 {
            width: 101px;
        }
        .auto-style19 {
            font-weight: bold;
        }
        .auto-style20 {
            width: 101px;
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
        .auto-style22 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style23 {
            width: 89%;
        }
        .auto-style24 {
            width: 55px;
            font-weight: bold;
        }
        .auto-style27 {
            height: 55px;
            text-align: center;
        }
        .auto-style28 {
            width: 194px;
            font-weight: bold;
        }
        .auto-style29 {
            height: 55px;
            text-align: left;
            width: 163px;
        }
        .auto-style31 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style32 {
            text-align: center;
        }
        .auto-style33 {
            width: 100%;
            height: 9px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style33">
                <tr>
                    <td class="auto-style29">
                            <em>
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Welcome" Width="162px" BackColor="#993333" ForeColor="#FFFFCC" Height="33px" CausesValidation="false" OnClick="Button1_Click1"/>
                            </em>
                    </td>
                    <td class="auto-style32">
                        <asp:Label ID="gmlbl" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="GAMER MANAGEMENT" CssClass="auto-style19"></asp:Label>
                    </td>
                    <td class="auto-style27">
                        <asp:LinkButton ID="logoutbtn" runat="server" CausesValidation="false" OnClick="logoutbtn_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <table class="auto-style31">
                <tr>
                    <td class="auto-style1">
                        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style19">
                            <asp:Button ID="mpbtn" runat="server" Text="My Profile" Width="162px" Font-Bold="True" BackColor="#993333" ForeColor="#FFFFCC" Height="36px" OnClick="mpbtn_Click" CausesValidation="false"/>
                        </asp:Panel>
                    </td>
                    <td class="auto-style28">
                        <asp:Label ID="uplbl" runat="server" Font-Bold="True" Font-Size="X-Large" Text="USER PROFILE" CssClass="auto-style22"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <asp:Label ID="emailbl" runat="server" Font-Bold="True" Text="Email Address" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style9">
                        <br />
                        <asp:TextBox ID="email" runat="server" Width="209px" CssClass="auto-style19"></asp:TextBox>
                        <b>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</b><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email ID not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="pslbl" runat="server" Font-Bold="True" Text="Password" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <br />
                        <asp:TextBox ID="password" runat="server" Width="209px" CssClass="auto-style19" TextMode="Password"></asp:TextBox>
                        <b>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="password" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="fnlbl" runat="server" Font-Bold="True" Text="First Name" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <br />
                        <asp:TextBox ID="fntxt" runat="server" Width="209px" CssClass="auto-style19"></asp:TextBox>
                        <b>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="fntxt" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        </b>
                    </td>
                </tr>
            </table>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">
                        <br />
                        <asp:Label ID="lnlbl" runat="server" Font-Bold="True" Text="Last Name" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <asp:TextBox ID="lntxt" runat="server" Width="209px" CssClass="auto-style19"></asp:TextBox>
                        <b>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="lntxt" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </b>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="doblbl" runat="server" Font-Bold="True" Text="Date of Birth" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <br />
                        <asp:TextBox ID="dobtxt" runat="server" Width="209px" CssClass="auto-style19"></asp:TextBox>
                        <b>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="dobtxt" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="accesslbl" runat="server" Font-Bold="True" Text="Access Type" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <asp:Localize ID="Localize1" runat="server"></asp:Localize>
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="219px" CssClass="auto-style19">
                            <asp:ListItem>Gamer</asp:ListItem>
                            <asp:ListItem>Host</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="phnlbl" runat="server" Font-Bold="True" Text="Phone Number " CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <br />
                        <asp:TextBox ID="phntxt" runat="server" Width="209px" CssClass="auto-style19" MaxLength="10" TextMode="Number"></asp:TextBox>
                        <b>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="phntxt" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        </b>
                    </td>
                </tr>
            </table>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Label ID="dptlbl" runat="server" Font-Bold="True" Text="Department" CssClass="auto-style19"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="219px" CssClass="auto-style19">
                            <asp:ListItem>Real-Time Strategy</asp:ListItem>
                            <asp:ListItem>Technology</asp:ListItem>
                            <asp:ListItem>Board Game</asp:ListItem>
                            <asp:ListItem>Card Game</asp:ListItem>
                            <asp:ListItem>Arcade Game</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Label ID="adrslbl" runat="server" Font-Bold="True" Text="Address" CssClass="auto-style19"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="adrstxt" runat="server" Width="209px" ValidateRequestMode="Enabled" CssClass="auto-style19"></asp:TextBox>
                        <b>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="adrstxt" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        </b>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="adrstxt0" runat="server" Width="209px"  ValidateRequestMode="Enabled" CssClass="auto-style19"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td>
                        <asp:Button ID="ebtn" runat="server" Text="Edit" Width="57px" Font-Bold="True"  CssClass="auto-style19" OnClick="ebtn_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
            </table>
            <b>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            </b>
        </div>
    </form>
</body>
</html>
