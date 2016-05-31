<%@ Page Title="" Language="VB" MasterPageFile="~/Student.master" AutoEventWireup="false" CodeFile="StudentChangePassword.aspx.vb" Inherits="StudentChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="main">

<div id="right" style="width: 431px; padding-left: 15px; padding-top: 50px; height: 430px;">

<div style="padding-top:70px;"></div>

<table bgcolor="#9999ff" id="mytable" width=400>

<td colspan="3" align=center><b><font size="6" color="#6600ff">Change Password</font></b></td>

</tr>

<tr>

<td width="20" rowspan=4></td>
<td>Old Password</td>
<td><asp:TextBox ID="TextBox1" runat="server" Width="200" TextMode="Password"></asp:TextBox></td>

</tr>

<tr>

<td>New Password</td>
<td><asp:TextBox ID="TextBox2" runat="server" Width="200" TextMode="Password"></asp:TextBox></td>

</tr>

<tr>

<td>Confirm New Password</td>
<td><asp:TextBox ID="TextBox3" runat="server" Width="200" TextMode="Password"></asp:TextBox></td>

</tr>

<tr>

<td colspan="3" align=center>
    <asp:Label ID="Label1" runat="server" Text="" Width="400"></asp:Label></td>

</tr>

<tr>

<td colspan="3" align=center>
    <asp:Button ID="Button1" runat="server" Text="Change Password" Width=250 
        CssClass="mybutton" onclick="Button1_Click"/></td>

</tr>

</table>


</div>

<div id="left" style="width: 416px; padding-left: 30px">

<br />
<center><img src="Images/key.png"/></center>

</div>

</div>

</asp:Content>

