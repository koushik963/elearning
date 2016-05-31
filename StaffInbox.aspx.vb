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

Partial Public Class StaffInbox
    Inherits System.Web.UI.Page
    Private con As SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        Dim strcon As String = ConfigurationManager.ConnectionStrings("elearning").ConnectionString
        con = New SqlConnection(strcon)

        Table1.Width = 600
        'Table1.BorderWidth=3;
        'Table1.BorderStyle = BorderStyle.Solid;
        Dim th As New TableHeaderRow()
        Dim thc As New TableHeaderCell()
        thc.Text = "Student Id"
        thc.Width = 150
        th.Cells.Add(thc)
        Table1.Rows.Add(th)
        thc = New TableHeaderCell()
        thc.Text = "Name"
        thc.Width = 50
        th.Cells.Add(thc)
        thc = New TableHeaderCell()
        thc.Text = "Topic"
        thc.Width = 400
        th.Cells.Add(thc)
        Table1.Rows.Add(th)
        Table1.BorderColor = System.Drawing.Color.Maroon
        Dim dsa As New SqlDataAdapter("select DoubtID, StudentId, Topic, Cont, Replied from Doubts where StaffId='" & Convert.ToString(Session("Email")) & "' and Replied is Null", con)

        'SqlDataAdapter dsa = new SqlDataAdapter("select DoubtID, StudentId, Topic, Cont, Replied from Doubts", con);

        Dim ds As New DataSet()
        dsa.Fill(ds)

        Dim i As Integer

        Dim cmd As SqlCommand

        Dim query As [String]
        Dim name As [String]

        For i = ds.Tables(0).Rows.Count - 1 To 0 Step -1

            con.Open()

            query = "Select FName from StudentReg where Mail='" & ds.Tables(0).Rows(i)(1).ToString() & "'"

            cmd = New SqlCommand(query, con)
            name = cmd.ExecuteScalar().ToString()

            con.Close()

            Dim tr As TableRow
            Dim tc As TableCell
            Dim hy As HyperLink

            tr = New TableRow()

            tc = New TableCell()
            tc.Text = ds.Tables(0).Rows(i)(1).ToString()
            tc.Width = 180
            tr.Cells.Add(tc)


            tc = New TableCell()
            tc.Text = name
            tc.Width = 100
            tr.Cells.Add(tc)


            hy = New HyperLink()
            tc = New TableCell()
            hy.Text = ds.Tables(0).Rows(i)(2).ToString()
            hy.NavigateUrl = "DoubtClearance.aspx?id=" & ds.Tables(0).Rows(i)(0).ToString()
            tc.Controls.Add(hy)
            tc.Width = 400
            tc.HorizontalAlign = HorizontalAlign.Center
            tr.Cells.Add(tc)

            Table1.Rows.Add(tr)
        Next






    End Sub
End Class
