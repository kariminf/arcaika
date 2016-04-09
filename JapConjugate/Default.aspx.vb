
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub d_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles d.Click
        Dim conj As New verbs
        l01.Text = conj.Conjugate(v.Text, g.SelectedValue, conj._Present, False, True)

        l02.Text = conj.conjugate(v.Text, g.SelectedValue, conj._TeForm, False, True)
        l03.Text = conj.conjugate(v.Text, g.SelectedValue, conj._TeForm, False, False)

        l04.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Present, True, True)
        l05.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Present, True, False)
        l06.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Present, False, True)
        l07.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Present, False, False)

        l08.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Past, True, True)
        l09.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Past, True, False)
        l10.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Past, False, True)
        l11.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Past, False, False)

        l12.Text = conj.Conjugate(v.Text, g.SelectedValue, conj._Provision, False, True)
        l13.Text = conj.Conjugate(v.Text, g.SelectedValue, conj._Provision, False, False)
        l22.Text = conj.Conjugate(v.Text, g.SelectedValue, conj._Provision, True, True)
        l23.Text = conj.Conjugate(v.Text, g.SelectedValue, conj._Provision, True, False)

        
        l14.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Imperative, True, True)
        l15.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Imperative, True, False)
        l18.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Imperative, False, True)
        l19.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Imperative, False, False)

        l16.Text = conj.conjugate(v.Text, g.SelectedValue, conj._Lets, True, False)
        l17.Text = conj.Conjugate(v.Text, g.SelectedValue, conj._Lets, False, False)
        l20.Text = conj.Conjugate(v.Text, g.SelectedValue, conj._Lets, True, True)
        l21.Text = conj.Conjugate(v.Text, g.SelectedValue, conj._Lets, False, True)

    End Sub
End Class
