
Partial Class ManageCourse
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles ButtonAddCourse.Click
        Response.Redirect("AddCourse.aspx")

    End Sub
End Class
