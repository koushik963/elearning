<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="StudentDetails.aspx.vb" Inherits="StudentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="main">

&nbsp;<div id="left" style="width: 330px; height: 450px; padding-left: 0px; padding-top: 30px;">

<span id="tablehead" style="color: Maroon"><center>&nbsp;Registered Students</center></span>

<asp:Table ID="Table1" runat="server" BorderStyle="Double" BorderWidth="5px" 
        GridLines="Horizontal">
        
    </asp:Table>
    
    </div>
    
    <div id="right" style="width: 558px; padding-left: 5px; top: 293px; left: 585px; position: absolute;">
    
    
    <table width="500" id="mytable" align=center>
    
    
    
    <tr>
    
    <td rowspan="5" width="60"></td>
    <td><font color="#6600ff">Name</font></td>
    <td><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
    
    </tr>    
    
    <tr>
    
    <td><font color="#6600ff">Email</font></td>
    <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
    
    </tr>
    
    <tr>
    
    <td><font color="#6600ff">Password</font></td>
    <td><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
    
    </tr>
    
    <tr>
    
    <td><font color="#6600ff">Gender</font></td>
    <td><asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
    
    </tr>
    
    <tr>
    
    <td><font color="#6600ff">Date of Birth</font></td>
    <td><asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
    
    </tr>  
           
    
    </table>   
    
    
    </div>
    
    </div>

</asp:Content>

