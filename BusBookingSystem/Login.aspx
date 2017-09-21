<%@ Page Title="" Language="C#" MasterPageFile="~/BusMaster1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BusBookingSystem.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="lbl_username" runat="server" Text="UserName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_username" runat="server" Width="213px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_username" ErrorMessage="* UserName required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="213px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_password" ErrorMessage="* Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" />&nbsp; &nbsp;<asp:Button ID="btn_cancel" runat="server" Text="Cancel" OnClick="btn_cancel_Click" />
            &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" CausesValidation="False" OnClick="Button1_Click" Text="Not registered yet" />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_invalid" runat="server" ForeColor="#CC0000" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
