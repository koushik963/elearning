Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Configuration
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient

Partial Public Class StudentLogin
    Inherits System.Web.UI.Page

    Private username As String, email As String
    Private con As SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim strcon As String = ConfigurationManager.ConnectionStrings("elearning").ConnectionString
        con = New SqlConnection(strcon)
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        'con.Open();
        'SqlCommand cmd = new SqlCommand("insert into StudentReg(FName) values ('Jegan')", con);
        'cmd.ExecuteNonQuery();
        'con.Close();

        con.Open()
        Dim cmd As New SqlCommand(((((((("insert into StudentReg values ('" + TextBox3.Text & "','") + TextBox4.Text & "','") + TextBox5.Text & "','") + TextBox6.Text & "','") + DropDownList1.Text & "','") + DropDownList2.Text & "-") + DropDownList3.Text & "-") + DropDownList4.Text & "')", con)
        cmd.ExecuteNonQuery()
        con.Close()

        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        DropDownList1.SelectedIndex = 0
        DropDownList2.SelectedIndex = 0
        DropDownList3.SelectedIndex = 0
        DropDownList4.SelectedIndex = 0

        Label2.Text = "Registered Successfully"
        Label2.Font.Size = 16
        Label2.ForeColor = System.Drawing.Color.Green
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
        con.Open()

        Dim dsa As New SqlDataAdapter("select FName, Mail, Password from StudentReg", con)
        Dim ds As New DataSet()
        dsa.Fill(ds)

        Dim i As Integer = 0, flag As Integer = 0

        Dim x As String, y As String, z As String


        For i = 0 To ds.Tables(0).Rows.Count - 1
            x = ds.Tables(0).Rows(i)("FName").ToString()
            y = ds.Tables(0).Rows(i)("Mail").ToString()
            z = ds.Tables(0).Rows(i)("Password").ToString()

            If y = TextBox1.Text AndAlso z = TextBox2.Text Then
                flag = 1
                username = x
                email = y
            End If
        Next

        If flag = 0 Then
            Label1.Text = "Incorrect Login"
            Label1.Font.Size = 16
            Label1.ForeColor = System.Drawing.Color.Red
        Else
            Session("UserName") = username
            Session("Email") = email
            Response.Redirect("StudentInbox.aspx")
        End If

        con.Close()
    End Sub
End Class
