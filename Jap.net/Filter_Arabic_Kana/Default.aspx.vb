Partial Class _Default
    Inherits System.Web.UI.Page
    
    Protected Sub button_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles button.Click
        Dim a, b As Boolean
        Dim l As filter = New filter(txtSearch)
        a = False
        b = False
        l.initialize()
        l.analyze()
        b = l.isSearchKana_value
        a = l.isArabicSearch_value
        If a Then
            MsgBox("arabic", MsgBoxStyle.OkOnly, "arabic")
        End If
        If b Then
            MsgBox("kana", MsgBoxStyle.OkOnly, "kana")
        End If
        l.clean_text()

    End Sub
End Class

