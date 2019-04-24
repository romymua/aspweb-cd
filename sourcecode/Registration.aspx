<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="YellowMotors.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form2" runat="server">
        <div class="login-panel">
            <div class="container">
            <table class="registration-table">
                <tr>
                    <td colspan="2" style="font-size:24px;text-align:center;margin-bottom:10px">Signup</td>
                </tr>
                <tr>
                    <td style="width: 130px">User ID</td>
                    <td>
                        <asp:TextBox ID="Suid" runat="server" Height="22px" Width="192px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Suid" ErrorMessage="User ID should be 8 characters in length" ForeColor="#CC0000" ValidationExpression="^[0-9a-zA-Z]{8}$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 130px">Name</td>
                    <td>
                        <asp:TextBox ID="Sname" runat="server" Height="22px" Width="192px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Sname" ErrorMessage="Name is required." ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 130px">Password</td>
                    <td>
                        <asp:TextBox ID="Spwd" runat="server" Height="27px" Width="188px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Spwd" ErrorMessage="Password is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 130px">Confirm Password</td>
                    <td>
                        <asp:TextBox ID="Cspwd" runat="server" Height="27px" Width="188px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Spwd" ControlToValidate="Cspwd" ErrorMessage="Passwords should be the same" ForeColor="#CC0000">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 130px">Email Address</td>
                    <td>
                        <asp:TextBox ID="Semail" runat="server" Height="22px" Width="192px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Semail" ErrorMessage="Email is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 130px">
                        <asp:Button ID="Button1" runat="server" OnClick="Signup" Text="Signup" Width="83px" />
                    </td>
                    <td style="width: 200px">
                        <asp:Label ID="signupMsg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="39px" />
                    </td>
                </tr>
            </table>
            </div>
        </div>
    </form>
</asp:Content>
