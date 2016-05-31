<%@ Page Title="" Language="VB" MasterPageFile="~/Staff.master" AutoEventWireup="false" CodeFile="DoubtClearance.aspx.vb" Inherits="DoubtClearanceaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<div id="main">

<div id="left" style="padding-left:30px; width: 419px;">

    <table width=400 >
    
       
    <tr>
    <td>
        <h1><asp:Label ID="Label1" runat="server" Text="Topic"></asp:Label></h1>
    </td>
    </tr>
    
    <tr>
    <td>
        <font size="5"><asp:Label ID="Label2" runat="server" Text="Question"></asp:Label></font>
    </td>
    </tr>
    
    
    
    </table>
    
    

</div>

<div id="right" style="padding-left:30px; width: 413px;">

<table width=400>

<tr>
    <td><h1>Reply</h1></td>
    </tr>

<tr><td>
    <asp:TextBox ID="TextBox1" runat="server" Width="391px" Height="205px" 
        TextMode="MultiLine"></asp:TextBox></td></tr>
        
        <tr><td align=center><font size="4"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></font></td></tr>

        <tr><td align=center>
            <asp:Button ID="Button1" runat="server" Text="Send" CssClass="mybutton" 
                onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" 
                runat="server" Text="Cancel" CssClass="mybutton" onclick="Button2_Click"/></td></tr>
</table>


</div>


</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

