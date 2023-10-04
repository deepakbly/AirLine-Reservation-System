<%@ Page Title="" Language="C#" MasterPageFile="~/Clients/Client.Master" AutoEventWireup="true" CodeBehind="Ticket_Cancellation.aspx.cs" Inherits="AirLineReservation.Clients.Ticket_Cancellation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="tbl">
        <tr>
            <td class="tblhead" colspan="2" style="text-align: center">
                <span><span>
                   
                    CANCEL RESERVATION</span></span></td>
        </tr>
         <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
        <tr>
            <td style="text-align:right">
                <asp:Label ID="Label1" runat="server" Text="Passenger Id" ForeColor="black"></asp:Label></td>
            <td style="width: 263px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
                        <td class="style3">
                        </td>
                    </tr>
        <tr>
            <td style="width: 165px;text-align:right">
                <asp:Label ID="Label2" runat="server" Text="Passenger Name" ForeColor="black"></asp:Label></td>
            <td style="width: 263px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
                        <td class="style3">
                        </td>
                    </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" BackColor="#d83636" ForeColor="White"  Text="Submit" Height="30px" Width="74px" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label" runat="server" ForeColor="Black" Text="Label" Visible="False"></asp:Label></td>
        </tr>
    </table>
    <br />
    &nbsp;<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
