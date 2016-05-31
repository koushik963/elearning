<%@ Page Title="" Language="VB" MasterPageFile="~/Student.master" AutoEventWireup="false" CodeFile="StudentInbox.aspx.vb" Inherits="StudentInbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="main">

<div id="left" style="width: 406px; padding-left: 30px">


<asp:Table ID="Table1" runat="server" BorderStyle="Double" BorderWidth="5px" 
        GridLines="Horizontal">
    </asp:Table>
    
    </div>
    
    <div id="right" style="width: 406px; padding: 20px; height: 440px;">
    
    <table id="mytable" align=center style="width: 400px;">
    
    <tr>
    
    <td align=center bgcolor="#6600ff">
        <b><asp:Label ID="Label3" runat="server" Text="Question" style="font-size: x-large; color: #9999ff;"></asp:Label></b></td>
    
    </tr>
    
    <tr>
    
    <td align=left>
        <b><asp:Label ID="Label1" runat="server" Text="" style="font-size: x-large;"></asp:Label></b></td>
    
    </tr>
    
        <tr>
    
    <td align=center bgcolor="#6600ff">
        <b><asp:Label ID="Label4" runat="server" Text="Answer" style="font-size: x-large; color: #9999ff;"></asp:Label></b></td>
    
    </tr>

    
    <tr>
    
    <td align=left>
        <b><asp:Label ID="Label2" runat="server" Text="" style="font-size: large"></asp:Label></b></td>
    
    </tr>
    
    
    </table>
    
    </div>
    
    </div>

</asp:Content>

