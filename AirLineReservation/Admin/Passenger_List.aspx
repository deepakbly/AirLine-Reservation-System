<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Passenger_List.aspx.cs" Inherits="AirLineReservation.Admin.Passenger_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">

    .style3
    {
        height: 19px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AirlineConnectionString %>"
        SelectCommand="SELECT [flightid] FROM [schedule]"></asp:SqlDataSource>
    <table class="tbl">
        <tr>
            <td colspan="2" style="text-align: center" class="tblhead">
                <span>PASSENGER LIST</span></td>
        </tr>
        <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
        <tr >
            <td style="width: 16px; height: 24px;text-align:right;color:black">
                <span id="ContentPlaceHolder1_Label1" style="display:inline-block;width:71px;">Flight id</span>
            </td>
            <td style="width: 69px; height: 24px;">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="flightid" DataValueField="flightid">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2" align=center>
                <asp:Button ID="Button1" runat="server" style="background-color:#2D71FF;color:white" Text="Submit" OnClick="Button1_Click" Height="29px" Width="79px" /></td>
        </tr>
        <tr>
                        <td class="style3">
                        </td>
                    </tr>
        <tr>
            <td colspan="2" style="height: 168px">
                <asp:GridView ID="GridView1" rules="all" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Pid"
                    DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Visible="False">
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Pid" HeaderText="Pid" ReadOnly="True" SortExpression="Pid" />
                        <asp:BoundField DataField="passengername" HeaderText="Passenger Name" SortExpression="passengername" />
                        <asp:BoundField DataField="flightid" HeaderText="Flight Id" SortExpression="flightid" />
                        <asp:BoundField DataField="Flightname" HeaderText="Flight Name" SortExpression="Flightname" />
                        <asp:BoundField DataField="Fromstation" HeaderText="From Station" SortExpression="Fromstation" />
                        <asp:BoundField DataField="Tostation" HeaderText="To Station" SortExpression="Tostation" />
                        <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                        <asp:BoundField DataField="Dateandtimings" HeaderText="Date and Timings" SortExpression="Dateandtimings" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AirlineConnectionString %>"
                    SelectCommand="SELECT * FROM [Plist] WHERE ([flightid] = @flightid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="flightid" PropertyName="SelectedValue"
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 168px">
                &nbsp;</td>
        </tr>
    </table>
    <span style="font-size: 24pt; color: #0000ff"> <span
        style="color: buttonshadow"><span style="font-size: 16pt">
        </span></span></span>
</asp:Content>
