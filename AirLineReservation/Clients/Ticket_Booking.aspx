<%@ Page Title="" Language="C#" MasterPageFile="~/Clients/Client.Master" AutoEventWireup="true" CodeBehind="Ticket_Booking.aspx.cs" Inherits="AirLineReservation.Clients.Ticket_Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 151px;
        }
        .auto-style9 {
            width: 100px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="2" style="height: 20px">
                <span style="font-size: 16pt;"> TICKET BOOKING</span></td>
        </tr>
        <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
        <tr>
            <td style="text-align:right;color:black">
                <asp:Label ID="Label1" runat="server" Text="Passenger Name" ForeColor="black"></asp:Label></td>
            <td style="width: 100px; height: 30px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align:right">
                <asp:Label ID="Label2" runat="server" ForeColor="black" Text="Flight Id"></asp:Label></td>
            <td style="width: 100px; height: 38px">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="flightid" DataValueField="flightid" Width="155px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="text-align:right">
                <asp:Label ID="Label3" runat="server" ForeColor="black" Text="Flight Name"></asp:Label>
            </td>
            <td style="width: 100px; height: 31px">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"
                    DataTextField="Flightname" DataValueField="Flightname" Width="155px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="text-align:right">
                <asp:Label ID="Label5" runat="server" ForeColor="black" Text="From Station"></asp:Label></td>
            <td style="width: 100px; height: 32px">
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3"
                    DataTextField="Fromstation" DataValueField="Fromstation" Width="155px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="text-align:right">
                <asp:Label ID="Label6" runat="server" ForeColor="black" Text="To Station"></asp:Label></td>
            <td style="width: 100px; height: 32px">
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4"
                    DataTextField="Tostation" DataValueField="Tostation" Width="155px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="text-align:right">
                <asp:Label ID="Label7" runat="server" ForeColor="black" Text="Category"></asp:Label></td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownList5" runat="server" Width="155px">
                    <asp:ListItem>Firstclass</asp:ListItem>
                    <asp:ListItem>Bussinessclass</asp:ListItem>
                    <asp:ListItem>Economicclass</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="text-align:right">
                <asp:Label ID="Label8" runat="server" ForeColor="black" Text="Date and Timings"></asp:Label></td>
            <td style="width: 100px; height: 34px">
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource5"
                    DataTextField="dateandtimings" DataValueField="dateandtimings" Width="155px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
               <asp:Label ID="Label" runat="server" Text="Label" Visible="False"></asp:Label></td>
            <td colspan="2" align="left">
                <asp:Button ID="Button1" runat="server" BackColor="#d83636" ForeColor="white" Text="Submit" OnClick="Button1_Click" Height="29px" Width="81px" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="color:black">
                <asp:Label ID="Label16" runat="server" Text="Label" Visible="False" Width="230px"></asp:Label></td>
        </tr>
    </table>
    &nbsp;
    &nbsp;
    <div style="text-align: center">
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AirlineConnectionString2 %>" SelectCommand="SELECT [Fromstation] FROM [schedule]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AirlineConnectionString2 %>" SelectCommand="SELECT [flightid] FROM [schedule]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AirlineConnectionString2 %>" SelectCommand="SELECT [Tostation] FROM [schedule]"></asp:SqlDataSource>
        &nbsp;
    </div>
     <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AirlineConnectionString2 %>" SelectCommand="SELECT [dateandtimings] FROM [schedule]"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AirlineConnectionString2 %>" SelectCommand="SELECT [Flightname] FROM [schedule]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
