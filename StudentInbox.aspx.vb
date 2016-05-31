Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Configuration
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data


Partial Public Class StudentInbox
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
        thc.Text = "Replied By"
        thc.Width = 100
        th.Cells.Add(thc)
        thc = New TableHeaderCell()
        thc.Text = "Topic"
        thc.Width = 250
        th.Cells.Add(thc)
        Table1.Rows.Add(th)
        Table1.BorderColor = System.Drawing.Color.Maroon
        Dim dsa As New SqlDataAdapter("select DoubtID, StaffId, Topic, Cont, Replied, Viewed, Reply from Doubts where StudentId='" & Convert.ToString(Session("Email")) & "' and Replied=1 ORDER BY Viewed", con)

        'SqlDataAdapter dsa = new SqlDataAdapter("select DoubtID, StudentId, Topic, Cont, Replied from Doubts", con);

        Dim ds As New DataSet()
        dsa.Fill(ds)

        Dim i As Integer

        Dim cmd As SqlCommand

        Dim query As [String]
        Dim name As [String]

        For i = 0 To ds.Tables(0).Rows.Count - 1

            con.Open()

            query = "Select FName from StaffReg where Mail='" & ds.Tables(0).Rows(i)(1).ToString() & "'"

            cmd = New SqlCommand(query, con)
            name = cmd.ExecuteScalar().ToString()

            con.Close()

            Dim tr As TableRow
            Dim tc As TableCell
            Dim hy As HyperLink



            tr = New TableRow()

            If ds.Tables(0).Rows(i)(5).ToString() = "1" Then
                tr.BackColor = System.Drawing.Color.LightGray
            End If

            tc = New TableCell()
            tc.Text = name
            tc.Width = 50
            tr.Cells.Add(tc)


            hy = New HyperLink()
            tc = New TableCell()
            hy.Text = ds.Tables(0).Rows(i)(2).ToString()
            hy.NavigateUrl = "StudentInbox.aspx?id=" & ds.Tables(0).Rows(i)(0).ToString()
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

            cmd = New SqlCommand("Update Doubts set Viewed=1 where DoubtID=" & id, con)
            cmd.ExecuteNonQuery()




            con.Close()
        End If



    End Sub
End Class
