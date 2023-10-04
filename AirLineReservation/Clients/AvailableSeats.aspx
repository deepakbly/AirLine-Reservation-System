﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Clients/Client.Master" AutoEventWireup="true" CodeBehind="AvailableSeats.aspx.cs" Inherits="AirLineReservation.Clients.AvailableSeats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="tbl">
            <tr>
                <td class="tblhead" colspan="2">
                    <span >
        AVAILABLE SEATS</span></td>
            </tr>
         <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
            <tr>
                <td colspan="2" style="height: 107px">
                    <asp:GridView ID="GridView1" rules="all" runat="server" AutoGenerateColumns="False" CellPadding="4" style="border-color: #b95252;" DataKeyNames="flightid"
                        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="flightid" HeaderText="Flight Id" ReadOnly="True" SortExpression="flightid" />
                            <asp:BoundField DataField="Flightname" HeaderText="Flight Name" SortExpression="Flightname" />
                            <asp:BoundField DataField="Fromstation" HeaderText="From Station" SortExpression="Fromstation" />
                            <asp:BoundField DataField="Tostation" HeaderText="To Station" SortExpression="Tostation" />
                            <asp:BoundField DataField="Firstclass" HeaderText="First Class" SortExpression="Firstclass" />
                            <asp:BoundField DataField="Bussinessclass" HeaderText="Bussiness Class" SortExpression="Bussinessclass" />
                            <asp:BoundField DataField="economicclass" HeaderText="Economic Class" SortExpression="economicclass" />
                            <asp:BoundField DataField="dateandtimings" HeaderText="Date and Timings" SortExpression="dateandtimings" />
                        </Columns>
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AirlineConnectionString %>"
                        DeleteCommand="DELETE FROM [schedule] WHERE [flightid] = @flightid" InsertCommand="INSERT INTO [schedule] ([flightid], [Flightname], [Fromstation], [Tostation], [Firstclass], [Bussinessclass], [economicclass], [dateandtimings]) VALUES (@flightid, @Flightname, @Fromstation, @Tostation, @Firstclass, @Bussinessclass, @economicclass, @dateandtimings)"
                        SelectCommand="SELECT * FROM [schedule]" UpdateCommand="UPDATE [schedule] SET [Flightname] = @Flightname, [Fromstation] = @Fromstation, [Tostation] = @Tostation, [Firstclass] = @Firstclass, [Bussinessclass] = @Bussinessclass, [economicclass] = @economicclass, [dateandtimings] = @dateandtimings WHERE [flightid] = @flightid">
                        <DeleteParameters>
                            <asp:Parameter Name="flightid" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Flightname" Type="String" />
                            <asp:Parameter Name="Fromstation" Type="String" />
                            <asp:Parameter Name="Tostation" Type="String" />
                            <asp:Parameter Name="Firstclass" Type="Int32" />
                            <asp:Parameter Name="Bussinessclass" Type="Int32" />
                            <asp:Parameter Name="economicclass" Type="Int32" />
                            <asp:Parameter Name="dateandtimings" Type="String" />
                            <asp:Parameter Name="flightid" Type="Int32" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="flightid" Type="Int32" />
                            <asp:Parameter Name="Flightname" Type="String" />
                            <asp:Parameter Name="Fromstation" Type="String" />
                            <asp:Parameter Name="Tostation" Type="String" />
                            <asp:Parameter Name="Firstclass" Type="Int32" />
                            <asp:Parameter Name="Bussinessclass" Type="Int32" />
                            <asp:Parameter Name="economicclass" Type="Int32" />
                            <asp:Parameter Name="dateandtimings" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
         <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
        </table>
  
    <br />
    <br />
</asp:Content>
