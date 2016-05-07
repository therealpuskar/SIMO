
Partial Class Add_Unit
    Inherits System.Web.UI.Page

    Protected Sub ButtonAddUnit_Click(sender As Object, e As EventArgs) Handles ButtonAddUnit.Click

        gvCheckUnitid.DataBind()

        If gvCheckUnitid.Rows.Count > 0 Then
            warningLabel.Visible = True
            If lblAddUnitConfirm.Visible = True Then
                lblAddUnitConfirm.Visible = False

            End If

        Else
            SqlAddUnit.Insert()
            lblAddUnitConfirm.Visible = True

            If warningLabel.Visible = True Then
                warningLabel.Visible = False
            End If

            Response.Redirect("ManageUnit.aspx")
        End If

    End Sub
End Class
