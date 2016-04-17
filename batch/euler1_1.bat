:: Euler1 in Windows batch
ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
GOTO main

:euler1
    for /l %%i in (1,1,%1) do (
        SET /A mod3=%%i %% 3
        SET /A mod5=%%i %% 5

        IF !mod3! equ 0 (
           SET /A result+=%%i
        ) ELSE ( IF !mod5! equ 0 (
           SET /A result+=%%i
        ))
    )
    GOTO :eof

:main
    SET /A result=0
    CALL :euler1 999
    ECHO !result!

ENDLOCAL