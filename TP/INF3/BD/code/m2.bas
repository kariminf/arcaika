Attribute VB_Name = "m2"
 Global db As Database
 Global rs As Recordset
 Global ok As Boolean
 Global numero As Integer
Sub ins_etudiant(ByVal num As Integer, ByVal nom As String, ByVal pre As String, ByVal age As Integer, ByVal adr As String)

Dim query As String
query = "insert into ETUDIANT "
query = query + "(num_e , nom_e , pre_e , age_e , adr_e)"
query = query + " values (" & num & ",'" & nom & "','" & pre & "'," & age & ",'" & adr & "')"
db.Execute query
End Sub
Sub sup_etudiant(ByVal num As Integer)

Dim query As String
'suppression de l'etudiant
query = "delete from etudiant "
query = query + "where num_e = " & num
db.Execute query
'suppression de ses notes
query = "delete from examen "
query = query + "where num_e = " & num
db.Execute query

End Sub
Sub mod_etudiant(ByVal num As Integer, ByVal nom As String, ByVal pre As String, ByVal age As Integer, ByVal adr As String)

Dim query As String
query = "update ETUDIANT "
query = query + " set nom_e= '" & nom & "',pre_e= '" & pre & "',age_e=" & age & ",adr_e= '" & adr & "' "
query = query + " where num_e = " & num
db.Execute query

End Sub
Sub aff_etudiant()

Set rs = db.OpenRecordset("select * from etudiant order by NOM_E,PRE_E", dbOpenSnapshot)

End Sub
Sub aff_etudiant2()
Dim query As String

query = "select num_e,nom_e,pre_e from etudiant "
query = query & " where num_e in "
query = query & " ( select distinct num_e from examen )"
query = query & "  order by NOM_E,PRE_E"
Set rs = db.OpenRecordset(query, dbOpenSnapshot)

End Sub
Sub num_etudiant()

Set rs = db.OpenRecordset("select NUM_E from etudiant order by NUM_E asc", dbOpenSnapshot)

End Sub
Sub rech_etudiat(ByVal num As Integer)
Set rs = db.OpenRecordset("select * from etudiant where NUM_E= " & num, dbOpenSnapshot)
End Sub
Sub etud_a_note(num As Integer)
Dim query As String
query = "select nom_m , coe_m , tp , ctrl1 , ctrl2 , (tp+ctrl1+ctrl2)/3 as moy"
query = query & " from examen e , module m "
query = query & " where NUM_E= " & num & "  and  e.cod_m=m.cod_m"
query = query & " order by nom_m "
Set rs = db.OpenRecordset(query, dbOpenSnapshot)
End Sub
Sub rech_note(ByVal num As Integer, ByVal code As Integer)
Set rs = db.OpenRecordset("select * from examen where NUM_E = " & num & " AND COD_M = " & code, dbOpenSnapshot)
End Sub

Sub aff_module()

Set rs = db.OpenRecordset("select * from module", dbOpenSnapshot)

End Sub
Sub ins_examen(ByVal num As Integer, ByVal code As Integer, ByVal ntp As Double, ByVal n1 As Double, ByVal n2 As Double)

Dim query As String
query = "insert into EXAMEN "
query = query + " (num_e , cod_m , tp , ctrl1 , ctrl2 )"
query = query + " values (" & num & "," & code & "," & Str(ntp) & "," & Str(n1) & "," & Str(n2) & ")"
db.Execute query

End Sub
Sub mod_examen(ByVal num As Integer, ByVal code As Integer, ByVal ntp As Double, ByVal n1 As Double, ByVal n2 As Double)

Dim query As String
query = "update EXAMEN set "
query = query + "tp= " & Str(ntp) & " , ctrl1=" & Str(n1) & " , ctrl2=" & Str(n2)
query = query + " where num_e = " & num & " and cod_m= " & code
db.Execute query

End Sub



