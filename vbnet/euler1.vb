' Euler1 in VB.NET
Imports System

Public Module modmain

    Function Euler1 (size As Integer) As Integer
        For i As Integer = 1 to size
            If (i mod 3 = 0 or i mod 5 = 0) Then
                Euler1 = Euler1 + i
            End If
        Next
    End Function

    Sub Main()
        Console.WriteLine (Euler1(999))
    End Sub

End Module