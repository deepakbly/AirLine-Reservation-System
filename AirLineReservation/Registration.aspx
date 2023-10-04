<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AirLineReservation.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 754px;
            border: solid 1px #339966;
            height: 358px;
                margin-top: 44px;
        }
        .auto-style2 {
            width: 52px;
            height: 32px;
        }
        .auto-style4 {
            width: 100px;
            height: 27px;
        }
        .auto-style5 {
            width: 194px;
            height: 28px;
        }
        .auto-style6 {
            width: 100px;
            height: 28px;
        }
        .auto-style9 {
            height: 21px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style11 {
            height: 24px;
            width: 194px;
        }
        .auto-style12 {
            width: 194px;
            height: 32px;
        }
        .auto-style13 {
            height: 27px;
            width: 194px;
        }
        .auto-style14 {
            height: 3px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
    <div>
       
        <asp:Image ID="Image1" runat="server" ImageUrl="../logo.png" style="color:Navy;background-color:Black;height:120px;width:1002px;margin-inline-start: 290px;border-width:0px;"/>
       
    </div>
     <div id="mainn" style="height:450px">

     <table class="auto-style1" align="center">
        <tr>
            <td class="tblhead" colspan="2" style="height: 24px; text-align: center;">
                <span> REGISTRATION FORM</span></td>
        </tr>
         <tr align="center">
            <td  colspan="2" class="auto-style9" >
                </td>
        </tr>
        <tr>
            <td class="auto-style11" style="text-align:right">
                <asp:Label ID="Label1" runat="server" Text="Name" Width="85px" ForeColor="black"></asp:Label></td>
            <td style="width: 100px; height: 24px;">
                <asp:TextBox ID="TextBox1" runat="server" Width="240px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style12" style="text-align:right">
                <asp:Label ID="Label2" runat="server" Text="Address" ForeColor="black"></asp:Label></td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server"  TextMode="MultiLine" Width="237px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style5" style="text-align:right">
                <asp:Label ID="Label3" runat="server" Text="Email id " ForeColor="black"></asp:Label></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" Width="240px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style13" style="text-align:right">
                <asp:Label ID="Label4" runat="server" Text="username" ForeColor="black"></asp:Label></td>
            <td style="width: 100px; height: 27px;">
                <asp:TextBox ID="TextBox4" runat="server" Width="240px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style13" style="text-align:right">
                <asp:Label ID="Label5" runat="server" Text="password" Width="64px" ForeColor="black"></asp:Label></td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="240px"></asp:TextBox></td>
        </tr>
        <tr align="center">
            
            <td  colspan="2" align="center" class="auto-style9">
                <asp:Button ID="Button1" runat="server"  Text="submit" Height="26px" BackColor="#339966" ForeColor="White" OnClick="Button1_Click" Width="84px" /></td>
        </tr>
        <tr align="center">
            <td  colspan="2" class="auto-style10" >
                <asp:Label ID="Label" runat="server" Text="Label" Visible="False" Width="29px" ForeColor="black"></asp:Label></td>
        </tr>
        <tr align="center">
            <td  colspan="2" class="auto-style14" >
                </td>
        </tr>
        <tr align="center">
            <td  colspan="2" >
                &nbsp;</td>
        </tr>
    </table>
    
     </div> <div id="footer">© 2020 Airline Reservation System. All Rights Reserved.</div>
    </form>
</body>
</html>
