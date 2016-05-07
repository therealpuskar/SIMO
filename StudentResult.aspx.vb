
Partial Class StudentResult
    Inherits System.Web.UI.Page

    Dim creditTotal As Double
    Dim creditPrevious As Double = 0
    Dim catchMaxUnit As Double = 0
    Dim catchMinUnit As Double = 1
    Dim marksTotal As Double = 0
    Dim countRows As Double = 0
    Dim passRows As Double = 0
    Dim bestUnit As String = ""
    Dim worseUnit As String = ""
    Dim creditPrevious1 As Double = 0

    Protected Sub GridView2_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView2.RowDataBound
        
        If e.Row.RowType = DataControlRowType.DataRow Then

            ' add the UnitPrice and QuantityTotal to the running total variables
            creditPrevious = Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, _
                                                            "UnitMarks"))

            creditPrevious1 = Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, _
                                                            "UnitMarks"))
            'Calculate best and worst Units
            If creditPrevious > catchMaxUnit Then
                'catchMinUnit = catchMaxUnit
                catchMaxUnit = creditPrevious
                bestUnit = (DataBinder.Eval(e.Row.DataItem, _
               "UnitCode"))
            End If
            'Calculating Worst Unit was tricky hence, Sorted the Unitmarks by Descending order and got the last value
            'Order by UnitMarks Descending and pick the last row using the query below
            If 1 < 2 Then
                worseUnit = (DataBinder.Eval(e.Row.DataItem, _
               "UnitCode"))
            End If

            'Get total Unit Marks
            marksTotal += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, _
                  "UnitMarks"))
            'decide if passed
            If creditPrevious >= 50 Then
                creditTotal += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, _
                                                                "CreditPoints"))
                'Get the number of units passed
                passRows = passRows + 1

            End If

            'Count the number of rows in gridview
            countRows = countRows + 1

        ElseIf e.Row.RowType = DataControlRowType.Footer Then
            e.Row.Cells(0).Text = "Total "
            ' for the Footer, display the running totals
            e.Row.Cells(1).Text = creditTotal.ToString()
            e.Row.Cells(3).Text = marksTotal.ToString()
            e.Row.Font.Bold = True

            ' Add these later:
            'CourseType,
            'UnitsPassed()
            'Credit Points Remaining
            'Now calculating remaining crdit points. We need more data for this, including subject type

            'Semesters remaining

            'This displays the value of the Total Credits, Avarage mark, units attempted

            Response.Write("The results for Unit Code: ")
            Response.Write(lbl1.Text)
            Response.Write(<br/>)
            Response.Write(<br/>)
            Response.Write(" Credit Points achieved: ")
            Response.Write(e.Row.Cells(1).Text)
            Response.Write(<br/>)

            Response.Write("Units Attempted :")
            Response.Write(countRows)
            Response.Write(<br/>)

            'Calculating Units passed
            Response.Write("The total number of units passed: ")
            Response.Write(passRows)
            Response.Write(<br/>)

            'Calculating Course Avarage

            Response.Write(" Course Avarage ")
            Response.Write(Math.Round((e.Row.Cells(3).Text / countRows)))
            Response.Write(<br/>)

            'Best Unit
            Response.Write(" Best unit is: ")
            Response.Write(bestUnit)
            Response.Write(<br/>)
            'Worst Unit
            Response.Write(" Worst unit is: ")
            Response.Write(worseUnit)
            Response.Write(<br/>)

        End If
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Requesting Query from Page Test.Aspx and assigning it to the  label1
        lbl1.Text = Request.QueryString("StudentID")


    End Sub

    Protected Sub SqlDataSource3_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource3.Selecting

    End Sub
End Class
