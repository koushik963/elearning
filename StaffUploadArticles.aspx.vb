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

Partial Public Class StaffUploadArticles
    Inherits System.Web.UI.Page

    Private con As SqlConnection
    Private cmd As SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        Dim strcon As String = ConfigurationManager.ConnectionStrings("elearning").ConnectionString
        con = New SqlConnection(strcon)


    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        con.Open()
        Console.Write("entered button clcikc")


        If FileUpload1.HasFile Then
            Try

                FileUpload1.SaveAs((HttpContext.Current.Request.PhysicalApplicationPath & "//Books//") + FileUpload1.FileName)

                Dim fn As [String] = FileUpload1.FileName

                '  Dim cmd As New SqlCommand  '((("Insert into Files values('" + TextBox1.Text & "','") + TextBox2.Text & "','") + TextBox3.Text & "','" & fn & "','" & Convert.ToString(Session("Email")) & "')", con)
                ' Label1.Text = cmd.ToString
                Dim cmd As New SqlCommand("INSERT INTO Files(Title,Tags,Description,FileName,Uploader) values(@title,@tags,@description,@filename,@uploader)", con)
                cmd.Parameters.AddWithValue("@title", TextBox1.Text)
                cmd.Parameters.AddWithValue("@tags", TextBox2.Text)
                cmd.Parameters.AddWithValue("@description", TextBox3.Text)
                cmd.Parameters.AddWithValue("@filename", FileUpload1.FileName)

                cmd.Parameters.AddWithValue("@uploader", Convert.ToString(Session("Email")))

                '    cmd.Connection = con

                '  cmd.CommandText = "INSERT INTO owner_detail(c_id, o_name, investment) values(@cid,'" + TextBox1.Text + "','" + TextBox2.Text + "')"
                '    cmd.CommandText = "INSERT INTO [dbo].[Files]([Title]) values(@bid)"
                '    cmd.Parameters.Add(New SqlParameter("@cid", SqlDbType.VarChar))
                '   cmd.Parameters("@cid").Value = TextBox1.Text

                cmd.ExecuteNonQuery()


                '   Label1.Text = "File Uploaded Successfully"

            Catch ex As Exception
                Label1.Text = "File Uploaded Successfully"

            End Try
        Else
            Label1.Text = "Error while uploading"
        End If
        con.Close()

    End Sub
End Class
