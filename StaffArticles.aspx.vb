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

Partial Public Class StaffArticles
    Inherits System.Web.UI.Page
    Private con As SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim strcon As String = ConfigurationManager.ConnectionStrings("elearning").ConnectionString
        con = New SqlConnection(strcon)


        Table1.HorizontalAlign = HorizontalAlign.Center
        Dim tr1 As New TableRow()
        Dim th1 As New TableHeaderCell()
        Dim th2 As New TableHeaderCell()
        Dim th3 As New TableHeaderCell()

        tr1.BackColor = System.Drawing.ColorTranslator.FromHtml("#6600ff")
        tr1.ForeColor = System.Drawing.Color.Pink

        th1.Text = "Title"
        th2.Text = "Uploader"
        th3.Text = "FileDownload"

        tr1.Cells.Add(th1)
        tr1.Cells.Add(th2)
        tr1.Cells.Add(th3)
        Table1.Rows.Add(tr1)

        Dim tr2 As TableRow
        '= new TableRow();
        Dim tc1 As TableCell
        '= new TableCell();
        Dim tc2 As TableCell
        '= new TableCell();
        Dim tc3 As TableCell
        '= new TableCell();
        Dim h1 As HyperLink

        Dim dsa As New SqlDataAdapter("Select Title, Uploader, FileName from Files", con)
        Dim ds As New DataSet()
        dsa.Fill(ds)

        Dim i As Integer
        For i = 0 To ds.Tables(0).Rows.Count - 1
            tr2 = New TableRow()
            tc1 = New TableCell()
            tc2 = New TableCell()
            tc3 = New TableCell()
            h1 = New HyperLink()

            tr2.BackColor = System.Drawing.ColorTranslator.FromHtml("#9999ff")

            tc1.Text = ds.Tables(0).Rows(i)("Title").ToString()
            tc2.Text = ds.Tables(0).Rows(i)("Uploader").ToString()

            h1.Text = ds.Tables(0).Rows(i)("FileName").ToString()
            h1.NavigateUrl = "Books/" & ds.Tables(0).Rows(i)("FileName").ToString()

            tc3.Controls.Add(h1)

            tr2.Cells.Add(tc1)
            tr2.Cells.Add(tc2)
            tr2.Cells.Add(tc3)


            Table1.Rows.Add(tr2)
        Next

    End Sub
End Class
