<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Update_Schedule.aspx.cs" Inherits="AirLineReservation.Admin.Update_Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">

    .style3
    {
        height: 19px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
                <table class="tbl">
                   
                    <tr>
                        <td class="tblhead">
                            UPDATE SCHEDULE</td>
                    </tr>
                   
                    <tr>
                        <td class="style3">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 158px">
                            <asp:GridView ID="GridView1" rules="all" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="flightid"
                                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
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
</asp:Content>
