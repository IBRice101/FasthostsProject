<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Sign Up</h1>
<div class="form">
    <table class="FormStyle1">
        <tr>
            <td class="FormStyle2">&nbsp;&nbsp;&nbsp; First Name*</td>
            <td class="FormStyle3">
                <asp:TextBox ID="tb_FirstName" runat="server" Width="400px" ></asp:TextBox>
            </td>
            <td>
                <!-- ControlToValidate tells the website what specifically is being validated (the text box in this case) -->
                <asp:RequiredFieldValidator ID="rfv_FirstName" runat="server" ErrorMessage="Please Input your First Name" ForeColor="Red" ControlToValidate="tb_FirstName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="FormStyle2">&nbsp;&nbsp;&nbsp; Surname*</td>
            <td class="FormStyle3">
                <asp:TextBox ID="tb_Surname" runat="server" Width="400px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_Surname" runat="server" ErrorMessage="Please Input your  Surname" ForeColor="Red" ControlToValidate="tb_Surname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="FormStyle2">&nbsp;&nbsp;&nbsp; Username*</td>
            <td class="FormStyle3">
                <asp:TextBox ID="tb_Username" runat="server" CssClass="FormStyle4" Width="400px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_Username" runat="server" ErrorMessage="Please Input your Username" ForeColor="Red" ControlToValidate="tb_Username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="FormStyle2">&nbsp;&nbsp;&nbsp; Email*</td>
            <td class="FormStyle3">
                <asp:TextBox ID="tb_Email" runat="server" Width="400px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_Email" runat="server" ControlToValidate="tb_Email" ErrorMessage="Please Input a correct Email Address" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regx_Email" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tb_Email"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="FormStyle2">&nbsp;&nbsp;&nbsp; Password*</td>
            <td class="FormStyle3">
                <asp:TextBox ID="tb_PWord" runat="server" Width="400px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_PWord" runat="server" ErrorMessage="Please Input your Password" ForeColor="Red" ControlToValidate="tb_PWord"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="FormStyle2">&nbsp;&nbsp;&nbsp; Password Confirm*</td>
            <td class="FormStyle3">
                <asp:TextBox ID="tb_PWordConf" runat="server" Width="400px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv_PWordConf" runat="server" ErrorMessage="Please Confirm your Password" ForeColor="Red" ControlToValidate="tb_PWordConf"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="FormStyle2">&nbsp;&nbsp;&nbsp; TLD Interests</td>
            <td class="FormStyle3">
                <asp:TextBox ID="tb_Int" runat="server" Height="50px" Width="400px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="button">
                <asp:Button ID="btn_Clear" runat="server" Text="Clear" BorderColor="#0099FF" ForeColor="#0099FF" Width="150px" OnClick="btn_Clear_Click1" />
            </td>
            <td class="FormStyle3">
                <asp:Button ID="btn_Submit" runat="server" Text="Submit" BackColor="#0099FF" ForeColor="White" Width="250px" OnClick="btn_Submit_Clicked" />
            </td>
            <td>Fields with an asterisk are required</td>
        </tr>
    </table>
</div>
</asp:Content>

