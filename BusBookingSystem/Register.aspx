<%@ Page Title="" Language="C#" MasterPageFile="~/BusMaster1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BusBookingSystem.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_usernamereg" runat="server" Text="UserName"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txt_usernamereg" runat="server" Width="212px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_usernamereg" ErrorMessage="* UserName Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lbl_passwordreg" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_passwordreg" runat="server" Width="212px" Height="18px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_passwordreg" ErrorMessage="* Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_confirmpassword" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style2">
              
                <asp:TextBox ID="txt_cpwdreg" runat="server" Width="210px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Cannot be empty" ForeColor="Red" ControlToValidate="txt_cpwdreg"></asp:RequiredFieldValidator>&nbsp;&nbsp&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="* Password missmatch" ControlToCompare="txt_passwordreg" ControlToValidate="txt_cpwdreg" ForeColor="Blue"></asp:CompareValidator>
              
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
              
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_register" runat="server" Text="Register" Height="26px" Width="70px" OnClick="btn_register_Click" />   &nbsp;<asp:Button ID="btn_cancel2" runat="server" Text="Cancel" OnClick="btn_cancel2_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">Already a  registered user?</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
