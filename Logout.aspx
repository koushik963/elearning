<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Logout.aspx.vb" Inherits="Logout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

<link rel="stylesheet" type="text/css" href="Styles/Site.css" />

    <title></title>

    <style type="text/css">
     #logoutLeft
    {
        background-color: #66ccff;
        border: none;
        float: left;
        width: 450px;
        line-height: 50px;      
        height: 280px;
        
        padding-top: 30px;
        text-align: center;
    }
    
     #logoutRight
    {
        background-color: #66ccff;
        border: none;
        float: right;
        width: 450px;
        line-height: 50px;      
        height: 310px;
        
        text-align: center;
    }
    
    
    </style>
</head>
<body bgcolor="#9999ff">

    <center><img src="Images/banner.gif" /></center>

    <form id="form1" runat="server">

    <div id="main">

    <div id=logoutRight>

        <center><h1>You <br />are<br /> Now<br /> Logged Out...<br /> <a href="Default.aspx">Click Here to Login</a></h1></center>


    
    </div>
    <div id=logoutLeft>
    
    <center><img src="Images/logout.gif" width=250 /></center>
        
    </div>

    </div>

    </form>
</body>
</html>
