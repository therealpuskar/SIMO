
Partial Class Test
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("~/StudentResult.aspx?StudentID=" + txtID.Text)

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("~/StudentResultBySurname.aspx?StudentSurname=" + txtSurname.Text)
    End Sub
End Class
