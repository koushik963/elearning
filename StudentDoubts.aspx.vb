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

Partial Public Class StudentDoubts
    Inherits System.Web.UI.Page
    Private con As SqlConnection
    Private cmd As SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim strcon As String = ConfigurationManager.ConnectionStrings("elearning").ConnectionString
        con = New SqlConnection(strcon)

        Table1.Width = 400
        'Table1.BorderWidth=3;
        'Table1.BorderStyle = BorderStyle.Solid;
        Dim th As New TableHeaderRow()
        Dim thc As TableHeaderCell
        'Table1.Rows.Add(th);
        thc = New TableHeaderCell()
        thc.Text = "Questioned By"
        thc.Width = 100
        th.Cells.Add(thc)
        thc = New TableHeaderCell()
        thc.Text = "Topic"
        thc.Width = 250
        th.Cells.Add(thc)
        Table1.Rows.Add(th)
        Table1.BorderColor = System.Drawing.Color.Maroon

        th.BackColor = System.Drawing.ColorTranslator.FromHtml("#6600ff")
        th.ForeColor = System.Drawing.ColorTranslator.FromHtml("#9999ff")

        Dim dsa As New SqlDataAdapter("select DoubtID, StudentId, Topic from Doubts", con)

        'SqlDataAdapter dsa = new SqlDataAdapter("select DoubtID, StudentId, Topic, Cont, Replied from Doubts", con);

        Dim ds As New DataSet()
        dsa.Fill(ds)

        Dim i As Integer

        Dim cmd As SqlCommand

        Dim query As [String]
        Dim name As [String]

        For i = 0 To ds.Tables(0).Rows.Count - 1

            Dim tr As TableRow
            Dim tc As TableCell
            Dim hy As HyperLink

            tr = New TableRow()

            tr.BackColor = System.Drawing.ColorTranslator.FromHtml("#9999ff")

            tc = New TableCell()
            tc.Text = ds.Tables(0).Rows(i)(1).ToString()
            tc.Width = 50
            tr.Cells.Add(tc)


            hy = New HyperLink()
            tc = New TableCell()
            hy.Text = ds.Tables(0).Rows(i)(2).ToString()
            hy.NavigateUrl = "StudentDoubts.aspx?id=" & ds.Tables(0).Rows(i)(0).ToString()
            tc.Controls.Add(hy)
            tc.Width = 300
            tc.HorizontalAlign = HorizontalAlign.Center
            tr.Cells.Add(tc)

            Table1.Rows.Add(tr)
        Next

        Dim sid As [String]
        Dim id As Integer
        sid = Request.Params("id")
        If sid IsNot Nothing Then
            id = Convert.ToInt32(sid)

            con.Open()

            cmd = New SqlCommand("Select Cont from Doubts where DoubtID=" & id, con)
            Label1.Text = cmd.ExecuteScalar().ToString()

            con.Close()

            con.Open()

            cmd = New SqlCommand("Select Reply from Doubts where DoubtID=" & id, con)
            Label2.Text = cmd.ExecuteScalar().ToString()

            con.Close()

            con.Open()

            cmd = New SqlCommand("Select StaffId from Doubts where DoubtID=" & id, con)
            Label6.Text = cmd.ExecuteScalar().ToString()





            con.Close()
        End If



    End Sub
End Class
