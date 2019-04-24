<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YellowMotors.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="login-panel">
            <div class="container">
            <table class="login-table">
                <tr>
                    <td colspan="2" style="font-size:24px;text-align:center;margin-bottom:10px">User Login</td>
                </tr>
                <tr>
                    <td style="width: 43px">User ID</td>
                    <td>
                        <asp:TextBox ID="Uid" runat="server" Height="22px" Width="192px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Uid" ErrorMessage="User ID should be 8 characters in length" ForeColor="#CC0000" ValidationExpression="^[0-9a-zA-Z]{8}$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 43px">Password</td>
                    <td>
                        <asp:TextBox ID="Pwd" runat="server" Height="27px" Width="188px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Pwd" ErrorMessage="Password is required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 43px">
                        <asp:Button ID="Button1" runat="server" OnClick="Login" Text="Login" Width="83px" />
                    </td>
                    <td style="width: 200px">
                        <asp:Label ID="LoginMsg" runat="server" ForeColor="#CC0000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
            </table>
            </div>
        </div>
    </form>
</asp:Content>
