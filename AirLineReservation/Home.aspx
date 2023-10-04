<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AirLineReservation.We1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link rel="stylesheet" type="text/css" href="style.css" media="screen" />
	<style type="text/css">a#vlb{display:none}</style>
	<script type="text/javascript" src="jquery.js"></script>
    <link href="Main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100px;
        }
        .style2
        {
            width: 4px;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 75px;
        }
        .style5
        {
            font-family: "Arial Rounded MT Bold";
            font-size: x-small;
            color: #006666;
        }
        .auto-style1 {
            width: 54px;
        }
        .auto-style2 {
            width: 997px;
        }
        .auto-style3 {
            width: 963px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
    <div>
       
        <asp:Image ID="Image1" runat="server" ImageUrl="../logo.png" style="color:Navy;background-color:Black;height:120px;width:1002px;margin-inline-start: 290px;border-width:0px;"/>
       
    </div>
  <%--  <div id="menu" class="auto-style3">
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btnmenu" Text="Home" 
                        PostBackUrl="~/Home.aspx" />
                </td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" CssClass="btnmenu" Text="Admin Panel" 
                        PostBackUrl="~/Admin/Home.aspx" />
                </td>
                <td>

                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" CssClass="btnmenu" Text="Contact Us" 
                        PostBackUrl="~/ContactUs.aspx" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>--%>
     <div id="mainn">
     <div id="left">
     <div id="studentlogin">
         <table class="style3">
             <tr>
                 <td class="logintitle" colspan="2">
                     User Login</td>
             </tr>
             <tr>
                 <td class="lbl">
                     User Name :</td>
                 <td>
                     <asp:TextBox ID="txtstuuname" runat="server" CssClass="txt"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="lbl">
                     Password :
                 </td>
                 <td>
                     <asp:TextBox ID="txtstupass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td></td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Button ID="btnUserlogin" runat="server" CssClass="btn" Text="Login" OnClick="btnUserlogin_Click" />
                 </td>
             </tr>
             <tr>
                 <td></td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="red" 
                         Visible="true" Postbackurl="~/Registration.aspx">Sign Up Here...</asp:LinkButton>
                 </td>
             </tr>
             <tr>
                 <td></td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Label ID="lblstuerror" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td colspan="2" 
                     style="border-top-style: solid; border-top-width: thin; border-top-color: #808080">
                     <table class="style3">
                         <tr>
                             <td class="style4">
                                <%-- <asp:Image ID="Image1" runat="server" Height="65px" 
                                     ImageUrl="~/img/student.png" Width="70px" />--%>
                             </td>
                             <td>
                                 User login with username and password and book tickets..</td>
                         </tr>
                     </table>
                 </td>
             </tr>
         </table>
         </div>
     <div id="stafflogin">
         <table class="style3">
             <tr>
                 <td class="logintitle" colspan="2">
                     Admin Login</td>
             </tr>
             <tr>
                 <td class="lbl">
                     Login Name :</td>
                 <td>
                     <asp:TextBox ID="txtstaffuname" runat="server" CssClass="txt"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="lbl">
                     Password :
                 </td>
                 <td>
                     <asp:TextBox ID="txtstaffpass" runat="server" CssClass="txt" 
                         TextMode="Password"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td></td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Button ID="btnadminlogin" runat="server" CssClass="btn" Text="Login" OnClick="btnadminlogin_Click" />
                 </td>
             </tr>
            <%-- <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#339966" 
                         Visible="False">Forgot Password</asp:LinkButton>
                 </td>
             </tr>--%>
             <tr>
                 <td></td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Label ID="lblstafferror" runat="server"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td colspan="2" 
                     style="border-top-style: solid; border-top-width: thin; border-top-color: #808080">
                     <table class="style3">
                         <tr>
                             <td class="style4">
                                <%-- <asp:Image ID="Image2" runat="server" Height="65px" 
                                     ImageUrl="~/img/teacher.png" Width="70px" />--%>
                             </td>
                             <td>
                                 Admin can add flights and generate reports afte login to system.</td>
                         </tr>
                     </table>
                 </td>
             </tr>
         </table>
         </div>
     </div>
     <div id="right">      <div id="wowslider-container1">
	<div class="ws_images">
<a href="#"><img src="other/Img.jpg" alt="" title="" id="wows0"/></a>
<a href="#"><img src="other/Img.jpg" alt="" title="" id="wows1"/></a>
<a href="#"><img src="other/Img.jpg" alt="" title="" id="wows2"/></a>
</div>
<div class="ws_bullets"><div>
<a href="#wows0" title=""><img src="other/Img.jpg" alt=""/>1</a>
<a href="#wows1" title=""><img src="other/Img.jpg" alt=""/>2</a>
<a href="#wows2" title=""><img src="other/Img.jpg" alt=""/>3</a>
</div></div>
<a style="display:none" href="http://wowslider.com">Script Image Slider by WOWSlider.com v1.7</a>
	</div>
	<script type="text/javascript" src="script.js"></script>
         <table class="style3">
             <tr>
                 <td class="style5">
                     <asp:Image ID="Image4" runat="server" ImageUrl="img/mm.jpg" />
                 </td>
             </tr>
         </table>
         </div>
     </div> <div id="footer">© 2020 Airline Reservation System. All Rights Reserved.</div>
    </form>
</body>
</html>
