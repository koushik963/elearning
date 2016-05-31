<%@ Page Title="" Language="VB" MasterPageFile="~/Staff.master" AutoEventWireup="false" CodeFile="StaffChangePassword.aspx.vb" Inherits="StaffChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="main">

<div id="left" style="width: 431px; padding-left: 15px; padding-top: 50px; height: 430px;">

<table bgcolor="#FFCCCC" id="mychpwd" width=400>

<td colspan="3" align=center><b><font size="6" color="#B1053E">Change Password</font></b></td>

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

<div id="right" style="width: 416px; padding-left: 30px; padding-top: 100px; height: 380px;">

<center><img src="Images/change.png" /></center>

</div>

</div>

</asp:Content>

