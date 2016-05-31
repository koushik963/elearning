<%@ Page Title="" Language="VB" MasterPageFile="~/Staff.master" AutoEventWireup="false" CodeFile="StaffUploadArticles.aspx.vb" Inherits="StaffUploadArticles" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="main">

<div id="left" style="width: 416px; padding-left: 30px">

<center><img src="Images/upload.png" /></center>

</div>

        
<div id="right" style="width: 416px; padding-left: 30px">

<table bgcolor="#FFCCCC" id="mytable" width=400>

<tr>

<td colspan="3" align=center><b><font size="6" color="#B1053E">Upload Files</font></b></td>

</tr>

<tr>

<td width="20" rowspan=4></td>
<td>Title</td>
<td><asp:TextBox ID="TextBox1" runat="server" Width="200"></asp:TextBox></td>

</tr>

<tr>

<td>Tags</td>
<td><asp:TextBox ID="TextBox2" runat="server" Width="200"></asp:TextBox></td>

</tr>

<tr>

<td>Description</td>
<td><asp:TextBox ID="TextBox3" runat="server" Height="121px" TextMode="MultiLine" 
        Width="199px"></asp:TextBox></td>

</tr>

<tr>

<td>Upload</td>
<td><asp:FileUpload ID="FileUpload1" runat="server" /></td>

</tr>

<tr>

<td colspan="3" align=center>
    <asp:Label ID="Label1" runat="server" Text="" Width="400"></asp:Label></td>

</tr>

<tr>

<td colspan="3" align=center>
    <asp:Button ID="Button1" runat="server" Text="Upload Files" CssClass="mybutton" 
        onclick="Button1_Click"/></td>

</tr>

</table>


</div>
</div>
</asp:Content>

