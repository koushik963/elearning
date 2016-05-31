<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StudentLogin.aspx.vb" Inherits="StudentLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

<link rel="stylesheet" type="text/css" href="Styles/Site.css" />

    <title></title>



</head>
<body  bgcolor="#9999ff">
    <form id="form1" runat="server">
    
    <center><img src="Images/banner.gif" /></center>

    <div id="main">  
        

    <div id="left" style="height: 400px;">
    
    <table>

    <tr><td colspan="2" align=center><h2>Existing User..? Login</h2></td></tr>

    <tr><td>
    Login ID:</td><td>
        <asp:TextBox ID="TextBox1" runat="server" CssClass=textboxes></asp:TextBox></td></tr>
    <tr><td>Password:</td><td>
        <asp:TextBox ID="TextBox2" runat="server" CssClass=textboxes 
            TextMode="Password"></asp:TextBox><br /></td></tr>
        <tr><td colspan="2" align="center">
        <center><asp:Button ID="Button1" runat="server" Text="Login" CssClass=mybutton 
                onclick="Button1_Click"/></center></td></tr>
                
    <tr>
    <td colspan="2" align=center id="tablehead" style="color: Maroon">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                
     </table>

    </div>
    <div id="right" style="height: 480px;">
    
    <table>

    <tr><td colspan="2" align=center><span id="tablehead" style="color: Maroon">New User..? Register Here</span></td></tr>

    <tr>
    <td>First Name: </td>
    <td><asp:TextBox ID="TextBox3" runat="server" CssClass=textboxes></asp:TextBox></td>       
    </tr>

        <tr>
    <td>Last Name: </td>
    <td><asp:TextBox ID="TextBox4" runat="server" CssClass=textboxes></asp:TextBox></td>       
    </tr>

        <tr>
    <td>E-Mail: </td>
    <td><asp:TextBox ID="TextBox5" runat="server" CssClass=textboxes></asp:TextBox></td>       
    </tr>

        <tr>
    <td>Password: </td>
    <td><asp:TextBox ID="TextBox6" runat="server" CssClass=textboxes 
            TextMode="Password"></asp:TextBox></td>       
    </tr>

        <tr>
    <td>Gender: </td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
    </td>       
    </tr>

    <td>Date of Birth: </td>
    <td>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="25px">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" Height="25px">
            <asp:ListItem>January</asp:ListItem>
            <asp:ListItem>February</asp:ListItem>
            <asp:ListItem>March</asp:ListItem>
            <asp:ListItem>April</asp:ListItem>
            <asp:ListItem>May</asp:ListItem>
            <asp:ListItem>June</asp:ListItem>
            <asp:ListItem>July</asp:ListItem>
            <asp:ListItem>August</asp:ListItem>
            <asp:ListItem>September</asp:ListItem>
            <asp:ListItem>October</asp:ListItem>
            <asp:ListItem>November</asp:ListItem>
            <asp:ListItem>December</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList4" runat="server" Height="25px">

<asp:ListItem>1900</asp:ListItem>
<asp:ListItem>1901</asp:ListItem>
<asp:ListItem>1902</asp:ListItem>
<asp:ListItem>1903</asp:ListItem>
<asp:ListItem>1904</asp:ListItem>
<asp:ListItem>1905</asp:ListItem>
<asp:ListItem>1906</asp:ListItem>
<asp:ListItem>1907</asp:ListItem>
<asp:ListItem>1908</asp:ListItem>
<asp:ListItem>1909</asp:ListItem>
<asp:ListItem>1910</asp:ListItem>
<asp:ListItem>1911</asp:ListItem>
<asp:ListItem>1912</asp:ListItem>
<asp:ListItem>1913</asp:ListItem>
<asp:ListItem>1914</asp:ListItem>
<asp:ListItem>1915</asp:ListItem>
<asp:ListItem>1916</asp:ListItem>
<asp:ListItem>1917</asp:ListItem>
<asp:ListItem>1918</asp:ListItem>
<asp:ListItem>1919</asp:ListItem>
<asp:ListItem>1920</asp:ListItem>
<asp:ListItem>1921</asp:ListItem>
<asp:ListItem>1922</asp:ListItem>
<asp:ListItem>1923</asp:ListItem>
<asp:ListItem>1924</asp:ListItem>
<asp:ListItem>1925</asp:ListItem>
<asp:ListItem>1926</asp:ListItem>
<asp:ListItem>1927</asp:ListItem>
<asp:ListItem>1928</asp:ListItem>
<asp:ListItem>1929</asp:ListItem>
<asp:ListItem>1930</asp:ListItem>
<asp:ListItem>1931</asp:ListItem>
<asp:ListItem>1932</asp:ListItem>
<asp:ListItem>1933</asp:ListItem>
<asp:ListItem>1934</asp:ListItem>
<asp:ListItem>1935</asp:ListItem>
<asp:ListItem>1936</asp:ListItem>
<asp:ListItem>1937</asp:ListItem>
<asp:ListItem>1938</asp:ListItem>
<asp:ListItem>1939</asp:ListItem>
<asp:ListItem>1940</asp:ListItem>
<asp:ListItem>1941</asp:ListItem>
<asp:ListItem>1942</asp:ListItem>
<asp:ListItem>1943</asp:ListItem>
<asp:ListItem>1944</asp:ListItem>
<asp:ListItem>1945</asp:ListItem>
<asp:ListItem>1946</asp:ListItem>
<asp:ListItem>1947</asp:ListItem>
<asp:ListItem>1948</asp:ListItem>
<asp:ListItem>1949</asp:ListItem>
<asp:ListItem>1950</asp:ListItem>
<asp:ListItem>1951</asp:ListItem>
<asp:ListItem>1952</asp:ListItem>
<asp:ListItem>1953</asp:ListItem>
<asp:ListItem>1954</asp:ListItem>
<asp:ListItem>1955</asp:ListItem>
<asp:ListItem>1956</asp:ListItem>
<asp:ListItem>1957</asp:ListItem>
<asp:ListItem>1958</asp:ListItem>
<asp:ListItem>1959</asp:ListItem>
<asp:ListItem>1960</asp:ListItem>
<asp:ListItem>1961</asp:ListItem>
<asp:ListItem>1962</asp:ListItem>
<asp:ListItem>1963</asp:ListItem>
<asp:ListItem>1964</asp:ListItem>
<asp:ListItem>1965</asp:ListItem>
<asp:ListItem>1966</asp:ListItem>
<asp:ListItem>1967</asp:ListItem>
<asp:ListItem>1968</asp:ListItem>
<asp:ListItem>1969</asp:ListItem>
<asp:ListItem>1970</asp:ListItem>
<asp:ListItem>1971</asp:ListItem>
<asp:ListItem>1972</asp:ListItem>
<asp:ListItem>1973</asp:ListItem>
<asp:ListItem>1974</asp:ListItem>
<asp:ListItem>1975</asp:ListItem>
<asp:ListItem>1976</asp:ListItem>
<asp:ListItem>1977</asp:ListItem>
<asp:ListItem>1978</asp:ListItem>
<asp:ListItem>1979</asp:ListItem>
<asp:ListItem>1980</asp:ListItem>
<asp:ListItem>1981</asp:ListItem>
<asp:ListItem>1982</asp:ListItem>
<asp:ListItem>1983</asp:ListItem>
<asp:ListItem>1984</asp:ListItem>
<asp:ListItem>1985</asp:ListItem>
<asp:ListItem>1986</asp:ListItem>
<asp:ListItem>1987</asp:ListItem>
<asp:ListItem>1988</asp:ListItem>
<asp:ListItem>1989</asp:ListItem>
<asp:ListItem>1990</asp:ListItem>
<asp:ListItem>1991</asp:ListItem>
<asp:ListItem>1992</asp:ListItem>
<asp:ListItem>1993</asp:ListItem>
<asp:ListItem>1994</asp:ListItem>
<asp:ListItem>1995</asp:ListItem>
<asp:ListItem>1996</asp:ListItem>
<asp:ListItem>1997</asp:ListItem>
<asp:ListItem>1998</asp:ListItem>
<asp:ListItem>1999</asp:ListItem>
<asp:ListItem>2000</asp:ListItem>
<asp:ListItem>2001</asp:ListItem>
<asp:ListItem>2002</asp:ListItem>
<asp:ListItem>2003</asp:ListItem>
<asp:ListItem>2004</asp:ListItem>
<asp:ListItem>2005</asp:ListItem>
<asp:ListItem>2006</asp:ListItem>
<asp:ListItem>2007</asp:ListItem>
<asp:ListItem>2008</asp:ListItem>
<asp:ListItem>2009</asp:ListItem>
<asp:ListItem>2010</asp:ListItem>
<asp:ListItem>2011</asp:ListItem>
<asp:ListItem>2012</asp:ListItem>
        </asp:DropDownList>
    </td>       
    </tr>

    <tr height=40 >
    <td colspan="2" align=center><asp:Button ID="Button2" runat="server" 
            Text="Register Now" CssClass=mybutton onclick="Button2_Click"/></td>
    
    </tr>
    
    <tr height=40 >
    <td colspan="2" align=center id="tablehead" style="color: Maroon">
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
    
    </tr>
        


    </table>
    
    
    </div>   
        

    </div>
    </form>
</body>
</html>
