<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" CodeFile="Login.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1>Log In</h1>
<div class="login">
    <table class="login-style1">
        <tr>
            <td class="login-style3">Username/Email Address</td>
            <td class="login-style6">
                <asp:TextBox ID="tb_li_UserName" runat="server" Width="400px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_li_UserName" runat="server" BackColor="White" BorderColor="Red" ControlToValidate="tb_li_UserName" ErrorMessage="Please input a valid username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="login-style4">Password</td>
            <td class="login-style5">
                <asp:TextBox ID="tb_li_PWord" runat="server" Width="400px" OnTextChanged="tb_li_PWord_TextChanged" TextMode="Password"></asp:TextBox>
            </td>
            <td class="login-style2">
                <asp:RequiredFieldValidator ID="rfv_li_PWord" runat="server" ControlToValidate="tb_li_PWord" ErrorMessage="Please input your password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="login-style4">
                <asp:Button ID="btn_Clear" runat="server" Text="Clear" BorderColor="#0099FF" ForeColor="#0099FF" Width="150px" />
            </td>
            <td class="login-style5">
                <asp:Button ID="btn_Submit" runat="server" Text="Submit" BackColor="#0099FF" ForeColor="White" Width="150px" OnClick="btn_Submit_Click" />
            </td>
            <td class="login-style2"></td>
        </tr>
    </table>
</div>
</asp:Content>

