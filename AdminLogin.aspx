<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminLogin.aspx.vb" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="stylesheet" type="text/css" href="Styles/Site.css" />
    <title>Untitled Page</title>
</head>
<body bgcolor="#9999ff">
    <form id="form1" runat="server">
    
    <center><img src="Images/banner.gif" /></center>

    <div id="main">  
        

    <div id="center">
    
    <br />
    
    <table align=center bgcolor="#9999ff" id="mytable">

    <tr bgcolor="#6600ff" id="tablehead"><td colspan="2" align=center width=300>ADMIN LOGIN</td></tr>

    <tr><td align=center>
    Login ID:</td><td align=center>
        <asp:TextBox ID="TextBox1" runat="server" CssClass=textboxes></asp:TextBox></td></tr>
    <tr><td align=center>Password:</td><td align=center>
        <asp:TextBox ID="TextBox2" runat="server" CssClass=textboxes 
            TextMode="Password"></asp:TextBox><br /></td></tr>
            <tr><td colspan="2" align=center>
                <asp:Label ID="Label1" runat="server" Text="" Width="300"></asp:Label></td></tr>
        <tr><td colspan="2" align="center">
        <center><asp:Button ID="Button1" runat="server" Text="Login" CssClass=mybutton 
                onclick="Button1_Click"/></center></td></tr>
     </table>

    </div>
    
</div>
</form>

</body>
</html>
