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


Partial Public Class DoubtClearanceaspx
    Inherits System.Web.UI.Page
    Private con As SqlConnection
    Private id As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        If Request.Params("id") Is Nothing Then
            Label1.Text = "No doubts posted"
            Label1.ForeColor = System.Drawing.Color.Red
            Label2.Text = "."
        Else


            Dim strcon As String = ConfigurationManager.ConnectionStrings("elearning").ConnectionString
            con = New SqlConnection(strcon)

            Dim cmd As SqlCommand

            id = Convert.ToInt32(Request.Params("id"))

            con.Open()

            cmd = New SqlCommand("Select Topic from Doubts where DoubtID=" & id, con)
            Label1.Text = "Topic: " & cmd.ExecuteScalar().ToString()

            con.Close()

            con.Open()

            cmd = New SqlCommand("Select Cont from Doubts where DoubtID=" & id, con)
            Label2.Text = "Question: " & cmd.ExecuteScalar().ToString()

            con.Close()
        End If

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim strcon As String = ConfigurationManager.ConnectionStrings("elearning").ConnectionString
        con = New SqlConnection(strcon)

        con.Open()

        Dim cmd As New SqlCommand("Update Doubts set Reply='" + TextBox1.Text & "', Replied=1 where DoubtID=" & id, con)
        cmd.ExecuteNonQuery()

        con.Close()

        TextBox1.Text = ""
        Label3.Text = "Reply Sent Successfully"
        Response.Redirect("StaffInbox.aspx")


    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("StaffInbox.aspx")
    End Sub
End Class
