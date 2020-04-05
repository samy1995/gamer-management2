﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit User Admin.aspx.cs" Inherits="gamer_management2.Edit_User_Admin" %>

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
        .auto-style8 {
            width: 133px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
            margin-left: 40px;
        }
        .auto-style10 {
            width: 133px;
        }
        .auto-style19 {
            font-weight: bold;
        }
        .auto-style20 {
            width: 133px;
            font-weight: bold;
        }
       
        .auto-style22 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style23 {
            width: 89%;
        }
        .auto-style24 {
            font-weight: bold;
            font-size: x-large;
            color: #CC0000;
        }
    </style>
</head>
    <body class="bg-dark">
    <form class="form-group" id="form1" runat="server">
        <div class="text-center">
        <asp:Label ID="gmlbl" runat="server" Font-Bold="True" Font-Size="42pt" Text="GAMER MANAGEMENT" CssClass="auto-style33" style="color: #FFFFFF"></asp:Label>
        <div class="text-right">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="logoutbtn_Click" CssClass="auto-style22" style="color: #CC0000; text-decoration: none">Logout</asp:LinkButton>
        </div>
            <div class="text-left">
            
                        <asp:Label ID="uplbl" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="USER PROFILE" CssClass="auto-style24"></asp:Label>
                        <br />
            <asp:Button CssClass="btn btn-warning" ID="Button1" runat="server" Font-Bold="True" Text="Welcome" Width="166px" Height="37px" CausesValidation="false" OnClick="Button1_Click"/>
                        <br />
                <asp:Button CssClass="btn btn-warning" ID="Button2" runat="server" Text="My Profile" Width="166px" Font-Bold="True" Height="37px" CausesValidation="false" OnClick="Button2_Click"/>
        <br />
                <asp:Button CssClass="btn btn-warning" ID="Button3" runat="server" Text="Users" Width="166px" Font-Bold="True" Height="37px" CausesValidation="false" OnClick="Button3_Click"/>
              <br />
                <asp:Button CssClass="btn btn-warning" ID="Button7" runat="server" Text="Access Request" Width="166px" Font-Bold="True" Height="37px" CausesValidation="false" OnClick="Button7_Click"/>
                    
        </div>
           
            <div class="auto-style34">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
            <table class="auto-style23 container-fluid table-dark" style="width: 67%; height: 580px;">

                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="emailbl" runat="server" Font-Bold="True" Text="Email Address" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style9">
                        <br />
                        <asp:TextBox ID="email" runat="server" Width="209px" CssClass="auto-style19"></asp:TextBox>
                        <b>&nbsp;<br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</b><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email ID not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="pslbl" runat="server" Font-Bold="True" Text="Password" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style19">
                        <br />
                        <asp:TextBox ID="password" runat="server" Width="209px" CssClass="auto-style19"></asp:TextBox>
                        <b>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="password" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="fnlbl" runat="server" Font-Bold="True" Text="First Name" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style19">
                        <br />
                        <asp:TextBox ID="fntxt" runat="server" Width="209px" CssClass="auto-style19"></asp:TextBox>
                        <b>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="fntxt" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <br />
                        <asp:Label ID="lnlbl" runat="server" Font-Bold="True" Text="Last Name" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="lntxt" runat="server" Width="209px" CssClass="auto-style19"></asp:TextBox>
                        <b>
                        <br />
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="lntxt" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </b>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="doblbl" runat="server" Font-Bold="True" Text="Date of Birth" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style19">
                        <br />
                        <asp:TextBox ID="dobtxt" runat="server" Width="209px" CssClass="auto-style19"></asp:TextBox>
                        <b>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="dobtxt" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="accesslbl" runat="server" Font-Bold="True" Text="Access Type" CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style19">
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="219px" CssClass="auto-style19">
                            <asp:ListItem>Gamer</asp:ListItem>
                            <asp:ListItem>Host</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="phnlbl" runat="server" Font-Bold="True" Text="Phone Number " CssClass="auto-style19"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style19">
                        <br />
                        <asp:TextBox ID="phntxt" runat="server" Width="209px" CssClass="auto-style19" MaxLength="10" TextMode="Number"></asp:TextBox>
                        <b>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="phntxt" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="dptlbl" runat="server" Font-Bold="True" Text="Department" CssClass="auto-style19"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style19">
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
                    <td class="auto-style10">
                        <asp:Label ID="adrslbl" runat="server" Font-Bold="True" Text="Address" CssClass="auto-style19"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="adrstxt" runat="server" Width="209px" ValidateRequestMode="Enabled" CssClass="auto-style19"></asp:TextBox>
                        <b>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="adrstxt" ErrorMessage="* Field Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        </b>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="adrstxt0" runat="server" Width="209px"  ValidateRequestMode="Enabled" CssClass="auto-style19"></asp:TextBox>
                        </td>
                </tr>
            
                </table>
              <div class="auto-style35">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                  <asp:Button CssClass="btn btn-success" ID="Button5" runat="server" Height="31px" Text="Save" Width="135px" OnClick="Button5_Click" />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button  CssClass="btn btn-success"  ID="Button6" runat="server" Height="31px" Text="Cancel" Width="135px" CausesValidation="false"/>
        </div>
                    <br />
              </div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
            <b>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            </b>
        </div>
        </div>
        <div>
            
    </form>
</body>
         
 
</html>
