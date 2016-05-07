
Partial Class AddStudent
    Inherits System.Web.UI.Page

    Protected Sub ButtonAddStudent_Click(sender As Object, e As EventArgs) Handles ButtonAddStudent.Click
        SqlAddStudent.Insert()
        Response.Redirect("ManageStudent.aspx")



    End Sub
End Class
