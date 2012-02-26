Function euler1(x)
    euler1 = 0

    For i = 1 To x - 1
        If i Mod 3 = 0 Or i Mod 5 = 0 Then
            euler1 = euler1 + i
        End If
    Next
End Function

Sub main()
    MsgBox (euler1(1000))
End Sub