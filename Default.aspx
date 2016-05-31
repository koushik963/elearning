<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>E-LEARNING SYSTEM</title>

     <link rel="stylesheet" type="text/css" href="Styles/Site.css" />

    <style type="text/css">
    
    .buttonclick
    {
        width: 150px;
        color: Aqua;
        background-color: #000;
        border-style: double;
        font-size: large;        
    }
    
    .buttonclick:hover
    {
        color: #000;
        background-color: Aqua;
    }
    
    #choice
    {
        width: 900px;
        background-color: #66ccff;
        margin: 0px auto;
        height: 550px;
    }
    
    
    </style>

</head>
<body bgcolor="#9999ff">
    
   
   

    <form id="form1" runat="server">

    
     <div id="choice">
     
    
    <center><img src="Images/banner.gif" /></center>
    
    <div id="admin">
    <table align=center><tr><td align=center>
        <asp:Button ID="Button3" runat="server" Text="Admin Login" CssClass="adminbutton" 
            onclick="Button3_Click"/></td></tr></table>
            </div>
    
    
    <!--<div id="adminCon">
       
    <div id="admin">
    <ul>
    <li><a href="AdminLogin.aspx"><font face="Times New Roman">Admin</font></a></li>
    </ul>    
    </div>
    
    </div>-->
    
    
    
    <table align="center">    
    <tr bgcolor="#660033">
        <tr>
   <td>           <asp:Button ID="Button6" runat="server" Text="Help" CssClass=mybutton
            onclick="Button66_Click" /></td>
<td>
          <asp:Button ID="Button7" runat="server" Text="Technical Document" CssClass=mybutton1
            onclick="Button77_Click" /></td>
            </tr>
    <td align=center><font size="+2" color=yellow><b>STUDENT LOGIN</b></font></td>        
    <td align=center><font size="+2" color=yellow><b>STAFF LOGIN </b></font></td></tr>

    <tr><td align=center><img src="Images/student_img.png" width="200"/></td>
      <td align=center><img src="Images/teacher-clipart.gif" width="200" /></td>
    </tr>

    <tr align=center>
    <td width="250">
        <asp:Button ID="Button1" runat="server" Text="Click Here" CssClass=mybutton
            onclick="Button1_Click" /></td>
    <td width="250">
        <asp:Button ID="Button2" runat="server" Text="Click Here" CssClass=mybutton 
            onclick="Button2_Click"/></td>

    </tr>

    </table>

    </div>
    </form>

    
</body>
</html>
