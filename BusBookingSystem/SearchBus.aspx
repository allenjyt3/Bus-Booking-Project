<%@ Page Title="" Language="C#" MasterPageFile="~/BusMaster1.Master" AutoEventWireup="true" CodeBehind="SearchBus.aspx.cs" Inherits="BusBookingSystem.SearchBus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_date" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_date" runat="server"></asp:TextBox> &nbsp;&nbsp;
                <asp:ImageButton ID="imgbtn_calendarsearch" runat="server"  ImageUrl="~/calendar.png" CausesValidation="False" Height="18px" Width="24px" OnClick="imgbtn_calendarsearch_Click" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Calendar ID="cal_date" runat="server" OnSelectionChanged="cal_date_SelectionChanged"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:GridView ID="gridview_searchBus" runat="server" OnSelectedIndexChanged="gridview_searchBus_SelectedIndexChanged" Width="249px">
                </asp:GridView>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
