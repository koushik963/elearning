<%@ Page Title="" Language="VB" MasterPageFile="~/Student.master" AutoEventWireup="false" CodeFile="StudentViewArticles.aspx.vb" Inherits="StudentViewArticles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="main">

<div id="left" style="width:800px; height: 700px;">

    <table>
    
    <Tr>
    
    <td align=center><img src="Images/search.png" width=150/></td>
    
    </Tr>
    
    <tr>    
    <td><asp:TextBox ID="TextBox1" runat="server" Width="700" Height="40" Font-Size=X-Large></asp:TextBox></td>
    </tr>
    
    <tr height="60">    
    <td align="center"><asp:Button ID="Button1" runat="server" Text="Search" 
            CssClass="mybutton" Height="40" onclick="Button1_Click" /></td>
    </tr>
    
    
    <tr height="60">    
    <td align="center">
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
        </td>
    </tr>
    
    
    </table>
</div>

</div>

</asp:Content>

