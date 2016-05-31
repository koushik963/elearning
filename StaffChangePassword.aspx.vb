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

Partial Public Class StaffChangePassword
    Inherits System.Web.UI.Page
    Private con As SqlConnection


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        Dim strcon As String = ConfigurationManager.ConnectionStrings("elearning").ConnectionString
        con = New SqlConnection(strcon)

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
        con.Open()
        Dim cmd As New SqlCommand("Select Password from StaffReg where Mail='" & Convert.ToString(Session("Email")) & "'", con)
        Dim pass As String = cmd.ExecuteScalar().ToString()
        con.Close()

        con.Open()

        If TextBox1.Text = pass Then
            If TextBox2.Text = TextBox3.Text Then
                cmd = New SqlCommand("Update StaffReg set Password='" + TextBox2.Text & "' where Mail='" & Convert.ToString(Session("Email")) & "'", con)
                cmd.ExecuteNonQuery()
                Label1.Text = "Password Changed Successfully"
            Else
                Label1.Text = "New Password and Confirm New Password MisMatch"
            End If
        Else
            Label1.Text = "Invalid Old Password"
        End If
        con.Close()
    End Sub
End Class
