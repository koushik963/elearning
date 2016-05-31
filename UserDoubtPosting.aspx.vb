Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration


Partial Public Class UserDoubtPosting
    Inherits System.Web.UI.Page

    Private con As SqlConnection


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        Dim strcon As String = ConfigurationManager.ConnectionStrings("elearning").ConnectionString
        con = New SqlConnection(strcon)

        con.Open()

        Dim dsa As New SqlDataAdapter("select Specialization from StaffReg", con)

        Dim ds As New DataSet()
        dsa.Fill(ds)

        Dim i As Integer


        For i = 0 To ds.Tables(0).Rows.Count - 1
            DropDownList1.Items.Add(ds.Tables(0).Rows(i)(0).ToString())
        Next

        con.Close()

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)

        Dim staffid As [String]
        'String did;
        Dim id As Integer

        con.Open()


        Dim cmd As New SqlCommand("select max(DoubtID) from Doubts", con)
        If cmd.ExecuteScalar() Is Nothing Then
            id = 0
        Else
            id = Convert.ToInt32(cmd.ExecuteScalar())
            id = id + 1
        End If

        cmd = New SqlCommand("select Mail from StaffReg where Specialization='" + DropDownList1.SelectedItem.Text & "'", con)
        staffid = cmd.ExecuteScalar().ToString()

        cmd = New SqlCommand(((("insert into Doubts(DoubtID,Topic,Cont,Category,StudentId,StaffId) values (" & id & ",'") + TextBox1.Text & "','") + TextBox2.Text & "','") + DropDownList1.Text & "','" & Convert.ToString(Session("Email")) & "','" & staffid & "')", con)
        cmd.ExecuteNonQuery()


        con.Close()

        Label1.Text = "Doubt Posted"
        Label1.ForeColor = System.Drawing.Color.Maroon

    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs)
        TextBox1.Text = ""
        TextBox2.Text = ""
        Label1.Text = ""
    End Sub


End Class
