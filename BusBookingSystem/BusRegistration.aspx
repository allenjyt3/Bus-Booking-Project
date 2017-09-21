<%@ Page Title="" Language="C#" MasterPageFile="~/BusMaster1.Master" AutoEventWireup="true" CodeBehind="BusRegistration.aspx.cs" Inherits="BusBookingSystem.BusRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style:solid;
            border-width:2px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 25px;
        }

        .auto-style5 {
            height: 21px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1" >
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lbl_BusType" runat="server" Text="Bus Type"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_BusType" runat="server" Width="228px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_BusType" ErrorMessage="Please include the bus type" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lbl_BusNumber" runat="server" Text="Bus Number"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_BusNumber" runat="server" Width="229px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_BusNumber" ErrorMessage="Please include the bus number." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lbl_NoOfSeats" runat="server" Text="Number Of Seats"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_NoOfSeats" runat="server" TextMode="Number" Width="229px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_NoOfSeats" ErrorMessage="Please include the number of seats." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lbl_BusRoute" runat="server" Text="Route"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_BusRoute" runat="server" Width="229px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_BusRoute" ErrorMessage="Please include the bus route." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lbl_datetime" runat="server" Text="Date &amp; Time"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_DateTime" runat="server" TextMode="DateTime" Width="230px"></asp:TextBox>
                <asp:ImageButton ID="imgbtn_calender" runat="server" Width="24px" ImageUrl="~/calendar.png" Height="21px" CausesValidation="False" OnClick="imgbtn_calender_Click" /> &nbsp; &nbsp; &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_DateTime" ErrorMessage="Date and time are required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Calendar ID="cal_DateandTime" runat="server" OnSelectionChanged="cal_DateandTime_SelectionChanged"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_BusRegister" runat="server" Text="Register" OnClick="btn_BusRegister_Click" /> &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp 
                <asp:Button ID="btn_show" runat="server" Text="Show bus details" OnClick="btn_show_Click" CausesValidation="False" />
                &nbsp
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
    </table>
</asp:Content>
