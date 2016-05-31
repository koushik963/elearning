Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class Student
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Session("UserName") Is "" OrElse Session("UserName") Is Nothing Then
            Response.Redirect("Default.aspx")
        End If
    End Sub
End Class
