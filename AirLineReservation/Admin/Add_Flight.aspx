<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Add_Flight.aspx.cs" Inherits="AirLineReservation.Admin.Add_Flight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 506px;
        }
        .auto-style6 {
            height: 35px;
            width: 506px;
        }
        .auto-style7 {
            height: 7px;
            width: 506px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="2" style="height: 7px">
                <span style="font-size: 16pt;"> ADD A FLIGHT Details</span></td>
        </tr>
        <tr>
                        <td class="auto-style3">
                            &nbsp;</td>
                    </tr>
        <tr>
            <td  style="text-align:right;color:black;" class="auto-style7">
                <asp:Label ID="Label1" runat="server" Text="Flight id" Width="112px" ></asp:Label>
               
            </td>
            <td colspan="2" aling="center" style="width: 582px; height: 7px">
                <asp:TextBox ID="TextBox1" runat="server" Width="178px"></asp:TextBox></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td  style="text-align:right;color:black" class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Flight name" Width="111px" ></asp:Label></td>
            <td style="width: 582px">
                <asp:TextBox ID="TextBox2" runat="server" Width="178px"></asp:TextBox></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td  style="text-align:right;color:black" class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="From station" Width="112px" ></asp:Label></td>
            <td style="width: 582px">
                <asp:TextBox ID="TextBox3" runat="server" Width="178px"></asp:TextBox></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td  style="text-align:right;color:black" class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="To station" Width="90px" ></asp:Label></td>
            <td style="width: 582px">
                <asp:TextBox ID="TextBox4" runat="server" Width="178px"></asp:TextBox></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td style="text-align:right;color:black" class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="date andtimings" Width="175px" ></asp:Label></td>
            <td style="width: 582px;">
                <asp:TextBox ID="TextBox5" runat="server" Width="178px"></asp:TextBox>
                <asp:Label ID="Label12" runat="server"  ForeColor="black" Text="dd/mm/yy h:m"
                    Width="166px"></asp:Label></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td  style="text-align:right;color:black" class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="First class seats" Width="157px" ></asp:Label></td>
            <td style="width: 582px">
                <asp:TextBox ID="TextBox6" runat="server" Width="178px"></asp:TextBox></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td  style="text-align:right;color:black" class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="Bussiness class seats" Width="196px" ></asp:Label></td>
            <td style="width: 582px; height: 17px">
                <asp:TextBox ID="TextBox7" runat="server" Width="178px"></asp:TextBox></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td  style="text-align:right;color:black" class="auto-style3">
                <asp:Label ID="Label8" runat="server" Text="Economic class seats" Width="180px" ></asp:Label></td>
            <td style="width: 582px">
                <asp:TextBox ID="TextBox8" runat="server" Width="178px"></asp:TextBox></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td  style="text-align:right;color:black" class="auto-style3">
                <asp:Label ID="Label9" runat="server" Text="First class fares" Width="113px" ></asp:Label></td>
            <td style="width: 582px">
                <asp:TextBox ID="TextBox9" runat="server" Width="178px"></asp:TextBox></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td  style="text-align:right;color:black" class="auto-style3">
                <asp:Label ID="Label11" runat="server" Text="Bussiness class fares" Width="180px" ></asp:Label></td>
            <td style="width: 582px; height: 21px">
                <asp:TextBox ID="TextBox10" runat="server" Width="178px"></asp:TextBox></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td style="text-align:right;color:black;" class="auto-style3">
                &nbsp;<asp:Label ID="Label10"  runat="server"  Text="Economic class fares" Width="154px"></asp:Label></td>
            <td style="width: 582px">
                <asp:TextBox ID="TextBox11" runat="server" Width="178px"></asp:TextBox></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td class="auto-style6">
                </td>
            <td style="width: 582px; height: 35px">
                <asp:Button ID="Button1" backcolor="#2D71FF" ForeColor="White" runat="server" Height="26px" Text="Submit"
                    Width="84px" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
                        <td></td>
                    </tr>
        <tr>
            <td class="auto-style6">
            </td>
            <td style="width: 582px; height: 35px">
                <asp:Label ID="Label" runat="server" ForeColor="black" Text="Label" Visible="False"  Width="178px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
