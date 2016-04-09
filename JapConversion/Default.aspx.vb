Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub button_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles button.Click
        Dim l As script = New script
        Dim k As String
        k = t1.Text

        If l.isHiragana(k) Then
            MsgBox("ﬂ·Â« »«·ÂÌ—«€«‰«", MsgBoxStyle.OkOnly, "«·ÂÌ—«€«‰«")
        Else
            MsgBox("·Ì”  ﬂ·Â« »«·ÂÌ—«€«‰«", MsgBoxStyle.OkOnly, "«·ÂÌ—«€«‰«")
        End If
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim l As script = New script
        Dim k As String
        k = t2.Text
        If l.isKatakana(k) Then
            MsgBox("ﬂ·Â« »«·ﬂ« «ﬂ«‰«", MsgBoxStyle.OkOnly, "«·ﬂ« «ﬂ«‰«")
        Else
            MsgBox("·Ì”  ﬂ·Â« »«·ﬂ« «ﬂ«‰«", MsgBoxStyle.OkOnly, "«·ﬂ« «ﬂ«‰«")
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim l As script = New script
        Dim k As String
        k = tfrom.Text
        tto.Text = l.transkana(k, what.Checked)
    End Sub

    Protected Sub what_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles what.CheckedChanged
        If what.Checked Then
            what.Text = "hiragana to katakana"
        Else
            what.Text = "katakana to hiragana"
        End If
    End Sub

    Protected Sub b_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles b.Click
        Dim l As script = New script
        Dim res As Integer
        res = l.giveScriptType(tex.Text)
        Dim s As String

        s = "«·ﬂ·„… „ﬂÊ‰… „‰ :    "

        'arabic
        If res Mod (l._Arabic) = 0 Then
            s = s + "«·⁄—»Ì…  "
        End If

        'romaji
        If res Mod (l._Romaji) = 0 Then
            s = s + "«··« Ì‰Ì…   "
        End If

        'katakana
        If res Mod (l._Katakana) = 0 Then
            s = s + "«·ﬂ« «ﬂ«‰«   "
        End If

        'hiragana
        If res Mod (l._Hiragana) = 0 Then
            s = s + "«·ÂÌ—«€«‰«   "
        End If

        'kanji
        If res Mod (l._Kanji) = 0 Then
            s = s + "«·ﬂ«‰ÃÌ   "
        End If

        'arabic
        If res Mod (l._OTHERS) = 0 Then
            s = s + "Õ—Ê› √Œ—Ï   "
        End If
        MsgBox(s, MsgBoxStyle.OkOnly, "‰Ê⁄ «·Õ—Ê›")
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim rth As New RomajiToHiragana
        fto.Text = rth.convert(ffrom.Text)
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Dim l As script = New script
        Dim k As String
        k = t3.Text
        If l.isArabic(k) Then
            MsgBox("ﬂ·Â« »«·⁄—»Ì…", MsgBoxStyle.OkOnly, "«·⁄—»Ì…")
        Else
            MsgBox("·Ì”  ﬂ·Â« »«·⁄—»Ì…", MsgBoxStyle.OkOnly, "«·⁄—»Ì…")
        End If
    End Sub

    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        Dim l As script = New script
        Dim k As String
        k = t4.Text
        If l.isRomaji(k) Then
            MsgBox("ﬂ·Â« »«·—Ê„«ÃÌ", MsgBoxStyle.OkOnly, "«·—Ê„«ÃÌ")
        Else
            MsgBox("·Ì”  ﬂ·Â« »«·—Ê„«ÃÌ", MsgBoxStyle.OkOnly, "«·—Ê„«ÃÌ")
        End If
    End Sub

    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        Dim l As script = New script
        Dim k As String
        k = t5.Text
        If l.isKanji(k) Then
            MsgBox("ﬂ·Â« »«·ﬂ«‰ÃÌ", MsgBoxStyle.OkOnly, "«·ﬂ«‰ÃÌ")
        Else
            MsgBox("·Ì”  ﬂ·Â« »«·ﬂ«‰ÃÌ", MsgBoxStyle.OkOnly, "«·ﬂ«‰ÃÌ")
        End If
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim l As script = New script
        Dim k As String
        k = t1.Text
        If l.hasHiragana(k) Then
            MsgBox("ÌÊÃœ Õ—› ⁄·Ï «·√ﬁ·", MsgBoxStyle.OkOnly, "ÊÃÊœ «·ÂÌ—«€«‰«")
        Else
            MsgBox("·« ÌÊÃœ √Ì Õ—›", MsgBoxStyle.OkOnly, "ÊÃÊœ «·ÂÌ—«€«‰«")
        End If
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Dim l As script = New script
        Dim k As String
        k = t2.Text
        If l.hasKatakana(k) Then
            MsgBox("ÌÊÃœ Õ—› ⁄·Ï «·√ﬁ·", MsgBoxStyle.OkOnly, "ÊÃÊœ «·ﬂ« «ﬂ«‰«")
        Else
            MsgBox("·« ÌÊÃœ √Ì Õ—›", MsgBoxStyle.OkOnly, "ÊÃÊœ «·ﬂ« «ﬂ«‰«")
        End If
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Dim l As script = New script
        Dim k As String
        k = t3.Text
        If l.hasArabic(k) Then
            MsgBox("ÌÊÃœ Õ—› ⁄·Ï «·√ﬁ·", MsgBoxStyle.OkOnly, "ÊÃÊœ «·⁄—»Ì…")
        Else
            MsgBox("·« ÌÊÃœ √Ì Õ—›", MsgBoxStyle.OkOnly, "ÊÃÊœ «·⁄—»Ì…")
        End If
    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Dim l As script = New script
        Dim k As String
        k = t4.Text
        If l.hasRomaji(k) Then
            MsgBox("ÌÊÃœ Õ—› ⁄·Ï «·√ﬁ·", MsgBoxStyle.OkOnly, "ÊÃÊœ «·—Ê„«ÃÌ")
        Else
            MsgBox("·« ÌÊÃœ √Ì Õ—›", MsgBoxStyle.OkOnly, "ÊÃÊœ «·—Ê„«ÃÌ")
        End If
    End Sub

    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button11.Click
        Dim l As script = New script
        Dim k As String
        k = t5.Text
        If l.hasKanji(k) Then
            MsgBox("ÌÊÃœ Õ—› ⁄·Ï «·√ﬁ·", MsgBoxStyle.OkOnly, "ÊÃÊœ «·ﬂ«‰ÃÌ")
        Else
            MsgBox("·« ÌÊÃœ √Ì Õ—›", MsgBoxStyle.OkOnly, "ÊÃÊœ «·ﬂ«‰ÃÌ")
        End If
    End Sub
End Class

