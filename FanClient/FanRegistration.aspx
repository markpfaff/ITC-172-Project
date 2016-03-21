<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanRegistration.aspx.cs" Inherits="FanRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fan Registration</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Fan Registration</h1>
     <table>
            <tr>
                <td>Fan Name</td>
                <td>
                    <asp:TextBox ID="FanNameTextBox" runat="server"></asp:TextBox>
                </td>
                 <td>
                     <asp:RequiredFieldValidator 
                         ID="FanNameRequired" runat="server" 
                         ErrorMessage="Fan Name Required" ControlToValidate="FanNameTextBox">
                     </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                </td>
                 <td>

                     <asp:RegularExpressionValidator 
                         ID="RegularExpressionValidator1" 
                         runat="server" ControlToValidate="EmailTextBox" 
                         ErrorMessage="Not a Valid Email" 
                         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">

                     </asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                     <asp:RequiredFieldValidator 
                         ID="UserNameRequired" runat="server" 
                         ErrorMessage="User Name Required" ControlToValidate="UsernameTextBox">
                     </asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                     <asp:RequiredFieldValidator 
                         ID="PasswordRequired" runat="server" 
                         ErrorMessage="Password Required" ControlToValidate="PasswordTextBox">
                     </asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator" runat="server" 
                        ErrorMessage="Passwords don't match" ControlToValidate="ConfirmTextBox" 
                        ControlToCompare="PasswordTextBox">

                    </asp:CompareValidator>
                </td>
               </tr>
         <tr>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
         <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Login</asp:HyperLink>

                </td>
         </tr>
        </table>
    </div>
    </form>
</body>
</html>
