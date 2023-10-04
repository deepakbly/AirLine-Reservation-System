<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Airline_Schedule.aspx.cs" Inherits="AirLineReservation.Admin.Airline_Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">

    .style3
    {
        height: 19px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div style="text-align: center">
        <table class="tbl">
            <tr>
                <td class="tblhead" colspan="2" style="height: 27px">
                    <span >AIRLINE SCHEDULE</span></td>
            </tr>
            <tr>
                        <td class="style3">
                        </td>
                    </tr>
            <tr>
                <td colspan="2" style="height: 154px" >
                    <asp:GridView ID="GridView1" rules="all" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="flightid"
                        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="flightid" HeaderText="Flight Id" ReadOnly="True" SortExpression="flightid" />
                            <asp:BoundField DataField="Flightname" HeaderText="Flight Name" SortExpression="Flightname" />
                            <asp:BoundField DataField="Fromstation" HeaderText="From Station" SortExpression="Fromstation" />
                            <asp:BoundField DataField="Tostation" HeaderText="To Station" SortExpression="Tostation" />
                            <asp:BoundField DataField="dateandtimings" HeaderText="Date and Timings" SortExpression="dateandtimings" />
                        </Columns>
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AirlineConnectionString %>"
                        SelectCommand="SELECT [flightid], [Flightname], [Fromstation], [Tostation], [dateandtimings] FROM [schedule]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                        <td class="style3">
                        </td>
                    </tr>
        </table>
    </div>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;&nbsp;
</asp:Content>
