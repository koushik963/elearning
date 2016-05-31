Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("StudentLogin.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("StaffLogin.aspx")
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("AdminLogin.aspx")
    End Sub

    Protected Sub Button66_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Response.Redirect("Books/Help.pdf")
    End Sub

    Protected Sub Button77_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Response.Redirect("Books/WP.pdf")
    End Sub
End Class
