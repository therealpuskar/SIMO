
Partial Class AddCourseEnrolment
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        GridView1.DataBind()

        If GridView1.Rows.Count > 0 Then
            warningLabel.Visible = True

        Else

            SqlAddCE.Insert()
            Response.Redirect("ManageCourseEnrolment.aspx")
        End If

    End Sub

    Protected Sub SqlAddCE_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlAddCE.Selecting

    End Sub
End Class
