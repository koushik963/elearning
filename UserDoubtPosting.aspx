<%@ Page Title="" Language="VB" MasterPageFile="~/Student.master" AutoEventWireup="false" CodeFile="UserDoubtPosting.aspx.vb" Inherits="UserDoubtPosting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="main">

<div id="left" style="padding-top: 0px; height: 480px;">

<table>

<tr><td colspan="2"><h2>Ask Your Doubts..</h2></td></tr>

<tr>
<td>Topic: </td>
<td><asp:TextBox ID="TextBox1" runat="server" CssClass=textboxes Width="230px" ></asp:TextBox></td>
</tr>

<tr>
<td>Your Doubt: </td>
<td><asp:TextBox ID="TextBox2" runat="server" CssClass=textboxes Height="161px" 
        TextMode="MultiLine" Width="230px"></asp:TextBox></td>
</tr>

<tr>
<td>Category: </td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="230px">
    </asp:DropDownList>
</td>
</tr>

<tr>
<td colspan="2" align=center><asp:Button ID="Button1" runat="server" Text="Send" 
        CssClass=mybutton onclick="Button1_Click"/>
<asp:Button ID="Button2" runat="server" Text="New Doubt" CssClass=mybutton 
        onclick="Button2_Click"/></td>
</tr>
   <tr>
   <td colspan="2" align=center>
       <asp:Label ID="Label1" runat="server" Text="" style="font-size: x-large"></asp:Label>
   </td>
   </tr> 

</table>



</div>
<div id="right">

<center><img src="Images/doubt.gif" width=400/></center>
    

</div>


</div>

</asp:Content>

