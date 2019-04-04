'Eddie Switek
'CST 217 Winter
'Chapter 9 Guided Program
'   The following web application will request reservation information
' for Moonbeam Glamping. This web site will compute
' the cost of the number of nights and tent(s) selected.


Option Strict On

Public Class About
    Inherits Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        ' The btnSubmit click event will calcultae the cost of the tent
        ' based on the type of tent selected and the number of nights reserved.

        ' Delcare and intialize variables.
        Dim decGrizzlyCost As Decimal = 99D
        Dim decPolarCost As Decimal = 89D
        Dim decKodiakCost As Decimal = 79D
        Dim strName As String
        Dim strEmail As String
        Dim decTentCost As Decimal = 0D
        Dim intNumberOfNights As Integer
        Dim strMessage As String

        ' Trim additional spcaes that are entered by the user
        strName = txtName.Text.Trim
        strEmail = txtEmail.Text.Trim

        'Clear the lblReservation label
        lblReservation.Text = ""

        ' Check that a tent selection has been made.
        If Not (chkGrizzly.Checked Or chkPolar.Checked Or chkKodiak.Checked) Then
            lblTentError.Visible = True
            ' Ensure a valid date is selected.
            If cldArrival.SelectedDate < cldArrival.TodaysDate Then
                lblCalendarError.Visible = True
            Else
                lblCalendarError.Visible = False
            End If
        Else
            lblTentError.Visible = False
            If cldArrival.SelectedDate >= cldArrival.TodaysDate Then
                lblCalendarError.Visible = False
                ' Calculate the cost of the tent(s) selected by the user.
                If chkGrizzly.Checked Then
                    decTentCost += decGrizzlyCost
                End If
                If chkPolar.Checked Then
                    decTentCost += decPolarCost
                End If
                If chkKodiak.Checked Then
                    decTentCost += decKodiakCost
                End If
                intNumberOfNights = Convert.ToInt32(ddlNights.SelectedItem.Text)
                decTentCost = intNumberOfNights * decTentCost
                strMessage = "A reservation has been made for: " & "<br>" _
                    & strName & "<br>" & "Email: " & strEmail & "<br>"
                strMessage &= "The Tent(s) cost is: " _
                    & decTentCost.ToString("C") & "<br>"
                strMessage &= "Arrival Date: " _
                    & cldArrival.SelectedDate.ToShortDateString() _
                    & "<br>" & " for " & intNumberOfNights & " night(s)"
                lblReservation.Text = strMessage
            Else
                lblCalendarError.Visible = True
            End If
        End If
    End Sub
End Class