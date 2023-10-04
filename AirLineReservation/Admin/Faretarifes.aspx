<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Faretarifes.aspx.cs" Inherits="AirLineReservation.Admin.Faretarifes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
            <table class="tbl">
                <tr>
                    <td class="tblhead" colspan="2">
                        <span>FARES AND TARIFFS</span><br />
                    </td>
                </tr>
                 <tr>
                        <td class="style3">
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                        </td>
                    </tr>
                <tr>
                        <td class="style3">
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                        </td>
                    </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" rules="all" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="flightid"
                            DataSourceID="SqlDataSource1" Font-Size="12pt" ForeColor="#333333" GridLines="None">
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Flightname" HeaderText="Flight Name" SortExpression="Flightname" />
                                <asp:BoundField DataField="flightid" HeaderText="Flight Id" ReadOnly="True" SortExpression="flightid" />
                                <asp:BoundField DataField="Fromstation" HeaderText="From Station" SortExpression="Fromstation" />
                                <asp:BoundField DataField="Tostation" HeaderText="To Station" SortExpression="Tostation" />
                                <asp:BoundField DataField="firstclass" HeaderText="First Class" SortExpression="firstclass" />
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
                            DeleteCommand="DELETE FROM [Fares] WHERE [flightid] = @flightid" InsertCommand="INSERT INTO [Fares] ([Flightname], [flightid], [Fromstation], [Tostation], [firstclass], [Bussinessclass], [economicclass], [dateandtimings]) VALUES (@Flightname, @flightid, @Fromstation, @Tostation, @firstclass, @Bussinessclass, @economicclass, @dateandtimings)"
                            SelectCommand="SELECT * FROM [Fares]" UpdateCommand="UPDATE [Fares] SET [Flightname] = @Flightname, [Fromstation] = @Fromstation, [Tostation] = @Tostation, [firstclass] = @firstclass, [Bussinessclass] = @Bussinessclass, [economicclass] = @economicclass, [dateandtimings] = @dateandtimings WHERE [flightid] = @flightid">
                            <DeleteParameters>
                                <asp:Parameter Name="flightid" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Flightname" Type="String" />
                                <asp:Parameter Name="Fromstation" Type="String" />
                                <asp:Parameter Name="Tostation" Type="String" />
                                <asp:Parameter Name="firstclass" Type="Decimal" />
                                <asp:Parameter Name="Bussinessclass" Type="Decimal" />
                                <asp:Parameter Name="economicclass" Type="Decimal" />
                                <asp:Parameter Name="dateandtimings" Type="String" />
                                <asp:Parameter Name="flightid" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Flightname" Type="String" />
                                <asp:Parameter Name="flightid" Type="Int32" />
                                <asp:Parameter Name="Fromstation" Type="String" />
                                <asp:Parameter Name="Tostation" Type="String" />
                                <asp:Parameter Name="firstclass" Type="Decimal" />
                                <asp:Parameter Name="Bussinessclass" Type="Decimal" />
                                <asp:Parameter Name="economicclass" Type="Decimal" />
                                <asp:Parameter Name="dateandtimings" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
            </table>
      
    <br />
    <br />
</asp:Content>
