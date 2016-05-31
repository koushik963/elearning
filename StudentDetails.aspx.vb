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

Partial Public Class StudentDetails
    Inherits System.Web.UI.Page

    Private con As SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim strcon As String = ConfigurationManager.ConnectionStrings("elearning").ConnectionString
        con = New SqlConnection(strcon)


        Table1.BackColor = System.Drawing.ColorTranslator.FromHtml("#9999ff")
        Table1.Width = 300
        Table1.HorizontalAlign = HorizontalAlign.Center


        Dim thr As New TableHeaderRow()


        Dim thc1 As New TableHeaderCell()
        Dim thc2 As New TableHeaderCell()

        thc1.Text = "Name"
        thc2.Text = "Email"
        thr.Cells.Add(thc1)
        thr.Cells.Add(thc2)

        thr.BackColor = System.Drawing.ColorTranslator.FromHtml("#6600ff")
        thr.ForeColor = System.Drawing.ColorTranslator.FromHtml("#9999ff")

        Table1.Rows.Add(thr)


        Dim tr As TableRow
        Dim tc1 As TableCell
        Dim tc2 As TableCell
        Dim hy As HyperLink

        Dim dsa As New SqlDataAdapter("Select FName, Mail from StudentReg", con)
        Dim ds As New DataSet()
        dsa.Fill(ds)

        Dim i As Integer

        For i = 0 To ds.Tables(0).Rows.Count - 1
            tr = New TableRow()
            tc1 = New TableCell()
            tc2 = New TableCell()
            hy = New HyperLink()

            tc1.Text = ds.Tables(0).Rows(i)(0).ToString()

            hy.Text = ds.Tables(0).Rows(i)(1).ToString()
            hy.NavigateUrl = "StudentDetails.aspx?mail=" & ds.Tables(0).Rows(i)(1).ToString()

            tc2.Controls.Add(hy)

            tr.Cells.Add(tc1)
            tr.Cells.Add(tc2)

            Table1.Rows.Add(tr)
        Next

        If Request.Params("mail") IsNot Nothing Then
            dsa = New SqlDataAdapter("select FName, LName, Mail, Password, Gender, DOB from StudentReg where Mail='" & Request.Params("mail").ToString() & "'", con)
            ds = New DataSet()
            dsa.Fill(ds)

            Label1.Text = ds.Tables(0).Rows(0)(0).ToString() & " " & ds.Tables(0).Rows(0)(1).ToString()
            Label2.Text = ds.Tables(0).Rows(0)(2).ToString()
            Label3.Text = ds.Tables(0).Rows(0)(3).ToString()
            Label4.Text = ds.Tables(0).Rows(0)(4).ToString()
            Label5.Text = ds.Tables(0).Rows(0)(5).ToString()
        End If

    End Sub
End Class
