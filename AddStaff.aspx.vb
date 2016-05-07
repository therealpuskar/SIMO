
Partial Class AddStaff
    Inherits System.Web.UI.Page

    Protected Sub ButtonAddStaff_Click(sender As Object, e As EventArgs) Handles ButtonAddStaff.Click
        SqlAddStaff.Insert()
        Response.Redirect("ManageStaff.aspx")
    End Sub

   
End Class
