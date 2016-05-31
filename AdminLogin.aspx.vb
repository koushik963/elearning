Imports System.Collections
Imports System.Configuration
Imports System.Data
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Data.Sql
Imports System.Data.SqlClient

Partial Public Class AdminLogin
    Inherits System.Web.UI.Page

    Private con As SqlConnection
    Private strcon As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        strcon = ConfigurationManager.ConnectionStrings("elearning").ConnectionString
        con = New SqlConnection(strcon)

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim dsa As New SqlDataAdapter(("select UserName, Name from Admin where UserName='" + TextBox1.Text & "' and Password='") + TextBox2.Text & "'", con)
        Dim ds As New DataSet()
        dsa.Fill(ds)

        If ds.Tables(0).Rows.Count > 0 Then
            Session("UserName") = ds.Tables(0).Rows(0)(1).ToString()
            Session("Email") = ds.Tables(0).Rows(0)(0).ToString()
            Response.Redirect("StudentDetails.aspx")
        Else
            Label1.Text = "Incorrect Login"
            Label1.ForeColor = System.Drawing.Color.Red
            Label1.Font.Size = 20
        End If
    End Sub
End Class
