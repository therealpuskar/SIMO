
Partial Class AddUnitEnrolment
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        GridView1.DataBind()
        GridView2.DataBind()
        GridView3.Databind()

        If GridView1.Rows.Count > 0 Then
            warningLabel.Visible = True
        ElseIf GridView2.Rows.Count > 0 Then
            warningLabel2.Visible = True
        ElseIf GridView3.Rows.Count >= 3 Then
            warningLabel3.Visible = True

        Else
            SqlAddUE1.Insert()
            'If warningLabel.Visible = True Then
            'warningLabel.Visible = False
            'End If

            Response.Redirect("ManageUnitEnrolment.aspx")
        End If



        GridView1.DataBind()
        GridView2.DataBind()

       








    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub ChkIfPassAlready_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles ChkIfPassAlready.Selecting

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub SqlAddUE1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlAddUE1.Selecting

    End Sub
End Class
