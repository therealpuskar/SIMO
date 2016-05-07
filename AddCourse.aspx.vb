
Partial Class AddCourse
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        gvChkDupCoCode.DataBind()

        If gvChkDupCoCode.Rows.Count > 0 Then
            warningLabel.Visible = True
            If lblAddCourseConfirm.Visible = True Then
                lblAddCourseConfirm.Visible = False

            End If

        Else
            SqlAddCourse.Insert()
            lblAddCourseConfirm.Visible = True

            If warningLabel.Visible = True Then
                warningLabel.Visible = False
            End If

            Response.Redirect("ManageCourse.aspx")
        End If


        'SqlAddCourse.Insert()
        'Response.Redirect("ManageCourse.aspx")


    End Sub

    Protected Sub ButtonLinkHomePage_Click(sender As Object, e As EventArgs) Handles ButtonLinkHomePage.Click
        Response.Redirect("Default.aspx")

    End Sub
End Class
