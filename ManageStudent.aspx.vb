
Partial Class ManageStudent
    Inherits System.Web.UI.Page

    Protected Sub ButtonAddStudent_Click(sender As Object, e As EventArgs) Handles ButtonAddStudent.Click
        Response.Redirect("AddStudent.aspx")
    End Sub
End Class
